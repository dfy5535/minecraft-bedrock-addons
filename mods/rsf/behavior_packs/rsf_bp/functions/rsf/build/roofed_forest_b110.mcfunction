# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0494/4224 | 主题内编号: b110/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子附魔与酿造实验楼 (roofed_forest_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_oak_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 1 spider_eye 6
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 3 string 12
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 5 totem_of_undying 5
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_chestplate 1
replaceitem block ~4 ~-2 ~3 slot.container 10 crossbow 1
replaceitem block ~4 ~-2 ~3 slot.container 11 arrow 26
replaceitem block ~4 ~-2 ~3 slot.container 12 lantern 7
replaceitem block ~4 ~-2 ~3 slot.container 13 dark_oak_log 20
replaceitem block ~4 ~-2 ~3 slot.container 14 golden_apple 7
loot insert ~4 ~-2 ~3 loot "rsf/roofed_forest"
loot insert ~4 ~-2 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 dark_oak_planks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 dark_oak_planks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 cobblestone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 dark_oak_slab []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 mossy_stone_bricks []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 stone_brick_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 cracked_stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-7 ~0 ~-3 ~-8 ~7 ~-1 iron_bars []
fill ~-7 ~8 ~-3 ~-8 ~8 ~-1 dark_oak_slab []
setblock ~-8 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 1 totem_of_undying 8
replaceitem block ~-5 ~1 ~4 slot.container 2 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 13
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 8
replaceitem block ~-5 ~1 ~4 slot.container 12 experience_bottle 4
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~-5 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~4 loot "rsf/roofed_forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 2 bone 15
replaceitem block ~5 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 10
replaceitem block ~5 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~5 ~1 ~4 slot.container 11 diamond 6
replaceitem block ~5 ~1 ~4 slot.container 12 experience_bottle 9
replaceitem block ~5 ~1 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~5 ~1 ~4 slot.container 14 crossbow 1
loot insert ~5 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~4 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0
