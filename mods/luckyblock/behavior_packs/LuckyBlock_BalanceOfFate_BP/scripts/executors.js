/**
 * executors.js — 10 个 actionType 的执行器（文件 1 executeCatalogEvent 的 10 个分支）
 *
 * API 已按 P0 探针修正：
 *   - 附魔一律 EnchantmentTypes.get("minecraft:<id>")
 *   - applyKnockback 只用 2 参 (VectorXZ, number)
 *   - 命令一律 dimension.runCommand（runCommandAsync 已移除）
 */
import { world, system, ItemStack, EnchantmentTypes } from '@minecraft/server';
import { ActionFormData } from '@minecraft/server-ui';
import { spendEntities, spendTimer, trackTemporary } from './safety.js';
import { buildStructure, setBlockSafe } from './structures.js';
import { makeBoss, tierFromLuck } from './boss.js';

// --- 1.21.60 兼容垫片 -------------------------------------------------------
// 声明 @minecraft/server 1.17.0 后引擎按 v1 语义运行：
//   · Entity.isValid 是方法，不是 v2 的属性
//   · Entity.applyKnockback 是 4 参 (directionX, directionZ, horizontal, vertical)
const __HAS_V2_SYSTEM = (() => { try { return typeof system.beforeEvents !== 'undefined'; } catch (_) { return false; } })();
function isValidEntity(e) {
  if (!e) return false;
  try { const v = e.isValid; return typeof v === 'function' ? v.call(e) === true : v === true; } catch (_) { return false; }
}
function knockback(entity, dirX, dirZ, horizontal, vertical) {
  if (!entity) return;
  try {
    if (__HAS_V2_SYSTEM) entity.applyKnockback({ x: dirX * horizontal, z: dirZ * horizontal }, vertical);
    else entity.applyKnockback(dirX, dirZ, horizontal, vertical);
  } catch (_) { /* 该实体不支持击退 */ }
}

/** 审计追踪：每次执行后由 audit.js 读取并清空 */
export const TRACE = {
  spawned: 0,
  items: 0,
  blocks: 0,
  effects: 0,
  commands: 0,
  scheduled: 0,
  notes: [],
  lastError: null,
};

export function resetTrace() {
  TRACE.spawned = 0;
  TRACE.items = 0;
  TRACE.blocks = 0;
  TRACE.effects = 0;
  TRACE.commands = 0;
  TRACE.scheduled = 0;
  TRACE.notes = [];
  TRACE.lastError = null;
}

function note(s) {
  if (TRACE.notes.length < 12) TRACE.notes.push(s);
}

function safe(fn, tag) {
  try {
    return fn();
  } catch (e) {
    TRACE.lastError = `${tag}: ${e.message}`;
    note(`${tag} FAIL ${e.message}`);
    return undefined;
  }
}

function enchantOf(id) {
  try {
    return EnchantmentTypes.get(id.startsWith('minecraft:') ? id : 'minecraft:' + id);
  } catch (_) {
    return undefined;
  }
}

function giveItem(dim, pos, itemId, count, nameTag, lore, enchants, durability) {
  let stack;
  try {
    stack = new ItemStack(itemId, Math.max(1, Math.min(64, count)));
  } catch (e) {
    note(`item ${itemId} 无法构造: ${e.message}`);
    return null;
  }
  if (nameTag) safe(() => { stack.nameTag = nameTag; }, 'nameTag');
  if (lore && lore.length) safe(() => stack.setLore(lore), 'setLore');
  if (enchants && enchants.length) {
    safe(() => {
      const en = stack.getComponent('minecraft:enchantable');
      if (!en) return;
      for (const { id, level } of enchants) {
        const t = enchantOf(id);
        if (t) en.addEnchantment({ type: t, level: Math.max(1, Math.min(t.maxLevel ?? level, level)) });
      }
    }, 'enchant');
  }
  if (durability) safe(() => { stack.setLore([...(stack.getLore() || []), `§7耐久: ${durability}`]); }, 'durability-lore');
  let ent = null;
  safe(() => { ent = dim.spawnItem(stack, pos); }, 'spawnItem');
  if (ent) {
    TRACE.items += stack.amount;
    trackTemporary(ent, 6000);
  }
  return ent;
}

