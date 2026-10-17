/**
 * event_engine.js — 加权抽选 + 开箱演出编排
 *
 * 与文件 1 的差异（均有 P0 证据）：
 *   - 开箱节奏主路径是 30 tick 定时器；world.afterEvents.soundCompleted 实测不触发，
 *     仅保留为"若引擎支持则提前结算"的加速器。
 *   - 幂等锁 resolved 防重复结算。
 */
import { world, system } from '@minecraft/server';
import { EVENTS } from './events.js';
import { OPENING_TICKS, TIER_NAMES, luckToTier } from './config.js';
import { executeEvent, resetTrace, TRACE } from './executors.js';
import { newBudget, isPeaceful, LIMITS } from './safety.js';
import { unlock, progress } from './codex.js';
import { subscribeBossDeath } from './boss.js';

/** 审计钩子：设置后下一条事件强制为该 ID */
let forcedEventId = null;
export function forceNextEvent(id) {
  forcedEventId = id;
}
export function peekForced() {
  return forcedEventId;
}

/** 敌对类事件（和平模式下会被过滤） */
const HOSTILE_ACTIONS = new Set(['SPAWN_AFFIX_MOBS']);

export function isHostile(ev) {
  return HOSTILE_ACTIONS.has(ev.actionType) && ev.params && ev.params.hostile === true;
}

/**
 * 加权抽选（文件 1 selectWeightedEvent）：
 *   1) 按 [minLuck, maxLuck] 过滤
 *   2) griefSafe 时排除 griefing 事件
 *   3) 和平模式排除敌对事件
 *   4) 距离区间中心越近权重越高（proximityBonus）
 */
export function selectWeightedEvent(luck, griefSafe, peaceful, rng = Math.random) {
  const pool = EVENTS.filter((ev) => {
    if (griefSafe && ev.griefing) return false;
    if (peaceful && isHostile(ev)) return false;
    return luck >= ev.minLuck && luck <= ev.maxLuck;
  });
  let candidates = pool;
  if (candidates.length === 0) {
    candidates = EVENTS.filter((ev) => (!griefSafe || !ev.griefing) && !(peaceful && isHostile(ev)));
  }
  if (candidates.length === 0) return EVENTS[0];

  let total = 0;
  const weighted = candidates.map((ev) => {
    const mid = (ev.minLuck + ev.maxLuck) / 2;
    const dist = Math.abs(luck - mid);
    const proximity = Math.max(0.25, 1.5 - dist / 80);
    const w = ev.weight * proximity;
    total += w;
    return { ev, w };
  });
  let roll = rng() * total;
  for (const it of weighted) {
    roll -= it.w;
    if (roll <= 0) return it.ev;
  }
  return weighted[weighted.length - 1].ev;
}

/** 供审计/UI 使用：当前幸运值下的候选数量 */
export function candidateCount(luck, griefSafe, peaceful) {
  return EVENTS.filter((ev) => {
    if (griefSafe && ev.griefing) return false;
    if (peaceful && isHostile(ev)) return false;
    return luck >= ev.minLuck && luck <= ev.maxLuck;
  }).length;
}

// ---------------------------------------------------------------------------
// 开箱演出
// ---------------------------------------------------------------------------
const pending = new Map(); // soundInstanceId -> ctx

/** 最近一次开箱结算的结果（供端到端测试断言；服务端逻辑不依赖它） */
export let LAST_RESOLVE = null;
export function resetLastResolve() { LAST_RESOLVE = null; }
export function engineState() { return { pendingSounds: pending.size, inflight: inflight.size }; }
const inflight = new Set(); // 坐标锁，防重复结算

function lockKey(dimId, loc) {
  return `${dimId}_${Math.floor(loc.x)}_${Math.floor(loc.y)}_${Math.floor(loc.z)}`;
}

/** soundCompleted 加速器（实测不触发，保留无害） */
export function subscribeSoundCompleted() {
  try {
    if (!world.afterEvents.soundCompleted) return false;
    world.afterEvents.soundCompleted.subscribe((evt) => {
      const ctx = pending.get(evt.soundInstanceId);
      if (ctx && !ctx.resolved) {
        pending.delete(evt.soundInstanceId);
        resolve(ctx);
      }
    });
    return true;
  } catch (_) {
    return false;
  }
}

export function startOpening(dim, loc, player, luck, griefSafe, opts = {}) {
  const key = lockKey(dim.id, loc);
  if (inflight.has(key)) return { skipped: 'inflight' };
  inflight.add(key);

  let actor = null;
  try {
    actor = dim.spawnEntity('lucky:opening_actor', { x: loc.x + 0.5, y: loc.y + 0.2, z: loc.z + 0.5 });
  } catch (_) {}

  // 动画状态机：1 = spin_ascend（蓄力旋转升空）→ 3 = burst（爆裂）
  const setPhase = (e, p) => { try { if (e && e.isValid) e.setProperty('lucky:phase', p); } catch (_) {} };
  setPhase(actor, 1);
  if (actor) system.runTimeout(() => setPhase(actor, 3), Math.floor(OPENING_TICKS * 0.6));

  const ctx = {
    dim,
    loc: { x: loc.x + 0.5, y: loc.y + 0.5, z: loc.z + 0.5 },
    blockLoc: loc,
    player,
    luck,
    griefSafe,
    actor,
    resolved: false,
    key,
    forcedId: opts.forcedId ?? forcedEventId,
  };
  if (opts.forcedId ?? forcedEventId) forcedEventId = null;

  try {
    const si = dim.playSound('lucky.roll_charge', ctx.loc, { volume: 1, pitch: 1 });
    if (si && si.id !== undefined) { ctx.soundId = si.id; pending.set(si.id, ctx); }
  } catch (_) {}

  system.runTimeout(() => {
    if (!ctx.resolved) {
      // 按 soundId 删除（键必须与 set 一致；soundCompleted 实测不触发，这里是唯一清理点）
      if (ctx.soundId !== undefined) pending.delete(ctx.soundId);
      resolve(ctx);
    }
  }, OPENING_TICKS);

  // 容量保险：即便将来某条路径漏删，也不会无限增长
  if (pending.size > 256) {
    let dropped = 0;
    for (const [sid, c] of [...pending]) {
      if (c.resolved) { pending.delete(sid); dropped++; }
    }
    if (pending.size > 256) { pending.clear(); dropped = -1; }
    console.warn('[fate] pending sweep ' + JSON.stringify({ dropped, size: pending.size }));
  }

  return { started: true };
}

