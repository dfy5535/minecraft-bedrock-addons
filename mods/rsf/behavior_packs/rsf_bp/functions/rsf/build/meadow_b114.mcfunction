# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2034/4224 | 主题内编号: b114/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双联拱顶植物培育馆 (meadow_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 spruce_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 spruce_planks []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~1 ~8 ~3 ~3 calcite []
setblock ~8 ~4 ~2 emerald_block []
setblock ~8 ~5 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 honeycomb_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 18
replaceitem block ~-5 ~1 ~4 slot.container 1 string 11
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~4 slot.container 4 emerald 10
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 9 honey_bottle 7
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 11
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 12 coal 12
replaceitem block ~-5 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~-5 ~1 ~4 loot "rsf/meadow"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~4 slot.container 1 leather 8
replaceitem block ~5 ~1 ~4 slot.container 2 emerald 5
replaceitem block ~5 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 4 bone 13
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 14
replaceitem block ~5 ~1 ~4 slot.container 9 honey_bottle 5
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 12 coal 17
replaceitem block ~5 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 1
loot insert ~5 ~1 ~4 loot "rsf/meadow"
loot insert ~5 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
