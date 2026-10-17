# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1978/4224 | 主题内编号: b058/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·十字拱顶家族陵墓 (meadow_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 spruce_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 bone 15
replaceitem block ~-2 ~-4 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 arrow 23
replaceitem block ~-2 ~-4 ~3 slot.container 4 string 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 7
replaceitem block ~-2 ~-4 ~3 slot.container 9 bread 11
replaceitem block ~-2 ~-4 ~3 slot.container 10 honey_bottle 5
replaceitem block ~-2 ~-4 ~3 slot.container 11 emerald 9
replaceitem block ~-2 ~-4 ~3 slot.container 12 iron_ingot 10
replaceitem block ~-2 ~-4 ~3 slot.container 13 coal 17
replaceitem block ~-2 ~-4 ~3 slot.container 14 saddle 1
loot insert ~-2 ~-4 ~3 loot "rsf/meadow"
loot insert ~-2 ~-4 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 stone_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~4 ~-8 spruce_log []
setblock ~-7 ~5 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~4 ~8 spruce_log []
setblock ~-7 ~5 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~4 ~-8 spruce_log []
setblock ~7 ~5 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~4 ~8 spruce_log []
setblock ~7 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~7 ~0 ~-4 ~7 ~7 ~-2 calcite []
setblock ~7 ~8 ~-3 emerald_block []
setblock ~7 ~9 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 1 string 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 3 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 4 emerald 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 10 coal 17
replaceitem block ~-4 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 1
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 6
loot insert ~-4 ~1 ~5 loot "rsf/meadow"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 leather 8
replaceitem block ~4 ~1 ~5 slot.container 2 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 bone 13
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 14
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 10 coal 15
replaceitem block ~4 ~1 ~5 slot.container 11 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 4
loot insert ~4 ~1 ~5 loot "rsf/meadow"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
