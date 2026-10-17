# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1947/4224 | 主题内编号: b027/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子连廊警戒塔楼 (meadow_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~10 ~4 cobblestone []
fill ~2 ~1 ~-4 ~5 ~10 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 oak_planks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 oak_planks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 oak_fence []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 air []
setblock ~-5 ~10 ~-4 oak_log []
setblock ~-5 ~11 ~-4 campfire []
setblock ~-5 ~10 ~4 oak_log []
setblock ~-5 ~11 ~4 campfire []
setblock ~5 ~10 ~-4 oak_log []
setblock ~5 ~11 ~-4 campfire []
setblock ~5 ~10 ~4 oak_log []
setblock ~5 ~11 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~7 ~0 ~0 ~7 ~6 ~2 calcite []
setblock ~7 ~7 ~1 emerald_block []
setblock ~7 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 string 11
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 2 leather 13
replaceitem block ~4 ~1 ~3 slot.container 3 emerald 10
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 bone 10
replaceitem block ~4 ~1 ~3 slot.container 9 bread 11
replaceitem block ~4 ~1 ~3 slot.container 10 honey_bottle 5
replaceitem block ~4 ~1 ~3 slot.container 11 emerald 9
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 13 coal 17
replaceitem block ~4 ~1 ~3 slot.container 14 saddle 1
loot insert ~4 ~1 ~3 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
