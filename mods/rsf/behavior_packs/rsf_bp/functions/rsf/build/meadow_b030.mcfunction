# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1950/4224 | 主题内编号: b030/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双坡顶驻军卫戍塔 (meadow_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 lantern []
setblock ~2 ~-4 ~-3 lantern []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 bone 15
replaceitem block ~2 ~-2 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~2 ~-2 ~3 slot.container 2 arrow 23
replaceitem block ~2 ~-2 ~3 slot.container 3 string 8
replaceitem block ~2 ~-2 ~3 slot.container 4 gunpowder 7
replaceitem block ~2 ~-2 ~3 slot.container 5 leather 10
replaceitem block ~2 ~-2 ~3 slot.container 9 honey_bottle 9
replaceitem block ~2 ~-2 ~3 slot.container 10 emerald 6
replaceitem block ~2 ~-2 ~3 slot.container 11 iron_ingot 7
replaceitem block ~2 ~-2 ~3 slot.container 12 coal 14
replaceitem block ~2 ~-2 ~3 slot.container 13 saddle 1
replaceitem block ~2 ~-2 ~3 slot.container 14 golden_apple 5
loot insert ~2 ~-2 ~3 loot "rsf/meadow"
loot insert ~2 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~9 ~5 stone_bricks []
fill ~-4 ~1 ~0 ~4 ~8 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~-1 ~8 ~4 air []
fill ~-1 ~1 ~1 ~3 ~7 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~10 ~-6 ~-5 ~10 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-6 ~5 ~10 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~11 ~-5 ~-4 ~11 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~11 ~-5 ~4 ~11 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~11 ~-5 ~3 ~11 ~5 stone_brick_slab []
fill ~0 ~12 ~-6 ~0 ~12 ~6 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~11 ~2 cobblestone []
fill ~5 ~1 ~-1 ~6 ~10 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~12 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~0 ~-3 ~6 ~4 ~-1 calcite []
setblock ~6 ~5 ~-2 emerald_block []
setblock ~6 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-3 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 5 string 11
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_mutton 14
replaceitem block ~-3 ~1 ~4 slot.container 10 bread 15
replaceitem block ~-3 ~1 ~4 slot.container 11 honey_bottle 9
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 14 coal 14
loot insert ~-3 ~1 ~4 loot "rsf/meadow"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 13
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 14
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 leather 8
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_mutton 12
replaceitem block ~3 ~1 ~4 slot.container 10 bread 13
replaceitem block ~3 ~1 ~4 slot.container 11 honey_bottle 7
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 11
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 14 coal 12
loot insert ~3 ~1 ~4 loot "rsf/meadow"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
