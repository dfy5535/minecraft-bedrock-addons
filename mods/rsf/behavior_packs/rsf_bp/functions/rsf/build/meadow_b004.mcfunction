# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1924/4224 | 主题内编号: b004/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子火盆高台神坛 (meadow_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 calcite []
fill ~2 ~1 ~-5 ~6 ~8 ~5 calcite []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 torch []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 torch []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 torch []
fill ~6 ~7 ~5 ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~1 ~8 ~3 ~3 calcite []
setblock ~8 ~4 ~2 emerald_block []
setblock ~8 ~5 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-5 ~1 ~4 slot.container 2 emerald 10
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 9 honey_bottle 9
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 12 coal 14
replaceitem block ~-5 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~4 loot "rsf/meadow"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 emerald 5
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 bone 13
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 5 string 14
replaceitem block ~5 ~1 ~4 slot.container 9 honey_bottle 7
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 11
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 12 coal 12
replaceitem block ~5 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~4 loot "rsf/meadow"
loot insert ~5 ~1 ~4 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
