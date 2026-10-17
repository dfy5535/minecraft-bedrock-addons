# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2215/4224 | 主题内编号: b039/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·永恒圣火图腾方尖塔 (frozen_peaks_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 9x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone [] replace water
fill ~-4 ~1 ~-5 ~4 ~11 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 snow []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 cobblestone []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 string 8
replaceitem block ~1 ~-3 ~2 slot.container 1 gunpowder 9
replaceitem block ~1 ~-3 ~2 slot.container 2 goat_horn 3
replaceitem block ~1 ~-3 ~2 slot.container 3 leather 9
replaceitem block ~1 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~1 ~-3 ~2 slot.container 5 bone 17
replaceitem block ~1 ~-3 ~2 slot.container 9 iron_ingot 10
replaceitem block ~1 ~-3 ~2 slot.container 10 coal 19
replaceitem block ~1 ~-3 ~2 slot.container 11 cooked_mutton 12
replaceitem block ~1 ~-3 ~2 slot.container 12 golden_apple 7
replaceitem block ~1 ~-3 ~2 slot.container 13 leather_boots 1
replaceitem block ~1 ~-3 ~2 slot.container 14 iron_pickaxe 1
loot insert ~1 ~-3 ~2 loot "rsf/frozen_peaks"
loot insert ~1 ~-3 ~2 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~9 ~4 cobblestone []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 spruce_log []
fill ~3 ~1 ~4 ~3 ~9 ~4 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 spruce_fence []
setblock ~3 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 spruce_log []
setblock ~0 ~4 ~-6 emerald_block []
setblock ~0 ~5 ~-6 torch []
fill ~0 ~0 ~6 ~0 ~3 ~6 spruce_log []
setblock ~0 ~4 ~6 emerald_block []
setblock ~0 ~5 ~6 torch []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 spruce_log []
setblock ~-5 ~4 ~0 emerald_block []
setblock ~-5 ~5 ~0 torch []
fill ~5 ~0 ~0 ~5 ~3 ~0 spruce_log []
setblock ~5 ~4 ~0 emerald_block []
setblock ~5 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 4x5x4) ---
fill ~-4 ~0 ~-1 ~-4 ~7 ~-1 deepslate_bricks []
setblock ~-4 ~8 ~-1 packed_ice []
setblock ~-4 ~9 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 1 bone 12
replaceitem block ~2 ~1 ~3 slot.container 2 arrow 21
replaceitem block ~2 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 4 string 11
replaceitem block ~2 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 9 leather_boots 1
replaceitem block ~2 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 11 crossbow 1
replaceitem block ~2 ~1 ~3 slot.container 12 campfire 8
replaceitem block ~2 ~1 ~3 slot.container 13 lantern 4
replaceitem block ~2 ~1 ~3 slot.container 14 emerald 7
loot insert ~2 ~1 ~3 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
