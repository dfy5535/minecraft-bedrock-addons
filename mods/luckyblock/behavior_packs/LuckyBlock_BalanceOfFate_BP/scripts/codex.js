/**
 * codex.js — 1000 事件图鉴收集系统（文件 2 §六「1000 事件图鉴收集系统」）
 *
 * 每个玩家用一条 1000 字符的位串记录"触发过哪些事件编号"，
 * 存在玩家动态属性 lucky:codex 上（1 KB 以内，跨重启保留）。
 *
 * 提供：记录、查询、进度、最近解锁列表。
 */
import { world } from '@minecraft/server';
import { EVENTS } from './events.js';

const KEY = 'lucky:codex';
const RECENT_KEY = 'lucky:codex_recent';
const TOTAL = 1000;

const cache = new Map(); // playerId -> { bits: string, recent: number[] }

function blank() {
  return '0'.repeat(TOTAL);
}

function load(player) {
  const hit = cache.get(player.id);
  if (hit) return hit;
  let bits = blank();
  let recent = [];
  try {
    const raw = player.getDynamicProperty(KEY);
    if (typeof raw === 'string' && raw.length === TOTAL) bits = raw;
  } catch (_) {}
  try {
    const r = player.getDynamicProperty(RECENT_KEY);
    if (typeof r === 'string' && r) recent = r.split(',').map(Number).filter((n) => Number.isFinite(n)).slice(0, 20);
  } catch (_) {}
  const rec = { bits, recent };
  cache.set(player.id, rec);
  return rec;
}

function save(player, rec) {
  try { player.setDynamicProperty(KEY, rec.bits); } catch (_) {}
  try { player.setDynamicProperty(RECENT_KEY, rec.recent.join(',')); } catch (_) {}
}

/** 记录一次事件触发；返回是否是首次解锁 */
export function unlock(player, eventId) {
  if (!player || !(eventId >= 1 && eventId <= TOTAL)) return false;
  const rec = load(player);
  const i = eventId - 1;
  if (rec.bits[i] === '1') {
    // 已解锁：仅刷新"最近"列表
    rec.recent = [eventId, ...rec.recent.filter((n) => n !== eventId)].slice(0, 20);
    save(player, rec);
    return false;
  }
  rec.bits = rec.bits.slice(0, i) + '1' + rec.bits.slice(i + 1);
  rec.recent = [eventId, ...rec.recent].slice(0, 20);
  save(player, rec);
  return true;
}

export function progress(player) {
  const rec = load(player);
  let n = 0;
  for (let i = 0; i < TOTAL; i++) if (rec.bits[i] === '1') n++;
  return { unlocked: n, total: TOTAL, percent: Math.round((n / TOTAL) * 1000) / 10, recent: rec.recent };
}

export function isUnlocked(player, eventId) {
  const rec = load(player);
  return rec.bits[eventId - 1] === '1';
}

/** 最近解锁的事件名（供 UI 展示） */
export function recentNames(player) {
  const rec = load(player);
  return rec.recent.map((id) => {
    const ev = EVENTS.find((e) => e.id === id);
    return ev ? `#${String(id).padStart(4, '0')} ${ev.name}` : `#${String(id).padStart(4, '0')}`;
  });
}

export function forgetCache(playerId) {
  cache.delete(playerId);
}
