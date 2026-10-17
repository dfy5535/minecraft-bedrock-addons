# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0418/4224 | 主题内编号: b034/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子对称铭文方尖碑 (roofed_forest_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 dark_oak_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 dark_oak_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~11 ~4 dark_oak_planks []
fill ~2 ~1 ~-4 ~5 ~11 ~4 dark_oak_planks []
fill ~-4 ~1 ~-3 ~-3 ~10 ~3 air []
fill ~3 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 cobblestone []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 cobblestone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 dark_oak_planks []
fill ~0 ~16 ~0 ~0 ~16 ~0 chiseled_stone_bricks []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 cobblestone []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-6 ~0 ~-1 ~-7 ~6 ~1 iron_bars []
fill ~-6 ~7 ~-1 ~-7 ~7 ~1 dark_oak_slab []
setblock ~-7 ~8 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 3 string 15
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~-4 ~1 ~3 slot.container 5 totem_of_undying 8
replaceitem block ~-4 ~1 ~3 slot.container 9 diamond 7
replaceitem block ~-4 ~1 ~3 slot.container 10 experience_bottle 10
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_chestplate 1
replaceitem block ~-4 ~1 ~3 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~3 slot.container 13 arrow 26
replaceitem block ~-4 ~1 ~3 slot.container 14 lantern 7
loot insert ~-4 ~1 ~3 loot "rsf/roofed_forest"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~3 slot.container 1 string 10
replaceitem block ~4 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~4 ~1 ~3 slot.container 3 totem_of_undying 3
replaceitem block ~4 ~1 ~3 slot.container 4 emerald 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~3 slot.container 9 diamond 5
replaceitem block ~4 ~1 ~3 slot.container 10 experience_bottle 8
replaceitem block ~4 ~1 ~3 slot.container 11 iron_chestplate 1
replaceitem block ~4 ~1 ~3 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~3 slot.container 13 arrow 24
replaceitem block ~4 ~1 ~3 slot.container 14 lantern 5
loot insert ~4 ~1 ~3 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~3 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
