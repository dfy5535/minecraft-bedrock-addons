# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2011/4224 | 主题内编号: b091/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·跨水拱桥水神小祠 (meadow_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 oak_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 leather 10
replaceitem block ~-3 ~-3 ~2 slot.container 1 emerald 7
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 3 bone 15
replaceitem block ~-3 ~-3 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 23
replaceitem block ~-3 ~-3 ~2 slot.container 9 lantern 7
replaceitem block ~-3 ~-3 ~2 slot.container 10 cooked_mutton 14
replaceitem block ~-3 ~-3 ~2 slot.container 11 bread 15
replaceitem block ~-3 ~-3 ~2 slot.container 12 honey_bottle 9
replaceitem block ~-3 ~-3 ~2 slot.container 13 emerald 6
replaceitem block ~-3 ~-3 ~2 slot.container 14 iron_ingot 7
loot insert ~-3 ~-3 ~2 loot "rsf/meadow"
loot insert ~-3 ~-3 ~2 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 oak_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 calcite []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 stone_brick_slab []
setblock ~0 ~11 ~0 hay_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 oak_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~7 ~0 ~0 ~7 ~5 ~2 calcite []
setblock ~7 ~6 ~1 emerald_block []
setblock ~7 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 string 11
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 2 leather 13
replaceitem block ~4 ~1 ~3 slot.container 3 emerald 10
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 bone 10
replaceitem block ~4 ~1 ~3 slot.container 9 emerald 8
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 11 coal 16
replaceitem block ~4 ~1 ~3 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~4 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~3 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
