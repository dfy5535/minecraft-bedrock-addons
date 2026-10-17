/**
 * main.js — 万象天平·幸运方块 主入口
 *
 * 1) 注册自定义方块组件 lucky:block_mechanic
 *    （P0 结论：1.26.50 用"组件直写命名空间键"语法绑定，见 blocks/lucky_block.json）
 * 2) 世界级订阅：精准采集封存 / 放置还原 / 交互兜底
 * 3) 命运调律权杖 UI
 * 4) 启动自检：事件库 1000 条校验 + 权重校验
 */
import { world, system, ItemStack, EquipmentSlot } from '@minecraft/server';
import { ActionFormData } from '@minecraft/server-ui';

import { BLOCK_ID, WAND_ID, MIN_LUCK, MAX_LUCK, TIER_NAMES, luckToTier, renderLuckBar, clampLuck } from './config.js';
import { EVENTS } from './events.js';
import { getBlockLuck, applyLuck, clearBlockLuck, reapOrphanKeys, luckKeyCount } from './luck_storage.js';
import { startWildGenLoop } from './wildgen.js';
import { handleInteract, makeSealedBlock, parseSealedLore, hasSilkTouch } from './luck_interaction.js';
import { startOpening, selectWeightedEvent, candidateCount, subscribeSoundCompleted, subscribeBossDeath } from './event_engine.js';
import { startCleanupLoop, isPeaceful, LIMITS } from './safety.js';
import { startTrailLoop, activeTrails } from './executors.js';
import { registerTestHooks } from './testhooks.js';
import { progress, recentNames, forgetCache } from './codex.js';

const LOG = (tag, obj) => {
  try { console.warn(`[fate] ${tag} ${JSON.stringify(obj)}`); } catch (_) { console.warn(`[fate] ${tag}`); }
};

// ===========================================================================
// 1. 自定义方块组件
// ===========================================================================
let componentRegistered = false;
let componentError = null;

// 1.21.60 兼容：1.x 无 system.beforeEvents，回退到 world.beforeEvents.worldInitialize
const __startupEvt = (typeof system.beforeEvents !== 'undefined' && system.beforeEvents && system.beforeEvents.startup)
  || (typeof world.beforeEvents !== 'undefined' && world.beforeEvents && world.beforeEvents.worldInitialize)
  || null;
if (__startupEvt) __startupEvt.subscribe((init) => {
  try {
    init.blockComponentRegistry.registerCustomComponent('lucky:block_mechanic', {
      onPlace(ev) {
        // 只同步阶位，**绝不覆盖幸运值**。
        // （实测：onPlace 会在放置/替换后排队触发；若在此写 0 会抹掉刚设置的幸运值。
        //   精准采集的还原由 afterEvents.playerPlaceBlock 负责。）
        applyLuck(ev.block, getBlockLuck(ev.block));
      },
      onPlayerInteract(ev) {
        const { block, player, dimension } = ev;
        if (!player) return;
        if (player.isSneaking) {
          // 潜行右键且手持权杖 → 打开控制台；否则走整组快充
          const eq = player.getComponent('minecraft:equippable');
          const held = eq ? eq.getEquipment(EquipmentSlot.Mainhand) : undefined;
          if (held && held.typeId === WAND_ID) {
            openFateTuner(player, block);
            return;
          }
        }
        handleInteract(block, player, dimension);
      },
      onPlayerBreak(ev) {
        // 主路径由 world.beforeEvents.playerBreakBlock 处理（可拿到 itemStack 判精准采集）；
        // 这里只做兜底清键，防止坐标记录残留。
        const { block, dimension } = ev;
        clearBlockLuck(dimension.id, block.location);
      },
      onTick() { /* 保活：让组件拥有 tick 能力（供后续扩展） */ },
    });
    componentRegistered = true;
  } catch (e) {
    componentError = e.message;
  }
});

