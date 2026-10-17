# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1937/4224 | 主题内编号: b017/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双坡顶皇家藏宝室 (meadow_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-5 ~1 ~-7 ~5 ~8 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 spruce_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 calcite []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 hay_block []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 bone 15
replaceitem block ~3 ~-3 ~0 slot.container 2 rotten_flesh 16
replaceitem block ~3 ~-3 ~0 slot.container 3 arrow 23
replaceitem block ~3 ~-3 ~0 slot.container 4 string 8
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 7
replaceitem block ~3 ~-3 ~0 slot.container 9 golden_apple 1
replaceitem block ~3 ~-3 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~-3 ~0 slot.container 11 lantern 6
replaceitem block ~3 ~-3 ~0 slot.container 12 cooked_mutton 13
replaceitem block ~3 ~-3 ~0 slot.container 13 bread 14
replaceitem block ~3 ~-3 ~0 slot.container 14 honey_bottle 8
loot insert ~3 ~-3 ~0 loot "rsf/meadow"
loot insert ~3 ~-3 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~6 ~6 mossy_stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~5 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~6 ~-6 stripped_spruce_log []
fill ~-4 ~1 ~6 ~-4 ~6 ~6 stripped_spruce_log []
fill ~4 ~1 ~-6 ~4 ~6 ~-6 stripped_spruce_log []
fill ~4 ~1 ~6 ~4 ~6 ~6 stripped_spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-7 ~-5 ~7 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-7 ~5 ~7 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~-4 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-6 ~4 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-6 ~3 ~8 ~6 spruce_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 spruce_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~6 ~0 ~-3 ~6 ~6 ~-1 calcite []
setblock ~6 ~7 ~-2 emerald_block []
setblock ~6 ~8 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-3 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 rotten_flesh 11
replaceitem block ~3 ~1 ~5 slot.container 1 arrow 18
replaceitem block ~3 ~1 ~5 slot.container 2 string 11
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~5 slot.container 4 leather 13
replaceitem block ~3 ~1 ~5 slot.container 5 emerald 10
replaceitem block ~3 ~1 ~5 slot.container 9 bread 15
replaceitem block ~3 ~1 ~5 slot.container 10 honey_bottle 9
replaceitem block ~3 ~1 ~5 slot.container 11 emerald 6
replaceitem block ~3 ~1 ~5 slot.container 12 iron_ingot 7
replaceitem block ~3 ~1 ~5 slot.container 13 coal 14
replaceitem block ~3 ~1 ~5 slot.container 14 saddle 1
loot insert ~3 ~1 ~5 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
