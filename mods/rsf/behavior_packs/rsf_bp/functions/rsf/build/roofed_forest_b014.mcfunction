# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0398/4224 | 主题内编号: b014/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·暗渠蓄水池秘境地牢 (roofed_forest_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 emerald 11
replaceitem block ~-3 ~-4 ~4 slot.container 1 rotten_flesh 18
replaceitem block ~-3 ~-4 ~4 slot.container 2 bone 17
replaceitem block ~-3 ~-4 ~4 slot.container 3 spider_eye 6
replaceitem block ~-3 ~-4 ~4 slot.container 4 gunpowder 9
replaceitem block ~-3 ~-4 ~4 slot.container 5 string 12
replaceitem block ~-3 ~-4 ~4 slot.container 9 dark_oak_log 16
replaceitem block ~-3 ~-4 ~4 slot.container 10 golden_apple 3
replaceitem block ~-3 ~-4 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~-3 ~-4 ~4 slot.container 12 iron_ingot 11
replaceitem block ~-3 ~-4 ~4 slot.container 13 diamond 6
replaceitem block ~-3 ~-4 ~4 slot.container 14 experience_bottle 9
loot insert ~-3 ~-4 ~4 loot "rsf/roofed_forest"
loot insert ~-3 ~-4 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 dark_oak_planks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 cracked_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 dark_oak_planks []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone_wall []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 stripped_dark_oak_log []
setblock ~-5 ~9 ~-6 soul_lantern []
setblock ~-5 ~8 ~6 stripped_dark_oak_log []
setblock ~-5 ~9 ~6 soul_lantern []
setblock ~5 ~8 ~-6 stripped_dark_oak_log []
setblock ~5 ~9 ~-6 soul_lantern []
setblock ~5 ~8 ~6 stripped_dark_oak_log []
setblock ~5 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 cobblestone []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-6 ~0 ~0 ~-7 ~6 ~2 iron_bars []
fill ~-6 ~7 ~0 ~-7 ~7 ~2 dark_oak_slab []
setblock ~-7 ~8 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 1 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 2 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 9 diamond 8
replaceitem block ~-4 ~1 ~5 slot.container 10 experience_bottle 4
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~-4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 13 arrow 27
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 8
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 10
replaceitem block ~4 ~1 ~5 slot.container 9 diamond 6
replaceitem block ~4 ~1 ~5 slot.container 10 experience_bottle 9
replaceitem block ~4 ~1 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 13 arrow 25
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 6
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