// ---------------------------------------------------------------------------
// 1. DROP_CUSTOM_GEAR
// ---------------------------------------------------------------------------
function runGear(dim, loc, p, player, budget) {
  const n = Math.min(1, spendEntities(budget, 1));
  if (n === 0) return;
  giveItem(dim, loc, p.itemId, p.count || 1, p.nameTag, p.lore, p.enchant, p.durability);
  safe(() => dim.playSound('random.anvil_use', loc, { pitch: 1.2, volume: 0.9 }), 'sound');
  safe(() => dim.spawnParticle('lucky:charge_up_particle', loc), 'particle');
}

// ---------------------------------------------------------------------------
// 2. BUILD_STRUCTURE
// ---------------------------------------------------------------------------
function runStructure(dim, blockLoc, p, player, budget, griefSafe) {
  if (p.isTrap && griefSafe) {
    // 建筑保护模式下，陷阱结构降级为纯物资补偿
    giveItem(dim, { x: blockLoc.x + 0.5, y: blockLoc.y + 1, z: blockLoc.z + 0.5 }, 'minecraft:gold_ingot', 8, '§6建筑保护补偿', ['§7陷阱已被建筑保护模式拦截'], null, null);
    note('trap→supply (grief_safe)');
    return;
  }
  const before = budget.blocks;
  const r = buildStructure(dim, { x: blockLoc.x, y: blockLoc.y, z: blockLoc.z }, player, p, budget);
  TRACE.blocks += budget.blocks - before;
  // 宝箱按结构档位注入 5 阶战利品表之一（/loot insert 直接写入容器）
  if (r && r.chest) {
    const lt = p.tier <= 2 ? 0 : p.tier <= 3 ? 1 : p.tier <= 4 ? 2 : p.tier <= 5 ? 3 : 4;
    safe(() => {
      dim.runCommand(`loot insert ${r.chest.x} ${r.chest.y} ${r.chest.z} loot "lucky:lucky_bonus_tier${lt}"`);
      TRACE.commands++;
      note(`loot:lucky_bonus_tier${lt}`);
    }, 'lootInsert');
  }
  safe(() => dim.playSound('block.bell.hit', blockLoc, { pitch: 1.1 }), 'sound');
  return r;
}

// ---------------------------------------------------------------------------
// 3. SPAWN_AFFIX_MOBS
// ---------------------------------------------------------------------------
function runMobs(dim, loc, p, budget, peaceful, luck) {
  if (p.hostile && peaceful) {
    // 和平模式拒刷敌对生物（BDS 实测 EntitySpawnError）→ 降级为物资补偿
    giveItem(dim, loc, 'minecraft:gold_ingot', Math.max(2, p.count), '§6和平模式补偿', ['§7和平模式禁止生成敌对生物'], null, null);
    note('hostile→supply (peaceful)');
    return;
  }
  const n = spendEntities(budget, p.count);
  const spawnedThisEvent = [];
  for (let i = 0; i < n; i++) {
    const at = { x: loc.x + (Math.random() - 0.5) * 3, y: loc.y, z: loc.z + (Math.random() - 0.5) * 3 };
    let mob;
    safe(() => { mob = dim.spawnEntity(p.entityId, at); }, 'spawnEntity');
    if (!mob) continue;
    spawnedThisEvent.push(mob);
    TRACE.spawned++;
    trackTemporary(mob, 4800);
    safe(() => { mob.nameTag = p.nameTag; }, 'mobName');
    for (const [eff, ticks, amp] of p.effects ?? []) safe(() => mob.addEffect(eff, ticks, { amplifier: amp }), 'mobEffect');
    if (p.equipment && Object.keys(p.equipment).length) {
      safe(() => {
        const eq = mob.getComponent('minecraft:equippable');
        if (!eq) return;
        if (p.equipment.head) eq.setEquipment('Head', new ItemStack(p.equipment.head, 1));
        if (p.equipment.chest) eq.setEquipment('Chest', new ItemStack(p.equipment.chest, 1));
        if (p.equipment.legs) eq.setEquipment('Legs', new ItemStack(p.equipment.legs, 1));
        if (p.equipment.feet) eq.setEquipment('Feet', new ItemStack(p.equipment.feet, 1));
        if (p.equipment.mainhand) eq.setEquipment('Mainhand', new ItemStack(p.equipment.mainhand, 1));
      }, 'mobEquip');
    }
  }
  // 文件 2 §六.1「厄运猎人」：幸运值 ≤ -60 时，敌对生物升格为厄运魔王
  if (p.hostile && typeof luck === 'number' && luck <= -60) {
    const tier = tierFromLuck(luck);
    let n = 0;
    // 只升格**本次事件生成**的生物，绝不波及附近的无关生物
    for (const m of spawnedThisEvent) {
      try { if (!isValidEntity(m)) continue; } catch (_) { continue; }
      makeBoss(m, tier);
      n++;
    }
    if (n > 0) note(`boss upgraded x${n} tier${tier}`);
  }

  safe(() => dim.playSound(p.hostile ? 'mob.wither.spawn' : 'random.levelup', loc, { volume: 0.8 }), 'sound');
}

