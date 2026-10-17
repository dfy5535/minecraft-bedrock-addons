# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0385/4224 | 主题内编号: b001/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·三层阶梯圣火祭坛 (roofed_forest_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 dark_oak_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 string 12
replaceitem block ~2 ~-3 ~3 slot.container 1 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 2 totem_of_undying 5
replaceitem block ~2 ~-3 ~3 slot.container 3 emerald 11
replaceitem block ~2 ~-3 ~3 slot.container 4 rotten_flesh 18
replaceitem block ~2 ~-3 ~3 slot.container 5 bone 17
replaceitem block ~2 ~-3 ~3 slot.container 9 lantern 7
replaceitem block ~2 ~-3 ~3 slot.container 10 dark_oak_log 20
replaceitem block ~2 ~-3 ~3 slot.container 11 golden_apple 7
replaceitem block ~2 ~-3 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~2 ~-3 ~3 slot.container 13 iron_ingot 8
replaceitem block ~2 ~-3 ~3 slot.container 14 diamond 3
loot insert ~2 ~-3 ~3 loot "rsf/roofed_forest"
loot insert ~2 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 cobblestone []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 dark_oak_planks []
fill ~-2 ~5 ~-3 ~2 ~6 ~3 dark_oak_planks []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~6 ~-5 ~-4 ~8 ~-5 dark_oak_log []
setblock ~-4 ~9 ~-5 torch []
fill ~-4 ~6 ~5 ~-4 ~8 ~5 dark_oak_log []
setblock ~-4 ~9 ~5 torch []
fill ~4 ~6 ~-5 ~4 ~8 ~-5 dark_oak_log []
setblock ~4 ~9 ~-5 torch []
fill ~4 ~6 ~5 ~4 ~8 ~5 dark_oak_log []
setblock ~4 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 dark_oak_log []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 dark_oak_log []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 dark_oak_log []
fill ~5 ~0 ~2 ~5 ~7 ~2 dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-5 ~0 ~-2 ~-6 ~3 ~0 iron_bars []
fill ~-5 ~4 ~-2 ~-6 ~4 ~0 dark_oak_slab []
setblock ~-6 ~5 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 bookshelf []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 1 bone 12
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 4 string 15
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 9 experience_bottle 4
replaceitem block ~3 ~1 ~4 slot.container 10 iron_chestplate 1
replaceitem block ~3 ~1 ~4 slot.container 11 crossbow 1
replaceitem block ~3 ~1 ~4 slot.container 12 arrow 27
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 8
replaceitem block ~3 ~1 ~4 slot.container 14 dark_oak_log 21
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
