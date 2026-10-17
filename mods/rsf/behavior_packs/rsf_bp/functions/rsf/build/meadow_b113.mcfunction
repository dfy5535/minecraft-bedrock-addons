# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2033/4224 | 主题内编号: b113/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·八角全采光生态温室 (meadow_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 spruce_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-3 ~3 slot.container 0 string 8
replaceitem block ~-2 ~-3 ~3 slot.container 1 gunpowder 7
replaceitem block ~-2 ~-3 ~3 slot.container 2 leather 10
replaceitem block ~-2 ~-3 ~3 slot.container 3 emerald 7
replaceitem block ~-2 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~-2 ~-3 ~3 slot.container 5 bone 15
replaceitem block ~-2 ~-3 ~3 slot.container 9 coal 16
replaceitem block ~-2 ~-3 ~3 slot.container 10 saddle 1
replaceitem block ~-2 ~-3 ~3 slot.container 11 golden_apple 7
replaceitem block ~-2 ~-3 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~-2 ~-3 ~3 slot.container 13 lantern 5
replaceitem block ~-2 ~-3 ~3 slot.container 14 cooked_mutton 12
loot insert ~-2 ~-3 ~3 loot "rsf/meadow"
loot insert ~-2 ~-3 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 stripped_spruce_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 stripped_spruce_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 stripped_spruce_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 stripped_spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 spruce_planks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 spruce_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~6 ~0 ~0 ~6 ~7 ~2 calcite []
setblock ~6 ~8 ~1 emerald_block []
setblock ~6 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 11
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 18
replaceitem block ~3 ~1 ~4 slot.container 2 string 11
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 4 leather 13
replaceitem block ~3 ~1 ~4 slot.container 5 emerald 10
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_mutton 14
replaceitem block ~3 ~1 ~4 slot.container 11 bread 15
replaceitem block ~3 ~1 ~4 slot.container 12 honey_bottle 9
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 7
loot insert ~3 ~1 ~4 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
