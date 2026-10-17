/**
 * structures.js — 程序化建筑生成器（文件 1 BUILD_STRUCTURE 的 10 个原型）
 * 全部走 dimension.getBlock().setType()，逐块 try/catch，受 safety.js 预算约束。
 */
import { ItemStack } from '@minecraft/server';
import { spendBlocks } from './safety.js';

export function setBlockSafe(dim, pos, typeId, budget) {
  if (budget && spendBlocks(budget, 1) === 0) return false;
  try {
    const b = dim.getBlock(pos);
    if (!b) return false;
    b.setType(typeId);
    return true;
  } catch (_) {
    return false;
  }
}

function fillBox(dim, x0, y0, z0, x1, y1, z1, typeId, budget) {
  for (let x = x0; x <= x1; x++)
    for (let y = y0; y <= y1; y++)
      for (let z = z0; z <= z1; z++) setBlockSafe(dim, { x, y, z }, typeId, budget);
}

/** 通用平台 + 四角柱 + 中心核（文件 1 正向/中性结构） */
function platform(dim, origin, p, budget) {
  const r = Math.max(1, Math.floor(Math.min(p.sx, p.sz) / 2));
  const y = origin.y - 1;
  for (let dx = -r; dx <= r; dx++) {
    for (let dz = -r; dz <= r; dz++) {
      setBlockSafe(dim, { x: origin.x + dx, y, z: origin.z + dz }, p.wallBlock, budget);
      if (Math.abs(dx) === r && Math.abs(dz) === r) {
        for (let h = 0; h <= 2; h++) setBlockSafe(dim, { x: origin.x + dx, y: origin.y + h, z: origin.z + dz }, p.wallBlock, budget);
      }
    }
  }
  setBlockSafe(dim, origin, p.coreBlock, budget);
}