// ===========================================================================
// 2. 精准采集封存 / 破坏开箱
// ===========================================================================
world.beforeEvents.playerBreakBlock.subscribe((ev) => {
  try {
    const { block, player, itemStack, dimension } = ev;
    console.warn('[fate] BREAK_HOOK ' + JSON.stringify({ type: block?.typeId ?? null, player: player?.name ?? null, hasItem: !!itemStack }));
    if (!block || block.typeId !== BLOCK_ID) return;

    const luck = getBlockLuck(block);
    const loc = { x: Math.floor(block.location.x), y: Math.floor(block.location.y), z: Math.floor(block.location.z) };
    const dim = dimension ?? block.dimension;
    const griefSafe = block.permutation.getState('lucky:grief_safe') === true;
    const silk = hasSilkTouch(itemStack);

    system.run(() => {
      clearBlockLuck(dim.id, loc);
      if (silk) {
        try {
          dim.spawnItem(makeSealedBlock(luck), { x: loc.x + 0.5, y: loc.y + 0.5, z: loc.z + 0.5 });
          player?.onScreenDisplay?.setActionBar(`§b[精准采集] §f已完整封存幸运值 (${luck})！`);
          console.warn('[fate] SEALED ' + JSON.stringify({ luck, player: player?.name ?? null, loc }));
        } catch (e) { console.warn('[fate] SEALED_ERR ' + e.message); }
        return;
      }
      startOpening(dim, loc, player, luck, griefSafe);
    });
  } catch (e) {
    console.warn('[fate] BREAK_HOOK_ERR ' + e.message);
  }
});

// ===========================================================================
// 3. 封存方块放置还原
// ===========================================================================
const pendingPlace = new Map(); // playerId -> luck

world.beforeEvents.itemUse.subscribe((ev) => {
  try {
    const { itemStack, source } = ev;
    if (!itemStack || itemStack.typeId !== BLOCK_ID) return;
    if (!source || source.typeId !== 'minecraft:player') return;
    const luck = parseSealedLore(itemStack.getLore());
    if (luck !== null) pendingPlace.set(source.id, luck);
  } catch (_) {}
});

world.afterEvents.playerPlaceBlock.subscribe((ev) => {
  try {
    const { block, player } = ev;
    if (!block || block.typeId !== BLOCK_ID) return;
    const luck = pendingPlace.get(player.id);
    pendingPlace.delete(player.id);
    applyLuck(block, luck === undefined ? 0 : luck);
    if (luck !== undefined && luck !== 0) {
      player.onScreenDisplay.setActionBar(`§a已还原封存的幸运方块：${renderLuckBar(luck)}`);
    }
  } catch (_) {}
});

// 兜底交互（自定义组件未生效时的后备路径）
world.beforeEvents.playerInteractWithBlock.subscribe((ev) => {
  try {
    const { block, player } = ev;
    const dimension = ev.dimension ?? (player ? player.dimension : undefined);
    if (!block || block.typeId !== BLOCK_ID) return;
    // 1.21.60 兼容：方块已不再引用自定义组件，交互一律走本兜底路径。
    const b = block, p = player, d = dimension;
    system.run(() => handleInteract(b, p, d));
  } catch (_) {}
});

subscribeSoundCompleted();
const bossDeathSubscribed = subscribeBossDeath();

// 玩家离开：清理所有按 playerId 索引的缓存，避免长期运行下的无界增长
try {
  world.afterEvents.playerLeave.subscribe((ev) => {
    try { forgetCache(ev.playerId); } catch (_) {}
    try { pendingPlace.delete(ev.playerId); } catch (_) {}
    try { activeTrails.delete(ev.playerId); } catch (_) {}
  });
} catch (_) {}

