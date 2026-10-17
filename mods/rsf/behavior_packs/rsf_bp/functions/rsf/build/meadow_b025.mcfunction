# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1945/4224 | 主题内编号: b025/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·雉堞女墙四方哨塔 (meadow_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~12 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 stripped_spruce_log []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 stripped_spruce_log []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 stripped_spruce_log []
fill ~3 ~1 ~4 ~3 ~10 ~4 stripped_spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~10 ~-4 ~3 ~10 ~4 spruce_planks []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 cobblestone_wall []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~-3 ~11 ~-4 stripped_spruce_log []
setblock ~-3 ~12 ~-4 lantern []
setblock ~-3 ~11 ~4 stripped_spruce_log []
setblock ~-3 ~12 ~4 lantern []
setblock ~3 ~11 ~-4 stripped_spruce_log []
setblock ~3 ~12 ~-4 lantern []
setblock ~3 ~11 ~4 stripped_spruce_log []
setblock ~3 ~12 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 spruce_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 stripped_spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 stripped_spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 spruce_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 5x7x3) ---
fill ~5 ~0 ~-2 ~5 ~4 ~0 calcite []
setblock ~5 ~5 ~-1 emerald_block []
setblock ~5 ~6 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 rotten_flesh 11
replaceitem block ~2 ~1 ~3 slot.container 1 arrow 18
replaceitem block ~2 ~1 ~3 slot.container 2 string 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 4 leather 13
replaceitem block ~2 ~1 ~3 slot.container 5 emerald 10
replaceitem block ~2 ~1 ~3 slot.container 9 coal 18
replaceitem block ~2 ~1 ~3 slot.container 10 saddle 1
replaceitem block ~2 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~2 ~1 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 13 lantern 7
replaceitem block ~2 ~1 ~3 slot.container 14 cooked_mutton 14
loot insert ~2 ~1 ~3 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
