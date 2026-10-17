/**
 * luck_interaction.js — 材料调律（文件 1 §二）
 *   手持材料右键：单次调律
 *   潜行 + 右键：整组快充（按需扣减，绝不多扣）
 *   空手右键：查看当前气运
 *   牛奶桶：归零并返还空桶
 *
 * 注：容器批量吸收（文件 1 §一.1）已删除 —— P0 实测引擎要求实验性功能。
 */
import { ItemStack, EquipmentSlot } from '@minecraft/server';
import { LUCK_MATERIALS, MIN_LUCK, MAX_LUCK, clampLuck, renderLuckBar } from './config.js';
import { getBlockLuck, applyLuck } from './luck_storage.js';

function heldItem(player) {
  try {
    const eq = player.getComponent('minecraft:equippable');
    return eq ? { eq, item: eq.getEquipment(EquipmentSlot.Mainhand) } : { eq: null, item: undefined };
  } catch (_) {
    return { eq: null, item: undefined };
  }
}

export function handleInteract(block, player, dimension) {
  const { eq, item } = heldItem(player);
  const luck = getBlockLuck(block);
  const center = { x: block.location.x + 0.5, y: block.location.y + 0.7, z: block.location.z + 0.5 };

  // 空手：只查看
  if (!item) {
    try {
      player.onScreenDisplay.setActionBar(`${renderLuckBar(luck)} §7| 建筑保护: ${block.permutation.getState('lucky:grief_safe') ? '§a开启' : '§c关闭'}`);
      dimension.playSound('chime.amethyst_block', center, { pitch: 1.0 + luck / 200, volume: 0.6 });
    } catch (_) {}
    return { action: 'inspect', luck };
  }

  const mat = LUCK_MATERIALS[item.typeId];
  if (!mat) {
    try {
      player.onScreenDisplay.setActionBar(`§7手持 钻石(+10)/绿宝石(+5)/腐肉(-5) 右键可调律 | ${renderLuckBar(luck)}`);
    } catch (_) {}
    return { action: 'hint', luck };
  }

  // 达限保护：不消耗材料
  if (!mat.reset) {
    if (mat.delta > 0 && luck >= MAX_LUCK) {
      try {
        player.onScreenDisplay.setActionBar('§d★ 幸运值已达上限 (+100)！无法继续增加 ★');
        dimension.playSound('note.bell', center, { pitch: 1.8 });
      } catch (_) {}
      return { action: 'capped', luck };
    }
    if (mat.delta < 0 && luck <= MIN_LUCK) {
      try {
        player.onScreenDisplay.setActionBar('§4☠ 幸运值已达底限 (-100)！无法继续扣减 ☠');
        dimension.playSound('note.bass', center, { pitch: 0.5 });
      } catch (_) {}
      return { action: 'capped', luck };
    }
  }

  // 计算消耗数量
  let consume = 1;
  let target = luck;
  if (mat.reset) {
    target = 0;
  } else if (player.isSneaking) {
    consume = 0;
    let avail = item.amount;
    while (avail > 0) {
      if (mat.delta > 0 && target >= MAX_LUCK) break;
      if (mat.delta < 0 && target <= MIN_LUCK) break;
      target = clampLuck(target + mat.delta);
      consume++;
      avail--;
    }
    if (consume === 0) consume = 1; // 兜底：至少消耗 1
  } else {
    target = clampLuck(luck + mat.delta);
  }

  const updated = applyLuck(block, target);
  const actualDelta = updated - luck;

  // 扣物品
  try {
    if (eq) {
      if (mat.reset) {
        eq.setEquipment(EquipmentSlot.Mainhand, new ItemStack('minecraft:bucket', 1));
      } else if (item.amount > consume) {
        item.amount -= consume;
        eq.setEquipment(EquipmentSlot.Mainhand, item);
      } else {
        eq.setEquipment(EquipmentSlot.Mainhand, undefined);
      }
    }
  } catch (_) {}

  // 反馈
  try {
    const pitch = Math.max(0.5, Math.min(2.0, 1.0 + updated / 160));
    dimension.playSound(mat.sound, center, { pitch, volume: 1.0 });
    dimension.spawnParticle(mat.particle, center);
    const deltaStr = mat.reset ? '归零' : actualDelta >= 0 ? `§a+${actualDelta}` : `§c${actualDelta}`;
    player.onScreenDisplay.setActionBar(`§6[${mat.label} ×${mat.reset ? 1 : consume} → ${deltaStr}§6] ${renderLuckBar(updated)}`);
  } catch (_) {}

  return { action: 'tune', luck: updated, delta: actualDelta, consumed: mat.reset ? 1 : consume, material: item.typeId };
}

/** 精准采集：构造带 Lore 的封存物品 */
export function makeSealedBlock(luck) {
  const stack = new ItemStack('lucky:lucky_block', 1);
  try {
    stack.setLore([
      `§r§6当前幸运值: ${luck >= 0 ? '+' + luck : luck} | ${luckTierName(luck)}`,
      '§r§7放置后自动继承该幸运值',
    ]);
  } catch (_) {}
  return stack;
}

function luckTierName(luck) {
  const names = ['§4Tier 0: 灾厄深渊 (-100 ~ -61)', '§cTier 1: 霉运锈蚀 (-60 ~ -21)', '§eTier 2: 混沌原初 (-20 ~ +20)', '§bTier 3: 璀璨星钻 (+21 ~ +60)', '§dTier 4: 神圣天启 (+61 ~ +100)'];
  const t = luck <= -61 ? 0 : luck <= -21 ? 1 : luck <= 20 ? 2 : luck <= 60 ? 3 : 4;
  return names[t];
}

/** 从 Lore 解析封存的幸运值 */
export function parseSealedLore(lore) {
  if (!lore || !lore.length) return null;
  const m = String(lore[0]).match(/幸运值:\s*([+-]?\d+)/);
  return m ? clampLuck(parseInt(m[1], 10)) : null;
}

/** 手持物是否为精准采集镐（用 EnchantmentTypes 语义，字符串亦可） */
export function hasSilkTouch(itemStack) {
  try {
    if (!itemStack) return false;
    const en = itemStack.getComponent('minecraft:enchantable');
    return en ? !!en.hasEnchantment('silk_touch') : false;
  } catch (_) {
    return false;
  }
}
