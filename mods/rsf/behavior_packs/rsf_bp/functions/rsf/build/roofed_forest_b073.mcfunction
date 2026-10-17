# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0457/4224 | 主题内编号: b073/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·八方图腾圣火石阵 (roofed_forest_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 dark_oak_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 string 12
replaceitem block ~3 ~-3 ~4 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 2 totem_of_undying 5
replaceitem block ~3 ~-3 ~4 slot.container 3 emerald 11
replaceitem block ~3 ~-3 ~4 slot.container 4 rotten_flesh 18
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 9 experience_bottle 9
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_chestplate 1
replaceitem block ~3 ~-3 ~4 slot.container 11 crossbow 1
replaceitem block ~3 ~-3 ~4 slot.container 12 arrow 25
replaceitem block ~3 ~-3 ~4 slot.container 13 lantern 6
replaceitem block ~3 ~-3 ~4 slot.container 14 dark_oak_log 19
loot insert ~3 ~-3 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 air []
fill ~5 ~1 ~6 ~5 ~8 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 dark_oak_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 dark_oak_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 dark_oak_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 dark_oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 dark_oak_log []
setblock ~-5 ~10 ~-6 torch []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 dark_oak_log []
setblock ~-5 ~10 ~6 torch []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 dark_oak_log []
setblock ~5 ~10 ~-6 torch []
fill ~5 ~7 ~6 ~5 ~9 ~6 dark_oak_log []
setblock ~5 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 cracked_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~-6 ~0 ~-1 ~-7 ~5 ~1 iron_bars []
fill ~-6 ~6 ~-1 ~-7 ~6 ~1 dark_oak_slab []
setblock ~-7 ~7 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 1 bone 12
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 15
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 7
replaceitem block ~4 ~1 ~5 slot.container 13 experience_bottle 10
replaceitem block ~4 ~1 ~5 slot.container 14 iron_chestplate 1
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