export function buildStructure(dim, origin, player, p, budget) {
  const o = { x: Math.floor(origin.x), y: Math.floor(origin.y), z: Math.floor(origin.z) };
  switch (p.archetype) {
    case 'OBSIDIAN_CAGE': {
      // 3×4×3 黑曜石外壳 + 内部水
      for (let dx = -1; dx <= 1; dx++)
        for (let dy = 0; dy <= 3; dy++)
          for (let dz = -1; dz <= 1; dz++) {
            const shell = Math.abs(dx) === 1 || Math.abs(dz) === 1 || dy === 0 || dy === 3;
            setBlockSafe(dim, { x: o.x + dx, y: o.y + dy, z: o.z + dz }, shell ? 'minecraft:obsidian' : 'minecraft:water', budget);
          }
      return { blocks: 36 };
    }
    case 'ANVIL_GUILLOTINE': {
      for (let dx = -1; dx <= 1; dx++)
        for (let dz = -1; dz <= 1; dz++)
          if (Math.abs(dx) === 1 || Math.abs(dz) === 1) {
            setBlockSafe(dim, { x: o.x + dx, y: o.y, z: o.z + dz }, 'minecraft:iron_bars', budget);
            setBlockSafe(dim, { x: o.x + dx, y: o.y + 1, z: o.z + dz }, 'minecraft:iron_bars', budget);
          }
      setBlockSafe(dim, { x: o.x, y: o.y + 6, z: o.z }, 'minecraft:anvil', budget);
      return { blocks: 17 };
    }
    case 'LAVA_PILLAR': {
      for (let h = 0; h < 5; h++) setBlockSafe(dim, { x: o.x, y: o.y + h, z: o.z }, h === 4 ? 'minecraft:lava' : 'minecraft:magma', budget);
      for (let dx = -1; dx <= 1; dx++)
        for (let dz = -1; dz <= 1; dz++) setBlockSafe(dim, { x: o.x + dx, y: o.y - 1, z: o.z + dz }, 'minecraft:magma', budget);
      return { blocks: 14 };
    }
    case 'POWDER_PIT': {
      for (let dx = -1; dx <= 1; dx++)
        for (let dz = -1; dz <= 1; dz++) {
          setBlockSafe(dim, { x: o.x + dx, y: o.y - 1, z: o.z + dz }, 'minecraft:packed_ice', budget);
          setBlockSafe(dim, { x: o.x + dx, y: o.y, z: o.z + dz }, 'minecraft:powder_snow', budget);
        }
      return { blocks: 18 };
    }
    case 'DOME': {
      const r = Math.max(2, Math.floor(Math.min(p.sx, p.sz) / 2));
      for (let dx = -r; dx <= r; dx++)
        for (let dy = 0; dy <= r; dy++)
          for (let dz = -r; dz <= r; dz++) {
            const d = Math.sqrt(dx * dx + dy * dy + dz * dz);
            if (d > r - 0.6 && d < r + 0.6) setBlockSafe(dim, { x: o.x + dx, y: o.y + dy, z: o.z + dz }, p.wallBlock, budget);
          }
      setBlockSafe(dim, o, p.coreBlock, budget);
      return { blocks: (2 * r + 1) * (r + 1) * (2 * r + 1) };
    }
    case 'CAMP': {
      platform(dim, o, p, budget);
      setBlockSafe(dim, o, 'minecraft:campfire', budget);
      setBlockSafe(dim, { x: o.x + 1, y: o.y, z: o.z }, 'minecraft:straw_bed', budget);
      setBlockSafe(dim, { x: o.x - 1, y: o.y, z: o.z }, 'minecraft:yellow_cushion', budget);
      const chestPos = { x: o.x, y: o.y, z: o.z + 1 };
      setBlockSafe(dim, chestPos, 'minecraft:chest', budget);
      try {
        dim.spawnItem(new ItemStack('minecraft:bread', 4), { x: o.x + 0.5, y: o.y + 1.2, z: o.z + 0.5 });
      } catch (_) {}
      return { blocks: 30, chest: chestPos };
    }
    case 'HUT': {
      const r = Math.max(2, Math.floor(Math.min(p.sx, p.sz) / 2));
      platform(dim, o, p, budget);
      for (let dx = -r; dx <= r; dx++)
        for (let dz = -r; dz <= r; dz++)
          if (Math.abs(dx) === r || Math.abs(dz) === r)
            for (let h = 1; h <= 3; h++) setBlockSafe(dim, { x: o.x + dx, y: o.y + h, z: o.z + dz }, p.wallBlock, budget);
      fillBox(dim, o.x - r, o.y + 4, o.z - r, o.x + r, o.y + 4, o.z + r, 'minecraft:poplar_planks', budget);
      setBlockSafe(dim, { x: o.x, y: o.y + 1, z: o.z }, 'minecraft:straw_bed', budget);
      return { blocks: 90 };
    }
    case 'WELL': {
      platform(dim, o, p, budget);
      setBlockSafe(dim, o, 'minecraft:water', budget);
      for (const [dx, dz] of [[1, 0], [-1, 0], [0, 1], [0, -1]])
        setBlockSafe(dim, { x: o.x + dx, y: o.y, z: o.z + dz }, p.wallBlock, budget);
      return { blocks: 20 };
    }
    case 'ALTAR': {
      platform(dim, o, p, budget);
      setBlockSafe(dim, o, 'minecraft:enchanting_table', budget);
      for (const [dx, dz] of [[2, 0], [-2, 0], [0, 2], [0, -2]])
        setBlockSafe(dim, { x: o.x + dx, y: o.y, z: o.z + dz }, 'minecraft:bookshelf', budget);
      return { blocks: 24 };
    }
    case 'SULFUR_PAVILION': {
      platform(dim, o, p, budget);
      setBlockSafe(dim, o, 'minecraft:magma', budget);
      for (const [dx, dz] of [[1, 1], [-1, 1], [1, -1], [-1, -1]])
        for (let h = 1; h <= 2; h++) setBlockSafe(dim, { x: o.x + dx, y: o.y + h, z: o.z + dz }, p.wallBlock, budget);
      return { blocks: 26 };
    }
    default: {
      platform(dim, o, p, budget);
      return { blocks: 25 };
    }
  }
}