// ---------------------------------------------------------------------------
// 4. APPLY_ALCHEMY
// ---------------------------------------------------------------------------
function runAlchemy(dim, loc, p, player) {
  if (!player) return;
  for (const [eff, ticks, amp] of p.effects) {
    safe(() => player.addEffect(eff, ticks, { amplifier: amp, showParticles: true }), 'addEffect');
    TRACE.effects++;
  }
  safe(() => dim.playSound(p.isBuff ? 'random.orb' : 'mob.witch.drink', loc), 'sound');
}

// ---------------------------------------------------------------------------
// 5. TRIGGER_PHENOMENON
// ---------------------------------------------------------------------------
function runPhenomenon(dim, loc, player, p, griefSafe, budget) {
  const power = Math.max(1, Math.min(10, p.power));
  const cmd = (c) => safe(() => { dim.runCommand(c); TRACE.commands++; }, 'cmd:' + c);
  switch (p.phenomenon) {
    case 'CLEAR_DAWN':
      cmd('weather clear');
      cmd('time set sunrise');
      break;
    case 'THUNDER_STORM':
      cmd('weather thunder');
      break;
    case 'SMITE_HOSTILES': {
      const mobs = safe(() => dim.getEntities({ location: loc, maxDistance: 12 + power * 2, excludeTypes: ['minecraft:player', 'minecraft:item'] })) ?? [];
      const n = spendEntities(budget, Math.min(mobs.length, power + 2));
      for (const m of mobs.slice(0, n)) safe(() => dim.spawnEntity('minecraft:lightning_bolt', m.location), 'bolt');
      break;
    }
    case 'CHAIN_LIGHTNING': {
      const times = Math.min(8, power);
      for (let i = 0; i < times; i++) {
        if (!spendTimer(budget)) break;
        TRACE.scheduled++;
        system.runTimeout(() => {
          try {
            const target = player && isValidEntity(player) ? player.location : loc;
            dim.spawnEntity('minecraft:lightning_bolt', target);
          } catch (_) {}
        }, i * 12);
      }
      break;
    }
    case 'GRAVITY_LAUNCH':
      if (player) {
        knockback(player, 0, 0, 0, 1.2 + power * 0.15);
        safe(() => player.addEffect('slow_falling', 160, { amplifier: 0 }), 'slowFalling');
      }
      break;
    case 'SHOCKWAVE_REPEL': {
      const nearby = safe(() => dim.getEntities({ location: loc, maxDistance: 10 + power })) ?? [];
      for (const ent of nearby) {
        if (player && ent.id === player.id) continue;
        const dx = ent.location.x - loc.x;
        const dz = ent.location.z - loc.z;
        const len = Math.max(0.1, Math.hypot(dx, dz));
        knockback(ent, dx / len, dz / len, 1, 1.5 + power * 0.2);
      }
      safe(() => dim.playSound('mob.breeze.whirl', loc), 'sound');
      break;
    }
    case 'MAGNET_VACUUM': {
      if (!player) break;
      const items = safe(() => dim.getEntities({ location: loc, maxDistance: 24, type: 'minecraft:item' })) ?? [];
      for (const it of items) safe(() => it.teleport(player.location), 'magnet');
      safe(() => dim.playSound('random.pop', player.location, { pitch: 1.5 }), 'sound');
      break;
    }
    case 'METEOR_SHOWER': {
      if (griefSafe) {
        note('meteor→supply (grief_safe)');
        giveItem(dim, loc, 'minecraft:fire_charge', Math.min(16, power * 2), '§6流星雨（保护模式）', ['§7建筑保护：已转为物资'], null, null);
        break;
      }
      const n = spendEntities(budget, power);
      for (let i = 0; i < n; i++) {
        safe(() => dim.spawnEntity('minecraft:small_fireball', {
          x: loc.x + (Math.random() - 0.5) * 8,
          y: loc.y + 8 + i,
          z: loc.z + (Math.random() - 0.5) * 8,
        }), 'fireball');
      }
      break;
    }
    default:
      note('unknown phenomenon ' + p.phenomenon);
  }
}

