# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0498/4224 | 主题内编号: b114/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双联拱顶植物培育馆 (roofed_forest_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 dark_oak_planks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 dark_oak_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 dark_oak_planks []
fill ~2 ~1 ~-5 ~6 ~7 ~5 dark_oak_planks []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 cobblestone []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 cobblestone []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_dark_oak_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_dark_oak_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_dark_oak_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_dark_oak_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-7 ~0 ~1 ~-8 ~6 ~3 iron_bars []
fill ~-7 ~7 ~1 ~-8 ~7 ~3 dark_oak_slab []
setblock ~-8 ~8 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 3 string 15
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 5 totem_of_undying 8
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 3
replaceitem block ~-5 ~1 ~4 slot.container 10 experience_bottle 6
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_chestplate 1
replaceitem block ~-5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 13 arrow 29
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 10
loot insert ~-5 ~1 ~4 loot "rsf/roofed_forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 1 string 10
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 3 totem_of_undying 3
replaceitem block ~5 ~1 ~4 slot.container 4 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 9 diamond 8
replaceitem block ~5 ~1 ~4 slot.container 10 experience_bottle 4
replaceitem block ~5 ~1 ~4 slot.container 11 iron_chestplate 1
replaceitem block ~5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~4 slot.container 13 arrow 27
replaceitem block ~5 ~1 ~4 slot.container 14 lantern 8
loot insert ~5 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~4 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
