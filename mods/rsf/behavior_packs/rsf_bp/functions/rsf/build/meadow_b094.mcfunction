# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2014/4224 | 主题内编号: b094/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·圆形圣泉祈祷亭 (meadow_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 spruce_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 bone 15
replaceitem block ~-2 ~-2 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~-2 ~-2 ~3 slot.container 2 arrow 23
replaceitem block ~-2 ~-2 ~3 slot.container 3 string 8
replaceitem block ~-2 ~-2 ~3 slot.container 4 gunpowder 7
replaceitem block ~-2 ~-2 ~3 slot.container 5 leather 10
replaceitem block ~-2 ~-2 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~-2 ~-2 ~3 slot.container 10 lantern 4
replaceitem block ~-2 ~-2 ~3 slot.container 11 cooked_mutton 11
replaceitem block ~-2 ~-2 ~3 slot.container 12 bread 12
replaceitem block ~-2 ~-2 ~3 slot.container 13 honey_bottle 6
replaceitem block ~-2 ~-2 ~3 slot.container 14 emerald 10
loot insert ~-2 ~-2 ~3 loot "rsf/meadow"
loot insert ~-2 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 spruce_planks []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 spruce_log []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 spruce_log []
fill ~-4 ~1 ~-1 ~-4 ~6 ~-1 spruce_log []
fill ~4 ~1 ~-1 ~4 ~6 ~-1 spruce_log []
fill ~-4 ~1 ~1 ~-4 ~6 ~1 spruce_log []
fill ~4 ~1 ~1 ~4 ~6 ~1 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 spruce_log []
fill ~4 ~1 ~3 ~4 ~6 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 spruce_planks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 hay_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 hay_block []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 spruce_log []
setblock ~-6 ~4 ~0 hay_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 spruce_log []
setblock ~6 ~4 ~0 hay_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~6 ~0 ~1 ~6 ~3 ~3 calcite []
setblock ~6 ~4 ~2 emerald_block []
setblock ~6 ~5 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-3 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 5 string 11
replaceitem block ~-3 ~1 ~4 slot.container 9 honey_bottle 8
replaceitem block ~-3 ~1 ~4 slot.container 10 emerald 12
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~-3 ~1 ~4 slot.container 12 coal 13
replaceitem block ~-3 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-3 ~1 ~4 loot "rsf/meadow"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 13
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 14
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 leather 8
replaceitem block ~3 ~1 ~4 slot.container 9 honey_bottle 6
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 10
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 12 coal 18
replaceitem block ~3 ~1 ~4 slot.container 13 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~3 ~1 ~4 loot "rsf/meadow"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