// ---------------------------------------------------------------------------
// 6. TRIGGER_2026_FEATURE
// ---------------------------------------------------------------------------
function run2026(dim, blockLoc, loc, player, p, budget, griefSafe) {
  const scale = Math.max(1, Math.min(10, p.scale));
  const setB = (pos, id) => {
    const before = budget.blocks;
    const ok = setBlockSafe(dim, pos, id, budget);
    if (ok) TRACE.blocks += budget.blocks - before;
    return ok;
  };
  const give = (id, count, tag) => giveItem(dim, loc, id, count, tag, ['§7事件物资'], null, null);

  switch (p.featureCode) {
    case 'SHELF_MUSHROOM_PAD': {
      for (let dx = -1; dx <= 1; dx++)
        for (let dz = -1; dz <= 1; dz++) {
          if (!setB({ x: blockLoc.x + dx, y: blockLoc.y, z: blockLoc.z + dz }, p.primary)) {
            setB({ x: blockLoc.x + dx, y: blockLoc.y, z: blockLoc.z + dz }, p.fallback);
          }
        }
      if (player) knockback(player, 0, 0, 0, 1.0 + scale * 0.08);
      break;
    }
    case 'CUSHION_TEA_PARTY': {
      setB(blockLoc, 'minecraft:campfire');
      setB({ x: blockLoc.x + 1, y: blockLoc.y, z: blockLoc.z }, 'minecraft:yellow_cushion');
      setB({ x: blockLoc.x - 1, y: blockLoc.y, z: blockLoc.z }, 'minecraft:red_cushion');
      setB({ x: blockLoc.x, y: blockLoc.y, z: blockLoc.z + 1 }, 'minecraft:straw_bed');
      give('minecraft:cake', Math.min(8, scale), '§6篝火茶话会');
      break;
    }
    case 'POPLAR_GROVE_DROP': {
      give('minecraft:poplar_log', Math.min(64, scale * 4), '§6白杨原木');
      give('minecraft:poplar_sapling', Math.min(64, scale * 2), '§6白杨树苗');
      give('minecraft:yellow_poplar_leaves', Math.min(64, scale * 2), '§6白杨秋叶');
      break;
    }
    case 'WOOL_STAIRS_RAINBOW': {
      const colors = ['white', 'orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black'];
      const n = Math.min(10, scale + 2);
      for (let i = 0; i < n; i++) {
        const c = colors[i % colors.length];
        setB({ x: blockLoc.x + i, y: blockLoc.y + i, z: blockLoc.z }, `minecraft:${c}_wool_stairs`) ||
          setB({ x: blockLoc.x + i, y: blockLoc.y + i, z: blockLoc.z }, p.fallback);
      }
      break;
    }
    case 'CONCRETE_STAIRS_FORTRESS': {
      const colors = ['cyan', 'lime', 'magenta', 'orange', 'purple'];
      for (let dx = -1; dx <= 1; dx++) {
        setB({ x: blockLoc.x + dx, y: blockLoc.y, z: blockLoc.z + 1 }, `minecraft:${colors[(dx + 1) % colors.length]}_concrete_stairs`) ||
          setB({ x: blockLoc.x + dx, y: blockLoc.y, z: blockLoc.z + 1 }, p.fallback);
      }
      break;
    }
    case 'SULFUR_ERUPTION': {
      give(p.primary, Math.min(64, scale * 2), '§6强效硫磺');
      setB(blockLoc, 'minecraft:magma');
      if (player) safe(() => player.applyKnockback({ x: 0, z: 0 }, 0.8 + scale * 0.06), 'geyser');
      break;
    }
    case 'RED_SHRUB_GARDEN': {
      for (let dx = -1; dx <= 1; dx++)
        for (let dz = -1; dz <= 1; dz++) {
          if (!setB({ x: blockLoc.x + dx, y: blockLoc.y, z: blockLoc.z + dz }, p.primary)) {
            setB({ x: blockLoc.x + dx, y: blockLoc.y, z: blockLoc.z + dz }, p.fallback);
          }
        }
      give('minecraft:red_shrub', Math.min(64, scale), '§6红灌木');
      break;
    }
    case 'CAMP_SUPPLY_CHEST': {
      setB(blockLoc, p.primary) || setB(blockLoc, p.fallback);
      give('minecraft:bread', Math.min(32, scale * 2), '§6探险补给');
      give('minecraft:torch', Math.min(32, scale * 2), '§6探险补给');
      break;
    }
    case 'BRITTLE_ICE_RINK': {
      const r = Math.min(3, Math.floor(scale / 3) + 1);
      for (let dx = -r; dx <= r; dx++)
        for (let dz = -r; dz <= r; dz++) {
          if (!setB({ x: blockLoc.x + dx, y: blockLoc.y, z: blockLoc.z + dz }, p.primary)) {
            setB({ x: blockLoc.x + dx, y: blockLoc.y, z: blockLoc.z + dz }, p.fallback);
          }
        }
      break;
    }
    default:
      note('unknown feature ' + p.featureCode);
  }
  safe(() => dim.playSound('resonate.amethyst_block', loc), 'sound');
}

