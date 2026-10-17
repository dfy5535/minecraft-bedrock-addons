/**
 * safety.js — 事件执行预算与回收
 * 1000 条事件里有 TNT 地毯、岩浆柱、黑曜石笼等破坏性内容，
 * 必须逐事件限流，否则会炸服 / 炸世界。
 */
import { world, system } from '@minecraft/server';

export const LIMITS = {
  maxSpawnedEntities: 24,   // 单事件生成实体上限
  maxModifiedBlocks: 220,   // 单事件改动方块上限
  maxTemporaryTtl: 300,     // 临时实体存活上限（tick）
  maxScheduledTimers: 64,   // 单事件定时器上限
};

export function newBudget() {
  return { entities: 0, blocks: 0, timers: 0, notes: [] };
}

export function spendEntities(b, n) {
  const room = Math.max(0, LIMITS.maxSpawnedEntities - b.entities);
  const used = Math.min(room, n);
  b.entities += used;
  if (used < n) b.notes.push(`entity cap: ${n}→${used}`);
  return used;
}

export function spendBlocks(b, n) {
  const room = Math.max(0, LIMITS.maxModifiedBlocks - b.blocks);
  const used = Math.min(room, n);
  b.blocks += used;
  if (used < n) b.notes.push(`block cap: ${n}→${used}`);
  return used;
}

export function spendTimer(b) {
  if (b.timers >= LIMITS.maxScheduledTimers) return false;
  b.timers++;
  return true;
}

/** 临时实体登记：超时自动移除，防止世界实体泄漏 */
const temporary = new Map(); // entityId -> expireTick

export function trackTemporary(entity, ttlTicks = LIMITS.maxTemporaryTtl) {
  try {
    if (!entity || !entity.isValid) return;
    temporary.set(entity.id, system.currentTick + ttlTicks);
  } catch (_) {}
}

export function trackTemporaryAll(entities, ttlTicks = LIMITS.maxTemporaryTtl) {
  for (const e of entities) trackTemporary(e, ttlTicks);
}

export function temporaryCount() {
  return temporary.size;
}

/** 每个 tick 批量清理到期临时实体（50ms 开销极小） */
export function startCleanupLoop() {
  system.runInterval(() => {
    if (temporary.size === 0) return;
    const now = system.currentTick;
    for (const [id, expire] of [...temporary]) {
      if (now < expire) continue;
      temporary.delete(id);
      try {
        const e = world.getEntity(id);
        if (e && e.isValid) e.remove();
      } catch (_) {}
    }
  }, 20);
}

/** 高难度/和平模式适配：和平模式拒绝生成敌对生物 */
export function isPeaceful() {
  try {
    // 1.21.60（1.17.0 API）无 world.getDifficulty；按非和平处理，不影响主流程。
    if (typeof world.getDifficulty !== 'function') return false;
    return world.getDifficulty() === 'Peaceful';
  } catch (_) {
    return false;
  }
}