// ===========================================================================
// 4. 命运调律权杖 UI
// ===========================================================================
function openFateTuner(player, block) {
  const luck = getBlockLuck(block);
  const safe = block.permutation.getState('lucky:grief_safe') === true;
  const peaceful = isPeaceful();
  const matching = candidateCount(luck, safe, peaceful);

  const form = new ActionFormData()
    .title('§b§l命运调律权杖 · 幸运方块控制台')
    .body(
      `${renderLuckBar(luck)}\n\n` +
        `§f当前可触发事件池: §e${matching} / 1000 种\n` +
        `§f建筑保护模式: ${safe ? '§a已开启' : '§c已关闭'}\n` +
        `§f世界难度: §e${peaceful ? '和平（敌对事件已排除）' : '非和平'}\n` +
        `§7提示：手持钻石(+10)或腐肉(-5)右键充能；潜行右键整组快充。`
    )
    .button(`§6切换建筑保护模式 (当前: ${safe ? '开启' : '关闭'})`)
    .button('§a[调试] 校准为 +100 神圣满幸运')
    .button('§c[调试] 校准为 -100 深渊负幸运')
    .button('§e[调试] 归零 (0 混沌中立)')
    .button('§d查看万象图鉴收集进度');

  form.show(player).then((res) => {
    if (res.canceled) return;
    if (res.selection === 0) {
      block.setPermutation(block.permutation.withState('lucky:grief_safe', !safe));
      player.sendMessage(`§6[万象天平] §f建筑保护模式已切换为: ${!safe ? '§a开启' : '§c关闭'}`);
    } else if (res.selection === 1) {
      applyLuck(block, MAX_LUCK);
      player.onScreenDisplay.setActionBar(renderLuckBar(MAX_LUCK));
    } else if (res.selection === 2) {
      applyLuck(block, MIN_LUCK);
      player.onScreenDisplay.setActionBar(renderLuckBar(MIN_LUCK));
    } else if (res.selection === 3) {
      applyLuck(block, 0);
      player.onScreenDisplay.setActionBar(renderLuckBar(0));
    } else if (res.selection === 4) {
      const pr = progress(player);
      const recents = recentNames(player);
      const bar = '█'.repeat(Math.round((pr.unlocked / pr.total) * 20)).padEnd(20, '░');
      player.sendMessage(
        `§6§l万象图鉴 §r\n§f已收集 §e${pr.unlocked}§f/§e${pr.total} §7(${pr.percent}%)\n§b[${bar}]\n§7最近解锁:\n` +
        (recents.length ? recents.map((r) => '  §7· §f' + r).join('\n') : '  §7（还没有触发过任何事件）')
      );
    }
  }).catch(() => {});
}

// ===========================================================================
// 5. 启动自检
// ===========================================================================
function selfCheck() {
  const problems = [];
  if (EVENTS.length !== 1000) problems.push(`事件数 ${EVENTS.length} != 1000`);
  const ids = new Set();
  for (const e of EVENTS) {
    if (ids.has(e.id)) problems.push(`重复 id ${e.id}`);
    ids.add(e.id);
    if (!(e.minLuck >= -100 && e.maxLuck <= 100 && e.minLuck <= e.maxLuck)) problems.push(`#${e.id} 区间非法`);
    if (e.weight <= 0) problems.push(`#${e.id} 权重非法`);
  }
  for (let i = 1; i <= 1000; i++) if (!ids.has(i)) problems.push(`缺失 id ${i}`);

  // 每个幸运值档位都必须有候选
  const emptyBands = [];
  for (let l = -100; l <= 100; l += 10) {
    if (candidateCount(l, false, false) === 0) emptyBands.push(l);
  }

  LOG('自检', {
    events: EVENTS.length,
    uniqueIds: ids.size,
    problems: problems.length,
    firstProblems: problems.slice(0, 5),
    emptyBands,
    luckKeys: luckKeyCount(),
    componentRegistered,
    componentError,
    limits: LIMITS,
  });
  return { problems, emptyBands };
}

system.run(() => {
  const r = selfCheck();
  if (r.problems.length === 0 && r.emptyBands.length === 0) {
    LOG('事件库', { 有效: EVENTS.length, 非法: 0, 权重错误: 0 });
  }
  startCleanupLoop();
  startWildGenLoop();
  startTrailLoop();
  registerTestHooks({ getBlockLuck, applyLuck, startOpening, selectWeightedEvent, EVENTS, openFateTuner, reapOrphanKeys, luckKeyCount });

  // 孤儿幸运值键回收（每 5 分钟，保守模式）
  system.runInterval(() => {
    try {
      const { removed } = reapOrphanKeys(100);
      if (removed > 0) LOG('reap', { removed, remaining: luckKeyCount() });
    } catch (_) {}
  }, 6000);

  LOG('启动完成', { version: '1.0.0', tiers: TIER_NAMES.length, bossDeathSubscribed });
});
