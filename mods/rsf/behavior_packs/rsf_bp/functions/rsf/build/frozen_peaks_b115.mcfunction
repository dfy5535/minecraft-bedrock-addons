# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2291/4224 | 主题内编号: b115/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·阶梯立体生态种植台 (frozen_peaks_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 snow []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 goat_horn 3
replaceitem block ~-3 ~-3 ~4 slot.container 1 leather 9
replaceitem block ~-3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~4 slot.container 3 bone 17
replaceitem block ~-3 ~-3 ~4 slot.container 4 arrow 26
replaceitem block ~-3 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-3 ~-3 ~4 slot.container 9 lantern 7
replaceitem block ~-3 ~-3 ~4 slot.container 10 emerald 10
replaceitem block ~-3 ~-3 ~4 slot.container 11 iron_ingot 13
replaceitem block ~-3 ~-3 ~4 slot.container 12 coal 22
replaceitem block ~-3 ~-3 ~4 slot.container 13 cooked_mutton 8
replaceitem block ~-3 ~-3 ~4 slot.container 14 golden_apple 3
loot insert ~-3 ~-3 ~4 loot "rsf/frozen_peaks"
loot insert ~-3 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 cobblestone []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 stone_bricks []
fill ~-3 ~5 ~-4 ~3 ~5 ~4 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-6 ~-5 ~7 ~-6 spruce_log []
setblock ~-5 ~8 ~-6 torch []
fill ~-5 ~5 ~6 ~-5 ~7 ~6 spruce_log []
setblock ~-5 ~8 ~6 torch []
fill ~5 ~5 ~-6 ~5 ~7 ~-6 spruce_log []
setblock ~5 ~8 ~-6 torch []
fill ~5 ~5 ~6 ~5 ~7 ~6 spruce_log []
setblock ~5 ~8 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 deepslate_bricks []
setblock ~-6 ~9 ~-2 packed_ice []
setblock ~-6 ~10 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 goat_horn 6
replaceitem block ~4 ~1 ~5 slot.container 3 leather 12
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 bone 12
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_mutton 10
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 11 leather_boots 1
replaceitem block ~4 ~1 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 13 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 14 campfire 2
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
