# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2009/4224 | 主题内编号: b089/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·四柱挑檐祈愿凉亭 (meadow_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 9x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~9 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~7 ~4 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 stripped_spruce_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 stripped_spruce_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 stripped_spruce_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 stripped_spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 spruce_slab []
fill ~-2 ~8 ~-3 ~2 ~9 ~3 stone_bricks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 stone_brick_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~8 ~-2 spruce_log []
fill ~-4 ~0 ~2 ~-4 ~8 ~2 spruce_log []
fill ~4 ~0 ~-2 ~4 ~8 ~-2 spruce_log []
fill ~4 ~0 ~2 ~4 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 5x5x2) ---
fill ~5 ~0 ~-2 ~5 ~3 ~0 calcite []
setblock ~5 ~4 ~-1 emerald_block []
setblock ~5 ~5 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 rotten_flesh 11
replaceitem block ~2 ~1 ~3 slot.container 1 arrow 18
replaceitem block ~2 ~1 ~3 slot.container 2 string 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 4 leather 13
replaceitem block ~2 ~1 ~3 slot.container 5 emerald 10
replaceitem block ~2 ~1 ~3 slot.container 9 golden_apple 1
replaceitem block ~2 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 11 lantern 6
replaceitem block ~2 ~1 ~3 slot.container 12 cooked_mutton 13
replaceitem block ~2 ~1 ~3 slot.container 13 bread 14
replaceitem block ~2 ~1 ~3 slot.container 14 honey_bottle 8
loot insert ~2 ~1 ~3 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
