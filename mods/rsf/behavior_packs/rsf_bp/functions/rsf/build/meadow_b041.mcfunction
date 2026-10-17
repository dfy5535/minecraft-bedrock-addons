# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1961/4224 | 主题内编号: b041/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·八角看台古罗马斗技场 (meadow_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~-4 ~-5 ~-5 lantern []
setblock ~4 ~-5 ~5 lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 rotten_flesh 16
replaceitem block ~0 ~-3 ~5 slot.container 1 arrow 23
replaceitem block ~0 ~-3 ~5 slot.container 2 string 8
replaceitem block ~0 ~-3 ~5 slot.container 3 gunpowder 7
replaceitem block ~0 ~-3 ~5 slot.container 4 leather 10
replaceitem block ~0 ~-3 ~5 slot.container 5 emerald 7
replaceitem block ~0 ~-3 ~5 slot.container 9 coal 17
replaceitem block ~0 ~-3 ~5 slot.container 10 saddle 1
replaceitem block ~0 ~-3 ~5 slot.container 11 golden_apple 1
replaceitem block ~0 ~-3 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~5 slot.container 13 lantern 6
replaceitem block ~0 ~-3 ~5 slot.container 14 cooked_mutton 13
loot insert ~0 ~-3 ~5 loot "rsf/meadow"
loot insert ~0 ~-3 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 mossy_stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 air []
fill ~6 ~1 ~7 ~6 ~7 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 stripped_spruce_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 stripped_spruce_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 stripped_spruce_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 stripped_spruce_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 stripped_spruce_log []
setblock ~-6 ~9 ~-7 lantern []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 stripped_spruce_log []
setblock ~-6 ~9 ~7 lantern []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 stripped_spruce_log []
setblock ~6 ~9 ~-7 lantern []
fill ~6 ~6 ~7 ~6 ~8 ~7 stripped_spruce_log []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 stripped_spruce_log []
setblock ~-8 ~5 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 stripped_spruce_log []
setblock ~-8 ~5 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 stripped_spruce_log []
setblock ~8 ~5 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~4 ~9 stripped_spruce_log []
setblock ~8 ~5 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~0 ~-2 ~8 ~5 ~0 calcite []
setblock ~8 ~6 ~-1 emerald_block []
setblock ~8 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 18
replaceitem block ~5 ~1 ~6 slot.container 2 string 11
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 4 leather 13
replaceitem block ~5 ~1 ~6 slot.container 5 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 7
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 11 coal 15
replaceitem block ~5 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~6 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