// ---------------------------------------------------------------------------
// 7. ORE_AND_TERRAIN
// ---------------------------------------------------------------------------
function runOre(dim, blockLoc, loc, p, budget, griefSafe) {
  const amt = Math.max(1, Math.min(32, p.amount));
  const isTnt = p.blockId === 'minecraft:tnt';
  if (p.mode === 'FOUNTAIN' || (isTnt && griefSafe)) {
    const dropId = isTnt && griefSafe ? 'minecraft:gunpowder' : p.sourceBlock || p.blockId;
    giveItem(dim, loc, dropId, amt, '§6矿脉喷泉', ['§7事件物资'], null, null);
    if (isTnt && !griefSafe) {
      const n = spendEntities(budget, Math.min(4, amt));
      for (let i = 0; i < n; i++)
        safe(() => dim.spawnEntity('minecraft:tnt', { x: loc.x + (Math.random() - 0.5) * 2, y: loc.y + 1.5, z: loc.z + (Math.random() - 0.5) * 2 }), 'tnt');
    }
    return;
  }
  const setB = (pos, id) => {
    const before = budget.blocks;
    const ok = setBlockSafe(dim, pos, id, budget);
    if (ok) TRACE.blocks += budget.blocks - before;
    return ok;
  };
  if (p.mode === 'TRANSMUTE') {
    const r = Math.min(3, Math.floor(amt / 2));
    for (let dx = -r; dx <= r; dx++)
      for (let dz = -r; dz <= r; dz++) setB({ x: blockLoc.x + dx, y: blockLoc.y - 1, z: blockLoc.z + dz }, p.blockId);
  } else if (p.mode === 'PILLAR') {
    for (let h = 0; h < Math.min(6, amt); h++) setB({ x: blockLoc.x, y: blockLoc.y + h, z: blockLoc.z }, p.blockId);
  } else if (p.mode === 'PAGODA') {
    for (let level = 0; level < 3; level++) {
      const r = 2 - level;
      for (let dx = -r; dx <= r; dx++)
        for (let dz = -r; dz <= r; dz++)
          if (Math.abs(dx) === r || Math.abs(dz) === r) setB({ x: blockLoc.x + dx, y: blockLoc.y + level * 2, z: blockLoc.z + dz }, p.blockId);
    }
  } else {
    setB(blockLoc, p.blockId);
  }
}

