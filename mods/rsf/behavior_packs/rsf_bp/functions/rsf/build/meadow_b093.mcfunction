# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2013/4224 | 主题内编号: b093/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·U型庭院神道祈福祠 (meadow_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 spruce_slab []
fill ~-4 ~7 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 stone_brick_slab []
setblock ~0 ~10 ~0 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~1 ~7 ~7 ~3 calcite []
setblock ~7 ~8 ~2 emerald_block []
setblock ~7 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 hay_block []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 13
replaceitem block ~4 ~1 ~5 slot.container 1 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 11
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_mutton 15
replaceitem block ~4 ~1 ~5 slot.container 11 bread 16
replaceitem block ~4 ~1 ~5 slot.container 12 honey_bottle 3
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 7
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
