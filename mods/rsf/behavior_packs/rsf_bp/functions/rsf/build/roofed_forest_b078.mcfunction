# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0462/4224 | 主题内编号: b078/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·下沉祭池图腾柱群 (roofed_forest_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 emerald 11
replaceitem block ~-3 ~-3 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~-3 ~-3 ~4 slot.container 2 bone 17
replaceitem block ~-3 ~-3 ~4 slot.container 3 spider_eye 6
replaceitem block ~-3 ~-3 ~4 slot.container 4 gunpowder 9
replaceitem block ~-3 ~-3 ~4 slot.container 5 string 12
replaceitem block ~-3 ~-3 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-3 ~-3 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-3 ~-3 ~4 slot.container 11 diamond 5
replaceitem block ~-3 ~-3 ~4 slot.container 12 experience_bottle 8
replaceitem block ~-3 ~-3 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~-3 ~-3 ~4 slot.container 14 crossbow 1
loot insert ~-3 ~-3 ~4 loot "rsf/roofed_forest"
loot insert ~-3 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 dark_oak_planks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 cobblestone []
fill ~0 ~1 ~-6 ~0 ~2 ~6 cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 dark_oak_log []
setblock ~-5 ~9 ~-6 lantern []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 dark_oak_log []
setblock ~-5 ~9 ~6 lantern []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 dark_oak_log []
setblock ~5 ~9 ~-6 lantern []
fill ~5 ~6 ~6 ~5 ~8 ~6 dark_oak_log []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dark_oak_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-6 ~0 ~-2 ~-7 ~5 ~0 iron_bars []
fill ~-6 ~6 ~-2 ~-7 ~6 ~0 dark_oak_slab []
setblock ~-7 ~7 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 1 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 2 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_chestplate 1
replaceitem block ~-4 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 11 arrow 26
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 7
replaceitem block ~-4 ~1 ~5 slot.container 13 dark_oak_log 20
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 11 arrow 24
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 5
replaceitem block ~4 ~1 ~5 slot.container 13 dark_oak_log 18
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