// ---------------------------------------------------------------------------
// 8. RUN_PYROTECHNICS
// ---------------------------------------------------------------------------
function runPyro(dim, loc, player, p, budget, griefSafe) {
  const waves = Math.max(1, Math.min(5, p.waves));
  const count = Math.max(1, Math.min(12, p.countPerWave));
  const isTnt = p.pyroType.startsWith('TNT');

  if (isTnt && griefSafe) {
    giveItem(dim, loc, 'minecraft:gunpowder', Math.min(32, waves * count), '§6爆破（保护模式）', ['§7建筑保护：已转为火药'], null, null);
    note('tnt→gunpowder (grief_safe)');
    return;
  }

  for (let w = 0; w < waves; w++) {
    if (!spendTimer(budget)) break;
    TRACE.scheduled++;
    system.runTimeout(() => {
      try {
        for (let i = 0; i < count; i++) {
          const pos = {
            x: loc.x + (Math.random() - 0.5) * 4,
            y: loc.y + 1.0 + w * 0.5,
            z: loc.z + (Math.random() - 0.5) * 4,
          };
          switch (p.pyroType) {
            case 'XP_SHOWER':
              if (spendEntities(budget, 1)) { dim.spawnEntity('minecraft:xp_bottle', pos); TRACE.spawned++; }
              break;
            case 'FIREWORK_GALA':
              if (spendEntities(budget, 1)) { dim.spawnEntity('minecraft:fireworks_rocket', pos); TRACE.spawned++; }
              break;
            case 'GOLD_COIN_RAIN':
              giveItem(dim, pos, i % 2 === 0 ? 'minecraft:gold_ingot' : 'minecraft:emerald', 1, '§6天女散花', null, null, null);
              break;
            case 'TNT_TIMED':
            case 'TNT_RING':
            case 'TNT_CARPET':
              if (spendEntities(budget, 1)) { dim.spawnEntity('minecraft:tnt', pos); TRACE.spawned++; }
              break;
            case 'ARROW_BARRAGE':
              if (spendEntities(budget, 1)) { dim.spawnEntity('minecraft:arrow', { x: pos.x, y: pos.y + 5, z: pos.z }); TRACE.spawned++; }
              break;
            case 'POTION_STORM':
              giveItem(dim, pos, 'minecraft:splash_potion', 1, '§6炼金风暴', null, null, null);
              break;
            case 'SLIME_IMPACT':
              if (spendEntities(budget, 1)) { dim.spawnEntity('minecraft:slime', pos); TRACE.spawned++; }
              break;
            case 'DRAGON_BREATH_NOVA':
              giveItem(dim, pos, 'minecraft:dragon_breath', 1, '§6龙息新星', null, null, null);
              break;
            default:
              if (spendEntities(budget, 1)) { dim.spawnEntity('minecraft:xp_orb', pos); TRACE.spawned++; }
          }
        }
        dim.playSound('firework.launch', loc, { volume: 0.8 });
      } catch (e) {
        note('pyro wave fail: ' + e.message);
      }
    }, w * 12);
  }
}

// ---------------------------------------------------------------------------
// 9. OPEN_FATE_DILEMMA  （UI 由 main.js 注入的 showDilemma 回调驱动）
// ---------------------------------------------------------------------------
const pendingDilemmas = new Set();

/**
 * 文件 1 openFateDilemmaModal：三选一 UI 抉择。
 *   interactive = true  → 真机路径：弹 ActionFormData，玩家点选；200 tick 未响应则自动结算
 *                         （无头 Bot / 掉线玩家不会响应表单，必须有兜底，否则事件悬挂）
 *   interactive = false → 审计路径：立即确定性结算，保证每条事件可被机器判定
 */
