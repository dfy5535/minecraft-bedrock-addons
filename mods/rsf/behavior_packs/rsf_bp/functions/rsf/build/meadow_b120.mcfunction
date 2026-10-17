# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2040/4224 | 主题内编号: b120/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·引水渠跨桥水培温室 (meadow_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 calcite [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 calcite [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 stone_bricks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~3 slot.container 0 arrow 23
replaceitem block ~-3 ~-2 ~3 slot.container 1 string 8
replaceitem block ~-3 ~-2 ~3 slot.container 2 gunpowder 7
replaceitem block ~-3 ~-2 ~3 slot.container 3 leather 10
replaceitem block ~-3 ~-2 ~3 slot.container 4 emerald 7
replaceitem block ~-3 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~-3 ~-2 ~3 slot.container 9 saddle 1
replaceitem block ~-3 ~-2 ~3 slot.container 10 golden_apple 6
replaceitem block ~-3 ~-2 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-3 ~-2 ~3 slot.container 12 lantern 4
replaceitem block ~-3 ~-2 ~3 slot.container 13 cooked_mutton 11
replaceitem block ~-3 ~-2 ~3 slot.container 14 bread 12
loot insert ~-3 ~-2 ~3 loot "rsf/meadow"
loot insert ~-3 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 calcite []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 stone_bricks []
fill ~-4 ~7 ~-4 ~4 ~8 ~4 glass []
fill ~-3 ~7 ~-3 ~3 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~0 ~-3 ~7 ~4 ~-1 calcite []
setblock ~7 ~5 ~-2 emerald_block []
setblock ~7 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 2 arrow 18
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~4 slot.container 9 cooked_mutton 13
replaceitem block ~-4 ~1 ~4 slot.container 10 bread 14
replaceitem block ~-4 ~1 ~4 slot.container 11 honey_bottle 8
replaceitem block ~-4 ~1 ~4 slot.container 12 emerald 12
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_ingot 6
replaceitem block ~-4 ~1 ~4 slot.container 14 coal 13
loot insert ~-4 ~1 ~4 loot "rsf/meadow"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~4 slot.container 1 string 14
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 3 leather 8
replaceitem block ~4 ~1 ~4 slot.container 4 emerald 5
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 cooked_mutton 11
replaceitem block ~4 ~1 ~4 slot.container 10 bread 12
replaceitem block ~4 ~1 ~4 slot.container 11 honey_bottle 6
replaceitem block ~4 ~1 ~4 slot.container 12 emerald 10
replaceitem block ~4 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 14 coal 18
loot insert ~4 ~1 ~4 loot "rsf/meadow"
loot insert ~4 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
