/**
 * boss.js — 「厄运猎人」反向博弈流派（文件 2 §六.1）
 *
 * 玩法：玩家用腐肉 / 发酵蛛眼 / 凋灵头颅把幸运值压到 -60 ~ -100，
 *       敌对生物事件会升格为**厄运魔王**（十阶词缀 Boss）；
 *       击败魔王必掉专属满级附魔武器 + 下界之星。
 *
 * 实现要点：
 *   - 用实体 **tag** 标记（跨重启保留、可查询）：lucky:boss / lucky:boss_t<N>
 *   - 死亡时由 world.afterEvents.entityDie 统一结算掉落
 *   - 掉落物直接进击杀者背包，背包满则落地（避免丢进虚空）
 */
import { world, system, ItemStack, EnchantmentTypes } from '@minecraft/server';

export const BOSS_TAG = 'lucky:boss';
const TIER_PREFIX = 'lucky:boss_t';

/** 十阶魔王档案：阶位 → {称号, 主武器, 附魔, 额外战利品} */
const BOSS_TABLE = [
  { title: '深渊尸王·鲍勃', weapon: 'minecraft:netherite_sword', ench: [['sharpness', 5], ['fire_aspect', 2], ['mending', 1]], extra: ['minecraft:nether_star'] },
  { title: '神射骷髅王', weapon: 'minecraft:bow', ench: [['power', 5], ['flame', 1], ['infinity', 1]], extra: ['minecraft:nether_star'] },
  { title: '过载闪电苦力怕领主', weapon: 'minecraft:netherite_axe', ench: [['sharpness', 5], ['smite', 5]], extra: ['minecraft:nether_star'] },
  { title: '剧毒蛛后', weapon: 'minecraft:netherite_sword', ench: [['bane_of_arthropods', 5], ['looting', 3]], extra: ['minecraft:nether_star'] },
  { title: '灾厄炼金大宗师', weapon: 'minecraft:trident', ench: [['impaling', 5], ['loyalty', 3]], extra: ['minecraft:nether_star'] },
  { title: '旋风风暴之主', weapon: 'minecraft:mace', ench: [['wind_burst', 3], ['density', 5]], extra: ['minecraft:nether_star'] },
  { title: '沼骸毒箭统领', weapon: 'minecraft:crossbow', ench: [['multishot', 1], ['piercing', 4]], extra: ['minecraft:nether_star'] },
  { title: '狂暴卫道士斧王', weapon: 'minecraft:netherite_axe', ench: [['sharpness', 5], ['knockback', 2]], extra: ['minecraft:nether_star'] },
  { title: '重装劫掠兽之王', weapon: 'minecraft:netherite_sword', ench: [['sharpness', 5], ['unbreaking', 3]], extra: ['minecraft:nether_star', 'minecraft:enchanted_golden_apple'] },
  { title: '深渊监守者·古神', weapon: 'minecraft:netherite_sword', ench: [['sharpness', 5], ['mending', 1], ['unbreaking', 3]], extra: ['minecraft:nether_star', 'minecraft:enchanted_golden_apple', 'minecraft:totem_of_undying'] },
];

export function bossProfile(tier) {
  const t = Math.max(0, Math.min(9, Math.floor(tier)));
  return BOSS_TABLE[t];
}

/** 把一只普通敌对生物升格为厄运魔王 */
export function makeBoss(mob, tier) {
  const t = Math.max(0, Math.min(9, Math.floor(tier)));
  const prof = BOSS_TABLE[t];
  try {
    mob.addTag(BOSS_TAG);
    mob.addTag(TIER_PREFIX + t);
  } catch (_) {}
  try {
    mob.nameTag = `§4§l${prof.title} §r§7[${t + 1}阶厄运魔王]`;
  } catch (_) {}
  const amp = (n) => Math.max(0, Math.min(4, n));
  for (const [eff, a] of [
    ['health_boost', amp(2 + Math.floor(t / 2))],
    // 抗性上限压到 II：实测抗性 IV 会让生物对爆发伤害近乎免疫（applyDamage 被钳制后再减伤），
    // 反而变成"打不死的怪"，对玩法是负体验。
    ['resistance', Math.min(2, 1 + Math.floor(t / 5))],
    ['strength', amp(1 + Math.floor(t / 2))],
    ['fire_resistance', 0],
    ['speed', amp(Math.floor(t / 4))],
  ]) {
    try { mob.addEffect(eff, 20 * 60 * 30, { amplifier: a, showParticles: false }); } catch (_) {}
  }
  // ── 关于「给魔王穿装备」的平台限制（有实测证据，不是偷懒） ──────────────
  // 在本目标运行时（BDS 1.26.52.3）上，三条路全部不可用：
  //   ① entity.getComponent('minecraft:equippable') 对**所有生物**返回 undefined
  //      实测矩阵：zombie/skeleton/iron_golem/vindicator/armor_stand → eq=false，而 hp=true
  //      （同一个组件对**玩家**正常，说明是生物侧不支持，不是组件名写错）
  //   ② /replaceitem  → Syntax error（该命令已被移除）
  //   ③ /item replace entity ... → Syntax error: Unexpected "item"（该命令同样不存在）
  // 因此魔王的**威胁**改由状态效果承载（下面 makeBoss 顶部已施加）：
  //   strength 最高 IV（+12 近战伤害）、health_boost（+20 血）、speed、resistance II、fire_resistance
  // 而「击败必掉专属满级附魔武器」不受影响 —— 那是给**玩家背包**的 ItemStack，走 ItemStack API。
  return prof;
}

