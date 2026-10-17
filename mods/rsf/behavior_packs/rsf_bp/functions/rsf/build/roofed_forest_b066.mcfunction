# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0450/4224 | 主题内编号: b066/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·崩塌角楼古堡残垣 (roofed_forest_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 dark_oak_planks []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 lantern []
setblock ~3 ~-4 ~-4 lantern []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 gunpowder 9
replaceitem block ~3 ~-2 ~4 slot.container 1 string 12
replaceitem block ~3 ~-2 ~4 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 3 totem_of_undying 5
replaceitem block ~3 ~-2 ~4 slot.container 4 emerald 11
replaceitem block ~3 ~-2 ~4 slot.container 5 rotten_flesh 18
replaceitem block ~3 ~-2 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~3 ~-2 ~4 slot.container 10 iron_ingot 13
replaceitem block ~3 ~-2 ~4 slot.container 11 diamond 8
replaceitem block ~3 ~-2 ~4 slot.container 12 experience_bottle 4
replaceitem block ~3 ~-2 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~3 ~-2 ~4 slot.container 14 crossbow 1
loot insert ~3 ~-2 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~-2 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 dark_oak_planks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 cobblestone []
setblock ~-5 ~10 ~-6 lantern []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 cobblestone []
setblock ~-5 ~10 ~5 lantern []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 cobblestone []
setblock ~4 ~10 ~-6 lantern []
fill ~4 ~1 ~5 ~5 ~9 ~6 cobblestone []
setblock ~4 ~10 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 dark_oak_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 mossy_stone_bricks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-6 ~0 ~-2 ~-7 ~3 ~0 iron_bars []
fill ~-6 ~4 ~-2 ~-7 ~4 ~0 dark_oak_slab []
setblock ~-7 ~5 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 15
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 5 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 9 dark_oak_log 18
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 13 diamond 8
replaceitem block ~-4 ~1 ~5 slot.container 14 experience_bottle 4
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 3 totem_of_undying 3
replaceitem block ~4 ~1 ~5 slot.container 4 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 dark_oak_log 16
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 13 diamond 6
replaceitem block ~4 ~1 ~5 slot.container 14 experience_bottle 9
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