function runDilemma(dim, loc, player, ev, p, budget, interactive) {
  if (!player) return;
  const mult = Math.max(1, Math.min(16, p.stakeMultiplier));
  const rewardName = String(p.rewardItem || '').replace('minecraft:', '');

  if (!interactive) {
    applyDilemmaChoice(dim, loc, player, p, mult, Math.floor(Math.random() * 3));
    return;
  }

  const key = player.id + ':' + system.currentTick;
  let settled = false;
  const settle = (choice, why) => {
    if (settled) return;
    settled = true;
    pendingDilemmas.delete(key);
    if (why) note(why);
    applyDilemmaChoice(dim, loc, player, p, mult, choice);
  };

  note('dilemma ui shown');
  // 超时兜底
  system.runTimeout(() => settle(Math.floor(Math.random() * 3), 'dilemma timeout auto-resolve'), 200);

  try {
    const form = new ActionFormData()
      .title(`§6${p.dilemmaCode}`)
      .body(`§f${ev.description}\n\n§e当前筹码倍率: §b${mult}x\n§7请做出你的命运抉择：`)
      .button(`§a【接受契约】获取 ${rewardName} ×${mult}`)
      .button(`§b【稳健祝福】经验与金苹果 ×${Math.max(1, Math.floor(mult / 2))}`)
      .button('§7【放弃离开】全身而退');

    pendingDilemmas.add(key);
    form.show(player).then((res) => {
      if (res.canceled) settle(2, 'dilemma canceled');
      else settle(res.selection ?? 2);
    }).catch(() => settle(Math.floor(Math.random() * 3), 'dilemma show failed'));
  } catch (e) {
    settle(Math.floor(Math.random() * 3), 'dilemma ui throw: ' + e.message);
  }
}

export function applyDilemmaChoice(dim, loc, player, p, mult, choice) {
  if (choice === 0) {
    if (p.cost === 'half_health') safe(() => player.applyDamage(6), 'pactDamage');
    giveItem(dim, { x: player.location.x, y: player.location.y + 1, z: player.location.z }, p.rewardItem, mult, `§6${p.dilemmaCode}`, ['§7命运抉择 · 契约'], null, null);
    safe(() => dim.playSound('random.levelup', player.location), 'sound');
  } else if (choice === 1) {
    giveItem(dim, { x: player.location.x, y: player.location.y + 1, z: player.location.z }, 'minecraft:golden_apple', Math.max(1, Math.floor(mult / 2)), '§6稳健祝福', null, null, null);
    safe(() => player.addLevels(mult), 'addLevels');
  } else {
    note('dilemma declined');
  }
}

// ---------------------------------------------------------------------------
// 10. TRIGGER_CHAIN_JACKPOT
// ---------------------------------------------------------------------------
export const activeTrails = new Map(); // playerId -> { blockId, expiresAt }

