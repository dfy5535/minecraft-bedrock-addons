# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2008/4224 | 主题内编号: b088/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·矿车铁轨转运仓库 (meadow_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 calcite [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 calcite [] replace water
fill ~-5 ~1 ~-8 ~5 ~8 ~8 air []
fill ~-5 ~0 ~-8 ~5 ~0 ~8 stone_brick_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 mossy_cobblestone []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 mossy_stone_bricks []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 gunpowder 7
replaceitem block ~2 ~-2 ~5 slot.container 1 leather 10
replaceitem block ~2 ~-2 ~5 slot.container 2 emerald 7
replaceitem block ~2 ~-2 ~5 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~5 slot.container 4 bone 15
replaceitem block ~2 ~-2 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~2 ~-2 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~-2 ~5 slot.container 10 lantern 7
replaceitem block ~2 ~-2 ~5 slot.container 11 cooked_mutton 14
replaceitem block ~2 ~-2 ~5 slot.container 12 bread 15
replaceitem block ~2 ~-2 ~5 slot.container 13 honey_bottle 9
replaceitem block ~2 ~-2 ~5 slot.container 14 emerald 6
loot insert ~2 ~-2 ~5 loot "rsf/meadow"
loot insert ~2 ~-2 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~6 ~7 calcite []
fill ~-3 ~1 ~-6 ~3 ~5 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 spruce_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 spruce_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 spruce_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 spruce_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-8 ~-5 ~7 ~8 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-8 ~5 ~7 ~8 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-7 ~-4 ~8 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-7 ~4 ~8 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-7 ~3 ~8 ~7 stone_brick_slab []
fill ~0 ~9 ~-8 ~0 ~9 ~8 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x10x6) ---
fill ~6 ~0 ~-4 ~6 ~7 ~-2 calcite []
setblock ~6 ~8 ~-3 emerald_block []
setblock ~6 ~9 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 bone 10
replaceitem block ~-3 ~1 ~6 slot.container 1 rotten_flesh 11
replaceitem block ~-3 ~1 ~6 slot.container 2 arrow 18
replaceitem block ~-3 ~1 ~6 slot.container 3 string 11
replaceitem block ~-3 ~1 ~6 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~6 slot.container 5 leather 13
replaceitem block ~-3 ~1 ~6 slot.container 9 iron_ingot 12
replaceitem block ~-3 ~1 ~6 slot.container 10 coal 12
replaceitem block ~-3 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~-3 ~1 ~6 slot.container 12 golden_apple 3
replaceitem block ~-3 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~-3 ~1 ~6 slot.container 14 lantern 8
loot insert ~-3 ~1 ~6 loot "rsf/meadow"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~6 slot.container 1 string 14
replaceitem block ~3 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~6 slot.container 3 leather 8
replaceitem block ~3 ~1 ~6 slot.container 4 emerald 5
replaceitem block ~3 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~6 slot.container 9 iron_ingot 10
replaceitem block ~3 ~1 ~6 slot.container 10 coal 17
replaceitem block ~3 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~3 ~1 ~6 slot.container 12 golden_apple 1
replaceitem block ~3 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~6 slot.container 14 lantern 6
loot insert ~3 ~1 ~6 loot "rsf/meadow"
loot insert ~3 ~1 ~6 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
