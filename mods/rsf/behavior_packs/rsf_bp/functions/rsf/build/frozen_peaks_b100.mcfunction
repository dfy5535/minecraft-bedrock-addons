# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2276/4224 | 主题内编号: b100/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·半地下暗堡火力点 (frozen_peaks_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 bone 17
replaceitem block ~2 ~-3 ~3 slot.container 1 arrow 26
replaceitem block ~2 ~-3 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 3 string 8
replaceitem block ~2 ~-3 ~3 slot.container 4 gunpowder 9
replaceitem block ~2 ~-3 ~3 slot.container 5 goat_horn 3
replaceitem block ~2 ~-3 ~3 slot.container 9 golden_apple 2
replaceitem block ~2 ~-3 ~3 slot.container 10 leather_boots 1
replaceitem block ~2 ~-3 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~2 ~-3 ~3 slot.container 12 crossbow 1
replaceitem block ~2 ~-3 ~3 slot.container 13 campfire 6
replaceitem block ~2 ~-3 ~3 slot.container 14 lantern 9
loot insert ~2 ~-3 ~3 loot "rsf/frozen_peaks"
loot insert ~2 ~-3 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 packed_ice []
fill ~0 ~1 ~-5 ~0 ~2 ~5 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~4 ~-5 ~4 ~4 ~5 packed_ice []
fill ~-4 ~5 ~-5 ~4 ~5 ~5 cobblestone_wall []
fill ~-3 ~5 ~-4 ~3 ~5 ~4 air []
setblock ~-4 ~5 ~-5 spruce_log []
setblock ~-4 ~6 ~-5 lantern []
setblock ~-4 ~5 ~5 spruce_log []
setblock ~-4 ~6 ~5 lantern []
setblock ~4 ~5 ~-5 spruce_log []
setblock ~4 ~6 ~-5 lantern []
setblock ~4 ~5 ~5 spruce_log []
setblock ~4 ~6 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~3 ~-8 spruce_log []
setblock ~-7 ~4 ~-8 campfire []
fill ~-7 ~0 ~8 ~-7 ~3 ~8 spruce_log []
setblock ~-7 ~4 ~8 campfire []
fill ~7 ~0 ~-8 ~7 ~3 ~-8 spruce_log []
setblock ~7 ~4 ~-8 campfire []
fill ~7 ~0 ~8 ~7 ~3 ~8 spruce_log []
setblock ~7 ~4 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x7x5) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 deepslate_bricks []
setblock ~-5 ~9 ~-2 packed_ice []
setblock ~-5 ~10 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~3 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 goat_horn 6
replaceitem block ~-3 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-3 ~1 ~4 slot.container 9 campfire 3
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~-3 ~1 ~4 slot.container 11 emerald 9
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 13 coal 21
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_mutton 14
loot insert ~-3 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 leather 7
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 24
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 campfire 8
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 4
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 13 coal 19
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_mutton 12
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-3 ~0
