# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0389/4224 | 主题内编号: b005/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·下沉圣泉秘宝祭坛 (roofed_forest_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 dark_oak_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 totem_of_undying 5
replaceitem block ~-2 ~-4 ~3 slot.container 1 emerald 11
replaceitem block ~-2 ~-4 ~3 slot.container 2 rotten_flesh 18
replaceitem block ~-2 ~-4 ~3 slot.container 3 bone 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 spider_eye 6
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 9
replaceitem block ~-2 ~-4 ~3 slot.container 9 iron_ingot 13
replaceitem block ~-2 ~-4 ~3 slot.container 10 diamond 8
replaceitem block ~-2 ~-4 ~3 slot.container 11 experience_bottle 4
replaceitem block ~-2 ~-4 ~3 slot.container 12 iron_chestplate 1
replaceitem block ~-2 ~-4 ~3 slot.container 13 crossbow 1
replaceitem block ~-2 ~-4 ~3 slot.container 14 arrow 27
loot insert ~-2 ~-4 ~3 loot "rsf/roofed_forest"
loot insert ~-2 ~-4 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 dark_oak_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 dark_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~5 ~-5 ~-4 ~7 ~-5 dark_oak_log []
setblock ~-4 ~8 ~-5 torch []
fill ~-4 ~5 ~5 ~-4 ~7 ~5 dark_oak_log []
setblock ~-4 ~8 ~5 torch []
fill ~4 ~5 ~-5 ~4 ~7 ~-5 dark_oak_log []
setblock ~4 ~8 ~-5 torch []
fill ~4 ~5 ~5 ~4 ~7 ~5 dark_oak_log []
setblock ~4 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 dark_oak_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-5 ~0 ~-3 ~-6 ~7 ~-1 iron_bars []
fill ~-5 ~8 ~-3 ~-6 ~8 ~-1 dark_oak_slab []
setblock ~-6 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 bookshelf []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 15
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 2 totem_of_undying 8
replaceitem block ~3 ~1 ~4 slot.container 3 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 5 bone 12
replaceitem block ~3 ~1 ~4 slot.container 9 crossbow 1
replaceitem block ~3 ~1 ~4 slot.container 10 arrow 29
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~3 ~1 ~4 slot.container 12 dark_oak_log 16
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-4 ~0