function runChain(dim, loc, player, p, budget) {
  const mag = Math.max(2, Math.min(12, p.magnitude));
  switch (p.chainType) {
    case 'MATRYOSHKA_BLESSED':
    case 'MATRYOSHKA_CURSED':
    case 'MATRYOSHKA_RANDOM': {
      const preset = p.chainType === 'MATRYOSHKA_BLESSED' ? 60 : p.chainType === 'MATRYOSHKA_CURSED' ? -65 : Math.floor((Math.random() - 0.5) * 180);
      const count = Math.min(6, Math.max(1, Math.floor(mag / 2)));
      for (let i = 0; i < count; i++) {
        if (spendEntities(budget, 1) === 0) break;
        const stack = new ItemStack('lucky:lucky_block', 1);
        safe(() => stack.setLore([`§r§6当前幸运值: ${preset >= 0 ? '+' + preset : preset}`, '§r§7套娃分裂幸运方块（放置后自动继承幸运值）']), 'lore');
        let ent = null;
        safe(() => { ent = dim.spawnItem(stack, { x: loc.x + (Math.random() - 0.5) * 2, y: loc.y + 1, z: loc.z + (Math.random() - 0.5) * 2 }); }, 'spawn');
        if (ent) { TRACE.items++; trackTemporary(ent, 6000); }
      }
      safe(() => dim.playSound('chime.amethyst_block', loc, { pitch: 1.5 }), 'sound');
      break;
    }
    case 'GLOBAL_JACKPOT_BROADCAST':
    case 'FATE_REVERSAL_SURPRISE': {
      safe(() => world.sendMessage(`§6§l★ [万象天平头奖广播] §r§e玩家 §b${player?.name ?? '冒险者'} §e开启幸运方块触发了至尊奇迹大奖！`), 'broadcast');
      giveItem(dim, loc, 'minecraft:diamond', mag * 3, '§6头奖钻石', null, null, null);
      giveItem(dim, loc, 'minecraft:emerald', mag * 4, '§6头奖绿宝石', null, null, null);
      giveItem(dim, loc, 'minecraft:totem_of_undying', 1, '§6不死图腾', null, null, null);
      safe(() => dim.playSound('lucky.jackpot_fanfare', loc), 'sound');
      break;
    }
    case 'TRAIL_RAINBOW':
    case 'MIDAS_GOLD_TOUCH':
    case 'FROST_WALKER_TRAIL': {
      if (!player) break;
      activeTrails.set(player.id, { blockId: p.trailBlock, expiresAt: system.currentTick + mag * 40 });
      safe(() => player.sendMessage(`§a[命运步迹] 接下来 ${mag * 2} 秒内，你走过的地面将化作 ${p.trailBlock}！`), 'msg');
      break;
    }
    default:
      note('unknown chain ' + p.chainType);
  }
}

// ---------------------------------------------------------------------------
// 分发
// ---------------------------------------------------------------------------
export function executeEvent(ev, dim, loc, blockLoc, player, griefSafe, budget, peaceful, interactive, luck) {
  const p = ev.params;
  switch (ev.actionType) {
    case 'DROP_CUSTOM_GEAR': runGear(dim, loc, p, player, budget); break;
    case 'BUILD_STRUCTURE': runStructure(dim, blockLoc, p, player, budget, griefSafe); break;
    case 'SPAWN_AFFIX_MOBS': runMobs(dim, loc, p, budget, peaceful, luck); break;
    case 'APPLY_ALCHEMY': runAlchemy(dim, loc, p, player); break;
    case 'TRIGGER_PHENOMENON': runPhenomenon(dim, loc, player, p, griefSafe, budget); break;
    case 'TRIGGER_2026_FEATURE': run2026(dim, blockLoc, loc, player, p, budget, griefSafe); break;
    case 'ORE_AND_TERRAIN': runOre(dim, blockLoc, loc, p, budget, griefSafe); break;
    case 'RUN_PYROTECHNICS': runPyro(dim, loc, player, p, budget, griefSafe); break;
    case 'OPEN_FATE_DILEMMA': runDilemma(dim, loc, player, ev, p, budget, interactive); break;
    case 'TRIGGER_CHAIN_JACKPOT': runChain(dim, loc, player, p, budget); break;
    default:
      note('unknown actionType ' + ev.actionType);
  }
}

/** 步迹 tick 循环（文件 1 activePlayerTrails 逻辑） */
export function startTrailLoop() {
  system.runInterval(() => {
    if (activeTrails.size === 0) return;
    for (const player of world.getAllPlayers()) {
      const trail = activeTrails.get(player.id);
      if (!trail) continue;
      if (system.currentTick > trail.expiresAt) {
        activeTrails.delete(player.id);
        continue;
      }
      try {
        const below = player.dimension.getBlock({
          x: Math.floor(player.location.x),
          y: Math.floor(player.location.y) - 1,
          z: Math.floor(player.location.z),
        });
        if (below && !below.isAir && !below.isLiquid && below.typeId !== 'lucky:lucky_block') {
          below.setType(trail.blockId);
          TRACE.blocks++;
        }
      } catch (_) {}
    }
  }, 5);
}
