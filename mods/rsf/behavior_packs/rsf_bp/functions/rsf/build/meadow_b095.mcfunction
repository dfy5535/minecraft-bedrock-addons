# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2015/4224 | 主题内编号: b095/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子灯笼守卫神龛 (meadow_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 lantern []
setblock ~4 ~-4 ~-3 lantern []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 15
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~-2 ~3 slot.container 2 arrow 23
replaceitem block ~4 ~-2 ~3 slot.container 3 string 8
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 7
replaceitem block ~4 ~-2 ~3 slot.container 5 leather 10
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 10 lantern 6
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_mutton 13
replaceitem block ~4 ~-2 ~3 slot.container 12 bread 14
replaceitem block ~4 ~-2 ~3 slot.container 13 honey_bottle 8
replaceitem block ~4 ~-2 ~3 slot.container 14 emerald 12
loot insert ~4 ~-2 ~3 loot "rsf/meadow"
loot insert ~4 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~8 ~4 cobblestone []
fill ~2 ~1 ~-4 ~5 ~8 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 oak_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 oak_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 calcite []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 stone_brick_slab []
setblock ~0 ~11 ~0 hay_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 oak_log []
setblock ~-7 ~5 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 oak_log []
setblock ~-7 ~5 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 oak_log []
setblock ~7 ~5 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~4 ~6 oak_log []
setblock ~7 ~5 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~7 ~0 ~0 ~7 ~4 ~2 calcite []
setblock ~7 ~5 ~1 emerald_block []
setblock ~7 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 bone 10
replaceitem block ~4 ~1 ~3 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 18
replaceitem block ~4 ~1 ~3 slot.container 4 string 11
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 9 coal 18
replaceitem block ~4 ~1 ~3 slot.container 10 saddle 1
replaceitem block ~4 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~4 ~1 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~3 slot.container 14 cooked_mutton 14
loot insert ~4 ~1 ~3 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
