# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2020/4224 | 主题内编号: b100/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·半地下暗堡火力点 (meadow_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 calcite [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 calcite [] replace water
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 calcite []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 bone 15
replaceitem block ~2 ~-3 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~2 ~-3 ~3 slot.container 2 arrow 23
replaceitem block ~2 ~-3 ~3 slot.container 3 string 8
replaceitem block ~2 ~-3 ~3 slot.container 4 gunpowder 7
replaceitem block ~2 ~-3 ~3 slot.container 5 leather 10
replaceitem block ~2 ~-3 ~3 slot.container 9 saddle 1
replaceitem block ~2 ~-3 ~3 slot.container 10 golden_apple 5
replaceitem block ~2 ~-3 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~2 ~-3 ~3 slot.container 12 lantern 10
replaceitem block ~2 ~-3 ~3 slot.container 13 cooked_mutton 10
replaceitem block ~2 ~-3 ~3 slot.container 14 bread 11
loot insert ~2 ~-3 ~3 loot "rsf/meadow"
loot insert ~2 ~-3 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 calcite []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~5 ~-5 ~-4 ~7 ~-5 stripped_spruce_log []
setblock ~-4 ~8 ~-5 lantern []
fill ~-4 ~5 ~5 ~-4 ~7 ~5 stripped_spruce_log []
setblock ~-4 ~8 ~5 lantern []
fill ~4 ~5 ~-5 ~4 ~7 ~-5 stripped_spruce_log []
setblock ~4 ~8 ~-5 lantern []
fill ~4 ~5 ~5 ~4 ~7 ~5 stripped_spruce_log []
setblock ~4 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 spruce_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~6 ~0 ~-3 ~6 ~4 ~-1 calcite []
setblock ~6 ~5 ~-2 emerald_block []
setblock ~6 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 1 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 2 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_mutton 14
replaceitem block ~-3 ~1 ~4 slot.container 10 bread 15
replaceitem block ~-3 ~1 ~4 slot.container 11 honey_bottle 9
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 14 coal 14
loot insert ~-3 ~1 ~4 loot "rsf/meadow"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 bone 13
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_mutton 12
replaceitem block ~3 ~1 ~4 slot.container 10 bread 13
replaceitem block ~3 ~1 ~4 slot.container 11 honey_bottle 7
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 11
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 14 coal 12
loot insert ~3 ~1 ~4 loot "rsf/meadow"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
