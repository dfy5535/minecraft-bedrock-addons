# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1969/4224 | 主题内编号: b049/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双坡顶林间猎人木屋 (meadow_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
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

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 mossy_stone_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 rotten_flesh 16
replaceitem block ~3 ~-4 ~5 slot.container 1 arrow 23
replaceitem block ~3 ~-4 ~5 slot.container 2 string 8
replaceitem block ~3 ~-4 ~5 slot.container 3 gunpowder 7
replaceitem block ~3 ~-4 ~5 slot.container 4 leather 10
replaceitem block ~3 ~-4 ~5 slot.container 5 emerald 7
replaceitem block ~3 ~-4 ~5 slot.container 9 coal 12
replaceitem block ~3 ~-4 ~5 slot.container 10 saddle 1
replaceitem block ~3 ~-4 ~5 slot.container 11 golden_apple 3
replaceitem block ~3 ~-4 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-4 ~5 slot.container 13 lantern 8
replaceitem block ~3 ~-4 ~5 slot.container 14 cooked_mutton 15
loot insert ~3 ~-4 ~5 loot "rsf/meadow"
loot insert ~3 ~-4 ~5 loot "chests/pillager_outpost"

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

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 cobblestone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x9x2) ---
fill ~6 ~0 ~-1 ~6 ~3 ~1 calcite []
setblock ~6 ~4 ~0 emerald_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 rotten_flesh 11
replaceitem block ~3 ~1 ~5 slot.container 1 arrow 18
replaceitem block ~3 ~1 ~5 slot.container 2 string 11
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~5 slot.container 4 leather 13
replaceitem block ~3 ~1 ~5 slot.container 5 emerald 10
replaceitem block ~3 ~1 ~5 slot.container 9 golden_apple 3
replaceitem block ~3 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~1 ~5 slot.container 11 lantern 8
replaceitem block ~3 ~1 ~5 slot.container 12 cooked_mutton 15
replaceitem block ~3 ~1 ~5 slot.container 13 bread 16
replaceitem block ~3 ~1 ~5 slot.container 14 honey_bottle 3
loot insert ~3 ~1 ~5 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
