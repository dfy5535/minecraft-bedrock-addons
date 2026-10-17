# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1921/4224 | 主题内编号: b001/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·三层阶梯圣火祭坛 (meadow_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 leather 10
replaceitem block ~2 ~-3 ~3 slot.container 1 emerald 7
replaceitem block ~2 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 3 bone 15
replaceitem block ~2 ~-3 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~2 ~-3 ~3 slot.container 5 arrow 23
replaceitem block ~2 ~-3 ~3 slot.container 9 golden_apple 7
replaceitem block ~2 ~-3 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~-3 ~3 slot.container 11 lantern 5
replaceitem block ~2 ~-3 ~3 slot.container 12 cooked_mutton 12
replaceitem block ~2 ~-3 ~3 slot.container 13 bread 13
replaceitem block ~2 ~-3 ~3 slot.container 14 honey_bottle 7
loot insert ~2 ~-3 ~3 loot "rsf/meadow"
loot insert ~2 ~-3 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mossy_stone_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 spruce_planks []
fill ~-2 ~5 ~-3 ~2 ~6 ~3 stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 oak_planks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 cobblestone []
fill ~0 ~13 ~0 ~0 ~13 ~0 hay_block []
setblock ~0 ~14 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 stripped_spruce_log []
setblock ~-6 ~5 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 stripped_spruce_log []
setblock ~-6 ~5 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 stripped_spruce_log []
setblock ~6 ~5 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~4 ~7 stripped_spruce_log []
setblock ~6 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~6 ~0 ~-2 ~6 ~5 ~0 calcite []
setblock ~6 ~6 ~-1 emerald_block []
setblock ~6 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 11
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 18
replaceitem block ~3 ~1 ~4 slot.container 2 string 11
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 4 leather 13
replaceitem block ~3 ~1 ~4 slot.container 5 emerald 10
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 11 coal 17
replaceitem block ~3 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 1
replaceitem block ~3 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~3 ~1 ~4 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
