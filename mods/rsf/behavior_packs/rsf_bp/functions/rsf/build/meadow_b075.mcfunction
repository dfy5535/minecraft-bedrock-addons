# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1995/4224 | 主题内编号: b075/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·远古巨石环廊法阵 (meadow_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

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
fill ~-6 ~7 ~-7 ~6 ~7 ~7 oak_planks []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 oak_log []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 oak_log []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 oak_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 oak_log []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 oak_log []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 oak_log []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 oak_log []
fill ~0 ~1 ~7 ~0 ~6 ~7 oak_log []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 oak_log []
fill ~2 ~1 ~7 ~2 ~6 ~7 oak_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 oak_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 oak_log []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 oak_log []
fill ~6 ~1 ~7 ~6 ~6 ~7 oak_log []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 oak_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 oak_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 oak_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 oak_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 oak_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 oak_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 oak_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 oak_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 oak_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 oak_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 oak_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 oak_log []
setblock ~-6 ~10 ~-7 campfire []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 oak_log []
setblock ~-6 ~10 ~7 campfire []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 oak_log []
setblock ~6 ~10 ~-7 campfire []
fill ~6 ~7 ~7 ~6 ~9 ~7 oak_log []
setblock ~6 ~10 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 oak_log []
setblock ~0 ~4 ~-9 honeycomb_block []
setblock ~0 ~5 ~-9 campfire []
fill ~0 ~0 ~9 ~0 ~3 ~9 oak_log []
setblock ~0 ~4 ~9 honeycomb_block []
setblock ~0 ~5 ~9 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 honeycomb_block []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 honeycomb_block []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~8 ~0 ~-3 ~8 ~4 ~-1 calcite []
setblock ~8 ~5 ~-2 emerald_block []
setblock ~8 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 2 leather 13
replaceitem block ~5 ~1 ~6 slot.container 3 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 bone 10
replaceitem block ~5 ~1 ~6 slot.container 9 coal 12
replaceitem block ~5 ~1 ~6 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 8
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_mutton 15
loot insert ~5 ~1 ~6 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
