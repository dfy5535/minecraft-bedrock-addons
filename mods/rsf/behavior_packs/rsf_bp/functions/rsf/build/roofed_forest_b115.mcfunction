# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0499/4224 | 主题内编号: b115/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·阶梯立体生态种植台 (roofed_forest_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 dark_oak_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 string 12
replaceitem block ~-3 ~-3 ~4 slot.container 1 ender_pearl 6
replaceitem block ~-3 ~-3 ~4 slot.container 2 totem_of_undying 5
replaceitem block ~-3 ~-3 ~4 slot.container 3 emerald 11
replaceitem block ~-3 ~-3 ~4 slot.container 4 rotten_flesh 18
replaceitem block ~-3 ~-3 ~4 slot.container 5 bone 17
replaceitem block ~-3 ~-3 ~4 slot.container 9 iron_ingot 11
replaceitem block ~-3 ~-3 ~4 slot.container 10 diamond 6
replaceitem block ~-3 ~-3 ~4 slot.container 11 experience_bottle 9
replaceitem block ~-3 ~-3 ~4 slot.container 12 iron_chestplate 1
replaceitem block ~-3 ~-3 ~4 slot.container 13 crossbow 1
replaceitem block ~-3 ~-3 ~4 slot.container 14 arrow 25
loot insert ~-3 ~-3 ~4 loot "rsf/roofed_forest"
loot insert ~-3 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 mossy_stone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 dark_oak_planks []
fill ~-3 ~5 ~-4 ~3 ~6 ~4 deepslate_bricks []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 dark_oak_planks []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 deepslate_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 bookshelf []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-6 ~0 ~-1 ~-7 ~7 ~1 iron_bars []
fill ~-6 ~8 ~-1 ~-7 ~8 ~1 dark_oak_slab []
setblock ~-7 ~9 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 15
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 4 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 5 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 9 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 10 arrow 27
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 12 dark_oak_log 21
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