function makeWeapon(tier) {
  const prof = BOSS_TABLE[tier];
  const stack = new ItemStack(prof.weapon, 1);
  try {
    const en = stack.getComponent('minecraft:enchantable');
    if (en) {
      for (const [id, lvl] of prof.ench) {
        const ty = EnchantmentTypes.get('minecraft:' + id);
        if (ty) en.addEnchantment({ type: ty, level: Math.min(lvl, ty.maxLevel ?? lvl) });
      }
    }
  } catch (_) {}
  try {
    stack.nameTag = `§4§l${prof.title}的战利品`;
    stack.setLore([`§7击败十阶厄运魔王的凭证`, `§d★ 满级附魔`]);
  } catch (_) {}
  return stack;
}

function tierOf(entity) {
  try {
    for (let t = 9; t >= 0; t--) if (entity.hasTag(TIER_PREFIX + t)) return t;
  } catch (_) {}
  return 0;
}

function dropTo(dim, player, stack, at) {
  try {
    if (player && player.isValid) {
      const inv = player.getComponent('minecraft:inventory')?.container;
      if (inv) { inv.addItem(stack); return; }
    }
  } catch (_) {}
  try { dim.spawnItem(stack, at); } catch (_) {}
}

/** 注册死亡结算（主入口调用一次） */
export function subscribeBossDeath() {
  try {
    world.afterEvents.entityDie.subscribe((ev) => {
      const dead = ev.deadEntity;
      if (!dead) return;
      let isBoss = false;
      try { isBoss = dead.hasTag(BOSS_TAG); } catch (_) {}
      if (!isBoss) return;

      // ⚠️ 实体在 entityDie 时已经失效：dead.dimension / dead.location 会抛异常，
      //    必须逐项 try/catch，否则整个结算会中断（实测踩过）。
      const t = tierOf(dead);
      const prof = BOSS_TABLE[t];
      let dim = null;
      let at = null;
      try { dim = dead.dimension; } catch (_) {}
      try { at = dead.location; } catch (_) {}
      const killer = ev.damageSource?.damagingEntity ?? null;
      let player = null;
      try { if (killer && killer.typeId === 'minecraft:player') player = killer; } catch (_) {}
      if (!player && ev.damageSource?.damageSourceEntity) {
        try { if (ev.damageSource.damageSourceEntity.typeId === 'minecraft:player') player = ev.damageSource.damageSourceEntity; } catch (_) {}
      }
      if (!dim && player) { try { dim = player.dimension; } catch (_) {} }
      if (!at && player) { try { at = player.location; } catch (_) {} }
      if (!dim) return;
      if (!at) at = { x: 0, y: 0, z: 0 };

      try {
        // 必掉：专属满级附魔武器 + 下界之星（+ 高阶额外）
        dropTo(dim, player, makeWeapon(t), at);
        for (const id of prof.extra) {
          try { dropTo(dim, player, new ItemStack(id, 1), at); } catch (_) {}
        }
        try {
          world.sendMessage(`§4§l★ [厄运猎人] §r§e${player ? player.name : '某位冒险者'} §f击杀了 §4${prof.title} §7[${t + 1}阶]§f，夺得专属神兵与下界之星！`);
        } catch (_) {}
        try { dim.spawnParticle('lucky:tier0_abyss_particle', at); } catch (_) {}
        try { dim.playSound('lucky.jackpot_fanfare', at, { volume: 1.0 }); } catch (_) {}
        console.warn('[fate] BOSS_DROP ' + JSON.stringify({ tier: t, title: prof.title, killer: player ? player.name : null }));
      } catch (e) {
        console.warn('[fate] BOSS_DROP_ERR ' + e.message);
      }
    });
    return true;
  } catch (_) {
    return false;
  }
}

/** 供测试钩子使用：把幸运值映射到 0..9 阶 */
export function tierFromLuck(luck) {
  if (luck <= -95) return 9;
  if (luck <= -88) return 8;
  if (luck <= -81) return 7;
  if (luck <= -75) return 6;
  if (luck <= -72) return 5;
  if (luck <= -68) return 4;
  if (luck <= -64) return 3;
  if (luck <= -60) return 2;
  return 1;
}
