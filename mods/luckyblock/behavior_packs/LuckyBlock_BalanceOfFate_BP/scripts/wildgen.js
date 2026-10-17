/**
 * wildgen.js —— 「遗落之地」脚本桥 + 探索兜底
 *
 * mcfunction 侧负责用 setblock 搭出遗迹，并在幸运方块的位置 summon 一个
 * `lucky:wild_marker` 并打上幸运值标签（指令能写标签，但写不了世界动态属性）。
 *
 * 本模块每 10 刻扫一次标记实体，把它换成真正的 `lucky:lucky_block`
 * 并写入对应幸运值 —— 这样自然生成的遗迹才真正接进本项目的幸运值体系。
 *
 * 自然生成的驱动器已改为 lg_* 框架（照抄实测通过的 RSF v1.0.0）。
 * 本模块只保留「标记 → 幸运方块」这一件事。
 */
import { world, system } from '@minecraft/server';
import { BLOCK_ID, clampLuck } from './config.js';
import { applyLuck } from './luck_storage.js';

/** 1.21.60 兼容：声明 @minecraft/server 1.17.0 后引擎按 v1 语义运行，
 *  v1 的 Entity.isValid 是「方法」而非 v2 的属性。 */
function isValidEntity(e) {
  if (!e) return false;
  try { const v = e.isValid; return typeof v === 'function' ? v.call(e) === true : v === true; } catch (_) { return false; }
}


/** 标记标签 → 幸运值 */
const LUCK_BY_TAG = {
  lucky_luck_n100: -100,
  lucky_luck_n75: -75,
  lucky_luck_n50: -50,
  lucky_luck_n25: -25,
  lucky_luck_p25: 25,
  lucky_luck_p50: 50,
  lucky_luck_p100: 100,
};

const DIMS = ['overworld', 'nether', 'the_end'];

/**
 * 标记 → 幸运方块 的转换循环（每 10 刻）
 *
 * ★ 这里必须**无条件替换**目标格，不能要求"目标格是空气"。
 *   原因：样板那一行的原始语义是 `setblock ~x ~y ~z kira:lucky_block []` —— **覆盖写**。
 *   早先要求"空气才转换"，结果 **地下结构（`_3_` 地牢）内嵌的幸运方块格本身埋在实心岩里**，
 *   转换被静默跳过、标记又被删掉 → 整座建筑一枚幸运方块都没有。
 *   真机证据：`fill … replace lucky:lucky_block` 探针 = 0 格，而同体积 `mossy_stone_bricks` = 49 格。
 */
export function startWildGenLoop() {
  system.runInterval(() => {
    let placed = 0, failed = 0, lastErr = null, replaced = 0;
    let neg = 0, pos = 0;
    const sample = [];
    // 分布诊断：按维度 / 按高度 / 主世界是否"头顶开阔"（地表判据）
    const byDim = { overworld: 0, nether: 0, the_end: 0 };
    let yMin = null, yMax = null, owOpenSky = 0, owBuried = 0;
    for (const dimId of DIMS) {
      let markers;
      try {
        markers = world.getDimension(dimId).getEntities({ type: 'lucky:wild_marker' });
      } catch (_) { continue; }

      for (const m of markers) {
        try {
          if (!isValidEntity(m)) continue;

          // 1) 从标签里读出幸运值（没有标签就当 -50 兜底，保持「自然生成偏负」的手感）
          let luck = -50;
          for (const t of m.getTags()) {
            if (LUCK_BY_TAG[t] !== undefined) { luck = LUCK_BY_TAG[t]; break; }
          }
          luck = clampLuck(luck);

          // 2) 就地换成真正的幸运方块（覆盖写，与样板 setblock 语义一致）
          const dim = m.dimension;
          const loc = m.location;
          const bp = { x: Math.floor(loc.x), y: Math.floor(loc.y), z: Math.floor(loc.z) };
          const block = dim.getBlock(bp);
          if (block && !block.isAir) replaced++;

          if (block) {
            dim.setBlockType(bp, BLOCK_ID);   // ⚠️ 签名是 (location, blockType)，写反会抛异常
            const after = dim.getBlock(bp);
            if (after && after.typeId === BLOCK_ID) {
              applyLuck(after, luck);
              placed++;
              if (luck < 0) neg++; else if (luck > 0) pos++;
              if (sample.length < 12) sample.push(luck);
              // 分布诊断
              byDim[dimId] = (byDim[dimId] ?? 0) + 1;
              if (yMin === null || bp.y < yMin) yMin = bp.y;
              if (yMax === null || bp.y > yMax) yMax = bp.y;
              if (dimId === 'overworld') {
                let open = false;
                try {
                  const a1 = dim.getBlock({ x: bp.x, y: Math.min(319, bp.y + 16), z: bp.z });
                  const a2 = dim.getBlock({ x: bp.x, y: Math.min(319, bp.y + 32), z: bp.z });
                  open = !!(a1 && a1.isAir && a2 && a2.isAir);
                } catch (_) {}
                if (open) owOpenSky++; else owBuried++;
              }
              try { dim.spawnParticle('lucky:charge_up_particle', { x: bp.x + 0.5, y: bp.y + 0.5, z: bp.z + 0.5 }); } catch (_) {}
            } else {
              failed++; lastErr = `setBlockType 未生效 @${bp.x},${bp.y},${bp.z}`;
            }
          } else {
            failed++; lastErr = `getBlock 返回空 @${bp.x},${bp.y},${bp.z}（区块未加载？）`;
          }

          // 3) 标记用完即删
          m.remove();
        } catch (e) { failed++; lastErr = e.message; try { m.remove(); } catch (__) {} }
      }
    }
    // 只在真的有动作时打日志（正常一局 73 枚/座，不会刷屏）
    if (placed || failed) {
      console.warn('[fate] WILD ' + JSON.stringify({ placed, failed, neg, pos, byDim, yRange: [yMin, yMax], owOpenSky, owBuried, sample, lastErr }));
    }
  }, 10);
}

/**
 * 探索兜底（脚本侧）：每 30 秒，在前方找一块合法地面补一个种子。
 * 这样玩家即使原地不动，也一定能遇到遗落之地。
 */
/** 供自检/测试使用：回执计数器名 */
export function autoSpawnReceipt() { return 'lucky_auto'; }
