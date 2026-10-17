# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1986/4224 | 主题内编号: b066/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·崩塌角楼古堡残垣 (meadow_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 lantern []
setblock ~3 ~-4 ~-4 lantern []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 gunpowder 7
replaceitem block ~3 ~-2 ~4 slot.container 1 leather 10
replaceitem block ~3 ~-2 ~4 slot.container 2 emerald 7
replaceitem block ~3 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 4 bone 15
replaceitem block ~3 ~-2 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~-2 ~4 slot.container 9 cooked_mutton 10
replaceitem block ~3 ~-2 ~4 slot.container 10 bread 11
replaceitem block ~3 ~-2 ~4 slot.container 11 honey_bottle 5
replaceitem block ~3 ~-2 ~4 slot.container 12 emerald 9
replaceitem block ~3 ~-2 ~4 slot.container 13 iron_ingot 10
replaceitem block ~3 ~-2 ~4 slot.container 14 coal 17
loot insert ~3 ~-2 ~4 loot "rsf/meadow"
loot insert ~3 ~-2 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 spruce_planks []
setblock ~-5 ~10 ~-6 lantern []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 spruce_planks []
setblock ~-5 ~10 ~5 lantern []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 spruce_planks []
setblock ~4 ~10 ~-6 lantern []
fill ~4 ~1 ~5 ~5 ~9 ~6 spruce_planks []
setblock ~4 ~10 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 spruce_log []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 spruce_log []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 spruce_log []
fill ~6 ~0 ~2 ~6 ~6 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~-2 ~7 ~5 ~0 calcite []
setblock ~7 ~6 ~-1 emerald_block []
setblock ~7 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 1 string 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 3 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 4 emerald 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 10
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_mutton 10
replaceitem block ~-4 ~1 ~5 slot.container 12 bread 11
replaceitem block ~-4 ~1 ~5 slot.container 13 honey_bottle 5
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 9
loot insert ~-4 ~1 ~5 loot "rsf/meadow"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 leather 8
replaceitem block ~4 ~1 ~5 slot.container 2 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 bone 13
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 14
replaceitem block ~4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_mutton 15
replaceitem block ~4 ~1 ~5 slot.container 12 bread 16
replaceitem block ~4 ~1 ~5 slot.container 13 honey_bottle 3
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 7
loot insert ~4 ~1 ~5 loot "rsf/meadow"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
