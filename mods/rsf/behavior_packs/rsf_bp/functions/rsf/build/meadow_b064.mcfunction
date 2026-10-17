# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1984/4224 | 主题内编号: b064/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·U型冥庭守墓人陵园 (meadow_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 arrow 23
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 7
replaceitem block ~0 ~-3 ~-4 slot.container 3 leather 10
replaceitem block ~0 ~-3 ~-4 slot.container 4 emerald 7
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 lantern 4
replaceitem block ~0 ~-3 ~-4 slot.container 11 cooked_mutton 11
replaceitem block ~0 ~-3 ~-4 slot.container 12 bread 12
replaceitem block ~0 ~-3 ~-4 slot.container 13 honey_bottle 6
replaceitem block ~0 ~-3 ~-4 slot.container 14 emerald 10
loot insert ~0 ~-3 ~-4 loot "rsf/meadow"
loot insert ~0 ~-3 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 calcite []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 stone_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 spruce_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~7 ~0 ~-4 ~7 ~3 ~-2 calcite []
setblock ~7 ~4 ~-3 emerald_block []
setblock ~7 ~5 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 3 string 11
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 9 honey_bottle 6
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 10
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 12 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 2
loot insert ~-4 ~1 ~5 loot "rsf/meadow"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 3 leather 8
replaceitem block ~4 ~1 ~5 slot.container 4 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 honey_bottle 4
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 12 coal 16
replaceitem block ~4 ~1 ~5 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~4 ~1 ~5 loot "rsf/meadow"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