export function resolve(ctx) {
  try {
    return resolveInner(ctx);
  } catch (e) {
    LAST_RESOLVE = { ok: false, error: e.message, eventId: null };
    console.warn('[fate] RESOLVE_ERROR ' + JSON.stringify(LAST_RESOLVE));
    return null;
  }
}

function resolveInner(ctx) {
  if (ctx.resolved) return null;
  ctx.resolved = true;
  inflight.delete(ctx.key);
  if (ctx.soundId !== undefined) pending.delete(ctx.soundId);

  try {
    if (ctx.actor && ctx.actor.isValid) {
      // 4 = reveal_good / 5 = reveal_bad，播完再移除
      ctx.actor.setProperty("lucky:phase", ctx.luck >= 0 ? 4 : 5);
      const a = ctx.actor;
      system.runTimeout(() => { try { if (a.isValid) a.remove(); } catch (_) {} }, 20);
      ctx.actor = null;
    }
  } catch (_) {}

  const peaceful = isPeaceful();
  const chosen = ctx.forcedId
    ? EVENTS.find((e) => e.id === ctx.forcedId) ?? selectWeightedEvent(ctx.luck, ctx.griefSafe, peaceful)
    : selectWeightedEvent(ctx.luck, ctx.griefSafe, peaceful);

  try {
    ctx.dim.spawnParticle('lucky:burst_rainbow_particle', ctx.loc);
    ctx.dim.playSound(chosen.minLuck <= -21 ? 'lucky.abyss_curse' : 'lucky.jackpot_fanfare', ctx.loc, { volume: 0.7 });
  } catch (_) {}

  const tierColor = ctx.luck >= 21 ? '§b' : ctx.luck <= -21 ? '§c' : '§e';
  if (ctx.player && ctx.player.isValid) {
    try {
      ctx.player.sendMessage(
        `§6[万象天平] §7(幸运 ${ctx.luck >= 0 ? '+' + ctx.luck : ctx.luck}) §f触发事件 §e#${String(chosen.id).padStart(4, '0')} ${tierColor}${chosen.name}§r\n§7▸ ${chosen.description}`
      );
      ctx.player.onScreenDisplay.setTitle(`§e#${String(chosen.id).padStart(4, '0')} ${tierColor}${chosen.name}`, {
        stayDuration: 45,
        fadeInDuration: 5,
        fadeOutDuration: 10,
        subtitle: `§7幸运值: ${ctx.luck >= 0 ? '+' + ctx.luck : ctx.luck} | ${TIER_NAMES[luckToTier(ctx.luck)]}`,
      });
    } catch (_) {}
  }

  // 图鉴收集（文件 2 §六）：记录本玩家触发过的事件编号
  let firstTime = false;
  try {
    if (ctx.player) {
      firstTime = unlock(ctx.player, chosen.id);
      const pr = progress(ctx.player);
      ctx.player.onScreenDisplay.setActionBar(`§6[图鉴] §f已收集 §e${pr.unlocked}§f/1000 §7(${pr.percent}%)` + (firstTime ? ' §a★新事件!' : ''));
    }
  } catch (_) {}

  resetTrace();
  const budget = newBudget();
  try {
    console.warn(`[fate] OPENED ${JSON.stringify({ id: chosen.id, code: chosen.code, act: chosen.actionType, luck: ctx.luck, player: ctx.player?.name ?? null, griefSafe: ctx.griefSafe, peaceful })}`);
    executeEvent(chosen, ctx.dim, ctx.loc, ctx.blockLoc, ctx.player, ctx.griefSafe, budget, peaceful, true, ctx.luck);
  } catch (e) {
    TRACE.lastError = 'executeEvent: ' + e.message;
  }

  LAST_RESOLVE = { ok: !TRACE.lastError, error: TRACE.lastError, eventId: chosen.id, code: chosen.code, act: chosen.actionType, firstTime, codex: ctx.player ? progress(ctx.player) : null };
  console.warn('[fate] RESOLVED ' + JSON.stringify(LAST_RESOLVE));
  return { event: chosen, trace: { ...TRACE, notes: [...TRACE.notes], budgetNotes: budget.notes } };
}

/** 仅执行不演出（审计与测试钩子用） */
export function runEventDirect(ev, dim, loc, player, griefSafe, luck = 0) {
  resetTrace();
  const budget = newBudget();
  const peaceful = isPeaceful();
  executeEvent(ev, dim, { x: loc.x + 0.5, y: loc.y + 0.5, z: loc.z + 0.5 }, loc, player, griefSafe, budget, peaceful, false, luck);
  return { trace: { ...TRACE, notes: [...TRACE.notes], budgetNotes: budget.notes } };
}

export { LIMITS };
export { subscribeBossDeath };
