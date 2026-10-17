/**
 * luck_storage.js — 幸运值持久化
 *
 * P0 探针结论：自定义方块拿不到 minecraft:dynamic_properties（返回 NULL），
 * 因此按文件 2 §3.1 的降级方案：world 动态属性 + 坐标键。
 * 键格式：lb_<dimensionId>_<x>_<y>_<z>
 *
 * 配套：破坏/替换时清键；提供孤儿键回收器防止无限增长。
 */
import { world, system } from '@minecraft/server';
import { MIN_LUCK, MAX_LUCK, clampLuck } from './config.js';

const PREFIX = 'lb_';
const keyOf = (dimensionId, loc) => `${PREFIX}${dimensionId}_${Math.floor(loc.x)}_${Math.floor(loc.y)}_${Math.floor(loc.z)}`;

export function getBlockLuck(block) {
  try {
    const v = world.getDynamicProperty(keyOf(block.dimension.id, block.location));
    return typeof v === 'number' ? clampLuck(v) : 0;
  } catch (_) {
    return 0;
  }
}

export function setBlockLuckRaw(dimensionId, loc, luck) {
  const k = keyOf(dimensionId, loc);
  const v = clampLuck(luck);
  try {
    if (v === 0) world.setDynamicProperty(k, undefined);
    else world.setDynamicProperty(k, v);
  } catch (_) {}
  return v;
}

export function clearBlockLuck(dimensionId, loc) {
  try {
    world.setDynamicProperty(keyOf(dimensionId, loc), undefined);
  } catch (_) {}
}

/** 同时写值 + 同步方块阶位状态 */
export function applyLuck(block, luck) {
  const v = setBlockLuckRaw(block.dimension.id, block.location, luck);
  try {
    const cur = block.permutation.getState('lucky:tier');
    const want = v <= -61 ? 0 : v <= -21 ? 1 : v <= 20 ? 2 : v <= 60 ? 3 : 4;
    if (cur !== want) block.setPermutation(block.permutation.withState('lucky:tier', want));
  } catch (_) {}
  return v;
}

/** 统计当前幸运值键数量（诊断用） */
export function luckKeyCount() {
  try {
    return world.getDynamicPropertyIds().filter((k) => k.startsWith(PREFIX)).length;
  } catch (_) {
    return -1;
  }
}

/**
 * 孤儿键回收：清理"键存在但该坐标已不是幸运方块"的记录。
 * 只扫描已加载区块中的坐标（getBlock 会抛错的坐标直接跳过），
 * 因此是保守回收，绝不会误删仍存在的方块记录。
 */
export function reapOrphanKeys(limit = 200) {
  let removed = 0;
  let checked = 0;
  try {
    const ids = world.getDynamicPropertyIds().filter((k) => k.startsWith(PREFIX));
    for (const k of ids) {
      if (removed >= limit) break;
      const parts = k.slice(PREFIX.length).split('_');
      if (parts.length !== 4) continue;
      const [dimId, xs, ys, zs] = parts;
      const loc = { x: Number(xs), y: Number(ys), z: Number(zs) };
      if (!Number.isFinite(loc.x) || !Number.isFinite(loc.y) || !Number.isFinite(loc.z)) {
        world.setDynamicProperty(k, undefined);
        removed++;
        continue;
      }
      checked++;
      let dim;
      try {
        dim = world.getDimension(dimId);
      } catch (_) {
        continue;
      }
      try {
        const b = dim.getBlock(loc);
        // 区块未加载时 getBlock 返回 undefined —— 保守跳过，不误删
        if (b && b.typeId !== 'lucky:lucky_block') {
          world.setDynamicProperty(k, undefined);
          removed++;
        }
      } catch (_) {
        /* 未加载 / 越界：跳过 */
      }
    }
  } catch (_) {}
  return { removed, checked };
}
