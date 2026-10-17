# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1999/4224 | 主题内编号: b079/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·四角结界守护柱阵 (meadow_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 calcite []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 string 8
replaceitem block ~3 ~-3 ~4 slot.container 1 gunpowder 7
replaceitem block ~3 ~-3 ~4 slot.container 2 leather 10
replaceitem block ~3 ~-3 ~4 slot.container 3 emerald 7
replaceitem block ~3 ~-3 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 15
replaceitem block ~3 ~-3 ~4 slot.container 9 bread 10
replaceitem block ~3 ~-3 ~4 slot.container 10 honey_bottle 4
replaceitem block ~3 ~-3 ~4 slot.container 11 emerald 8
replaceitem block ~3 ~-3 ~4 slot.container 12 iron_ingot 9
replaceitem block ~3 ~-3 ~4 slot.container 13 coal 16
replaceitem block ~3 ~-3 ~4 slot.container 14 saddle 1
loot insert ~3 ~-3 ~4 loot "rsf/meadow"
loot insert ~3 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 oak_planks []
setblock ~-5 ~10 ~-6 campfire []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 oak_planks []
setblock ~-5 ~10 ~5 campfire []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 oak_planks []
setblock ~4 ~10 ~-6 campfire []
fill ~4 ~1 ~5 ~5 ~9 ~6 oak_planks []
setblock ~4 ~10 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 oak_log []
setblock ~-5 ~10 ~-6 campfire []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 oak_log []
setblock ~-5 ~10 ~6 campfire []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 oak_log []
setblock ~5 ~10 ~-6 campfire []
fill ~5 ~7 ~6 ~5 ~9 ~6 oak_log []
setblock ~5 ~10 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~7 ~0 ~-1 ~7 ~3 ~1 calcite []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 4 string 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_mutton 10
replaceitem block ~4 ~1 ~5 slot.container 13 bread 11
replaceitem block ~4 ~1 ~5 slot.container 14 honey_bottle 5
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
