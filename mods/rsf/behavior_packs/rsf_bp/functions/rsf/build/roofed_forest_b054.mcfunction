# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0438/4224 | 主题内编号: b054/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·切石与伐木工匠棚屋 (roofed_forest_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 dark_oak_planks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 dark_oak_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 dark_oak_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~7 ~5 dark_oak_planks []
fill ~2 ~1 ~-5 ~5 ~7 ~5 dark_oak_planks []
fill ~-4 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 cobblestone []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 dark_oak_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 dark_oak_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 dark_oak_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 dark_oak_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 dark_oak_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 dark_oak_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 dark_oak_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 dark_oak_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 dark_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-6 ~0 ~1 ~-7 ~6 ~3 iron_bars []
fill ~-6 ~7 ~1 ~-7 ~7 ~3 dark_oak_slab []
setblock ~-7 ~8 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~-4 ~1 ~4 slot.container 1 totem_of_undying 8
replaceitem block ~-4 ~1 ~4 slot.container 2 emerald 6
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~4 slot.container 9 diamond 6
replaceitem block ~-4 ~1 ~4 slot.container 10 experience_bottle 9
replaceitem block ~-4 ~1 ~4 slot.container 11 iron_chestplate 1
replaceitem block ~-4 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~4 slot.container 13 arrow 25
replaceitem block ~-4 ~1 ~4 slot.container 14 lantern 6
loot insert ~-4 ~1 ~4 loot "rsf/roofed_forest"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 emerald 9
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~4 slot.container 2 bone 15
replaceitem block ~4 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~4 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 5 string 10
replaceitem block ~4 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~4 ~1 ~4 slot.container 10 experience_bottle 7
replaceitem block ~4 ~1 ~4 slot.container 11 iron_chestplate 1
replaceitem block ~4 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~4 slot.container 13 arrow 30
replaceitem block ~4 ~1 ~4 slot.container 14 lantern 4
loot insert ~4 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~4 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
