# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1974/4224 | 主题内编号: b054/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·切石与伐木工匠棚屋 (meadow_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 hay_block []
setblock ~-3 ~-6 ~-4 campfire []
setblock ~3 ~-6 ~4 campfire []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 string 8
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~0 ~-4 ~4 slot.container 2 leather 10
replaceitem block ~0 ~-4 ~4 slot.container 3 emerald 7
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 bone 15
replaceitem block ~0 ~-4 ~4 slot.container 9 coal 15
replaceitem block ~0 ~-4 ~4 slot.container 10 saddle 1
replaceitem block ~0 ~-4 ~4 slot.container 11 golden_apple 6
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~4 slot.container 13 lantern 4
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_mutton 11
loot insert ~0 ~-4 ~4 loot "rsf/meadow"
loot insert ~0 ~-4 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~7 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~5 ~7 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 spruce_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 stone_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~1 ~7 ~3 ~3 calcite []
setblock ~7 ~4 ~2 emerald_block []
setblock ~7 ~5 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 emerald 10
replaceitem block ~-4 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-4 ~1 ~4 slot.container 5 string 11
replaceitem block ~-4 ~1 ~4 slot.container 9 honey_bottle 3
replaceitem block ~-4 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~-4 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 12 coal 15
replaceitem block ~-4 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~4 loot "rsf/meadow"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 13
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 14
replaceitem block ~4 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~4 slot.container 3 string 14
replaceitem block ~4 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 5 leather 8
replaceitem block ~4 ~1 ~4 slot.container 9 honey_bottle 8
replaceitem block ~4 ~1 ~4 slot.container 10 emerald 12
replaceitem block ~4 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~4 ~1 ~4 slot.container 12 coal 13
replaceitem block ~4 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~4 loot "rsf/meadow"
loot insert ~4 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
