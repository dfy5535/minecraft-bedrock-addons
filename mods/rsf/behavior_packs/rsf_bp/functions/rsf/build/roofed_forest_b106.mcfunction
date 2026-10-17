# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0490/4224 | 主题内编号: b106/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·琉璃穹顶魔药炼金室 (roofed_forest_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_oak_planks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_oak_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 torch []
setblock ~3 ~-6 ~-4 torch []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 spider_eye 6
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 9
replaceitem block ~3 ~-4 ~4 slot.container 2 string 12
replaceitem block ~3 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 4 totem_of_undying 5
replaceitem block ~3 ~-4 ~4 slot.container 5 emerald 11
replaceitem block ~3 ~-4 ~4 slot.container 9 golden_apple 5
replaceitem block ~3 ~-4 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~-4 ~4 slot.container 11 iron_ingot 13
replaceitem block ~3 ~-4 ~4 slot.container 12 diamond 8
replaceitem block ~3 ~-4 ~4 slot.container 13 experience_bottle 4
replaceitem block ~3 ~-4 ~4 slot.container 14 iron_chestplate 1
loot insert ~3 ~-4 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~-4 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 dark_oak_planks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 cobblestone []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 dark_oak_log []
setblock ~-6 ~5 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 dark_oak_log []
setblock ~-6 ~5 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 dark_oak_log []
setblock ~6 ~5 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~4 ~7 dark_oak_log []
setblock ~6 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-5 ~0 ~-2 ~-6 ~3 ~0 iron_bars []
fill ~-5 ~4 ~-2 ~-6 ~4 ~0 dark_oak_slab []
setblock ~-6 ~5 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 chiseled_stone_bricks []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-3 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 3 string 15
replaceitem block ~-3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 5 totem_of_undying 8
replaceitem block ~-3 ~1 ~4 slot.container 9 dark_oak_log 16
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-3 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 13 diamond 6
replaceitem block ~-3 ~1 ~4 slot.container 14 experience_bottle 9
loot insert ~-3 ~1 ~4 loot "rsf/roofed_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 1 string 10
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 3 totem_of_undying 3
replaceitem block ~3 ~1 ~4 slot.container 4 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 9 dark_oak_log 21
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~3 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 13 diamond 4
replaceitem block ~3 ~1 ~4 slot.container 14 experience_bottle 7
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~1 ~4 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
