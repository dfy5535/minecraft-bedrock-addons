# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0415/4224 | 主题内编号: b031/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·阶梯圣火烽火台 (roofed_forest_tower_ziggurat_fire)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 spider_eye 6
replaceitem block ~3 ~-3 ~4 slot.container 1 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 2 string 12
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 4 totem_of_undying 5
replaceitem block ~3 ~-3 ~4 slot.container 5 emerald 11
replaceitem block ~3 ~-3 ~4 slot.container 9 lantern 9
replaceitem block ~3 ~-3 ~4 slot.container 10 dark_oak_log 22
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_apple 2
replaceitem block ~3 ~-3 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~3 ~-3 ~4 slot.container 13 iron_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 14 diamond 5
loot insert ~3 ~-3 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~-3 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 mossy_stone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 dark_oak_planks []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 deepslate_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~9 ~-6 ~-5 ~11 ~-6 stripped_dark_oak_log []
setblock ~-5 ~12 ~-6 soul_lantern []
fill ~-5 ~9 ~6 ~-5 ~11 ~6 stripped_dark_oak_log []
setblock ~-5 ~12 ~6 soul_lantern []
fill ~5 ~9 ~-6 ~5 ~11 ~-6 stripped_dark_oak_log []
setblock ~5 ~12 ~-6 soul_lantern []
fill ~5 ~9 ~6 ~5 ~11 ~6 stripped_dark_oak_log []
setblock ~5 ~12 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 dark_oak_log []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 dark_oak_log []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 dark_oak_log []
fill ~5 ~0 ~2 ~5 ~7 ~2 dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-6 ~0 ~-1 ~-7 ~3 ~1 iron_bars []
fill ~-6 ~4 ~-1 ~-7 ~4 ~1 dark_oak_slab []
setblock ~-7 ~5 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-5 ~1 ~6 ~-1 ~2 ~6 barrel ["facing_direction"=2]
setblock ~0 ~1 ~6 crafting_table []
setblock ~0 ~1 ~0 bookshelf []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 1 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 experience_bottle 6
replaceitem block ~4 ~1 ~5 slot.container 10 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 12 arrow 29
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 14 dark_oak_log 16
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
