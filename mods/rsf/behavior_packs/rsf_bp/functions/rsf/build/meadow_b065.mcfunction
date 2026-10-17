# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1985/4224 | 主题内编号: b065/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·断柱露天古神庙废墟 (meadow_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 spruce_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 stone_bricks []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 leather 10
replaceitem block ~3 ~-3 ~5 slot.container 1 emerald 7
replaceitem block ~3 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~5 slot.container 3 bone 15
replaceitem block ~3 ~-3 ~5 slot.container 4 rotten_flesh 16
replaceitem block ~3 ~-3 ~5 slot.container 5 arrow 23
replaceitem block ~3 ~-3 ~5 slot.container 9 lantern 4
replaceitem block ~3 ~-3 ~5 slot.container 10 cooked_mutton 11
replaceitem block ~3 ~-3 ~5 slot.container 11 bread 12
replaceitem block ~3 ~-3 ~5 slot.container 12 honey_bottle 6
replaceitem block ~3 ~-3 ~5 slot.container 13 emerald 10
replaceitem block ~3 ~-3 ~5 slot.container 14 iron_ingot 11
loot insert ~3 ~-3 ~5 loot "rsf/meadow"
loot insert ~3 ~-3 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 spruce_planks []
fill ~-5 ~1 ~-7 ~-5 ~5 ~-7 stripped_spruce_log []
fill ~-5 ~1 ~7 ~-5 ~5 ~7 stripped_spruce_log []
fill ~-3 ~1 ~-7 ~-3 ~5 ~-7 stripped_spruce_log []
fill ~-3 ~1 ~7 ~-3 ~5 ~7 stripped_spruce_log []
fill ~-1 ~1 ~-7 ~-1 ~5 ~-7 stripped_spruce_log []
fill ~-1 ~1 ~7 ~-1 ~5 ~7 stripped_spruce_log []
fill ~1 ~1 ~-7 ~1 ~5 ~-7 stripped_spruce_log []
fill ~1 ~1 ~7 ~1 ~5 ~7 stripped_spruce_log []
fill ~3 ~1 ~-7 ~3 ~5 ~-7 stripped_spruce_log []
fill ~3 ~1 ~7 ~3 ~5 ~7 stripped_spruce_log []
fill ~5 ~1 ~-7 ~5 ~5 ~-7 stripped_spruce_log []
fill ~5 ~1 ~7 ~5 ~5 ~7 stripped_spruce_log []
fill ~-5 ~1 ~-5 ~-5 ~5 ~-5 stripped_spruce_log []
fill ~5 ~1 ~-5 ~5 ~5 ~-5 stripped_spruce_log []
fill ~-5 ~1 ~-3 ~-5 ~5 ~-3 stripped_spruce_log []
fill ~5 ~1 ~-3 ~5 ~5 ~-3 stripped_spruce_log []
fill ~-5 ~1 ~-1 ~-5 ~5 ~-1 stripped_spruce_log []
fill ~5 ~1 ~-1 ~5 ~5 ~-1 stripped_spruce_log []
fill ~-5 ~1 ~1 ~-5 ~5 ~1 stripped_spruce_log []
fill ~5 ~1 ~1 ~5 ~5 ~1 stripped_spruce_log []
fill ~-5 ~1 ~3 ~-5 ~5 ~3 stripped_spruce_log []
fill ~5 ~1 ~3 ~5 ~5 ~3 stripped_spruce_log []
fill ~-5 ~1 ~5 ~-5 ~5 ~5 stripped_spruce_log []
fill ~5 ~1 ~5 ~5 ~5 ~5 stripped_spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 spruce_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~4 ~-9 stripped_spruce_log []
setblock ~-7 ~5 ~-9 lantern []
fill ~-7 ~0 ~9 ~-7 ~4 ~9 stripped_spruce_log []
setblock ~-7 ~5 ~9 lantern []
fill ~7 ~0 ~-9 ~7 ~4 ~-9 stripped_spruce_log []
setblock ~7 ~5 ~-9 lantern []
fill ~7 ~0 ~9 ~7 ~4 ~9 stripped_spruce_log []
setblock ~7 ~5 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~7 ~0 ~1 ~7 ~4 ~3 calcite []
setblock ~7 ~5 ~2 emerald_block []
setblock ~7 ~6 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 rotten_flesh 11
replaceitem block ~4 ~1 ~6 slot.container 1 arrow 18
replaceitem block ~4 ~1 ~6 slot.container 2 string 11
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~6 slot.container 4 leather 13
replaceitem block ~4 ~1 ~6 slot.container 5 emerald 10
replaceitem block ~4 ~1 ~6 slot.container 9 coal 16
replaceitem block ~4 ~1 ~6 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~6 slot.container 11 golden_apple 7
replaceitem block ~4 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~6 slot.container 13 lantern 5
replaceitem block ~4 ~1 ~6 slot.container 14 cooked_mutton 12
loot insert ~4 ~1 ~6 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
