# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1965/4224 | 主题内编号: b045/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·十二柱神殿试炼场 (meadow_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
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
replaceitem block ~0 ~-3 ~5 slot.container 0 leather 10
replaceitem block ~0 ~-3 ~5 slot.container 1 emerald 7
replaceitem block ~0 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~5 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-3 ~5 slot.container 5 arrow 23
replaceitem block ~0 ~-3 ~5 slot.container 9 golden_apple 3
replaceitem block ~0 ~-3 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-3 ~5 slot.container 11 lantern 8
replaceitem block ~0 ~-3 ~5 slot.container 12 cooked_mutton 15
replaceitem block ~0 ~-3 ~5 slot.container 13 bread 16
replaceitem block ~0 ~-3 ~5 slot.container 14 honey_bottle 3
loot insert ~0 ~-3 ~5 loot "rsf/meadow"
loot insert ~0 ~-3 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 spruce_planks []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 stripped_spruce_log []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 stripped_spruce_log []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 stripped_spruce_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 stripped_spruce_log []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 stripped_spruce_log []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 stripped_spruce_log []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 stripped_spruce_log []
fill ~0 ~1 ~7 ~0 ~6 ~7 stripped_spruce_log []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 stripped_spruce_log []
fill ~2 ~1 ~7 ~2 ~6 ~7 stripped_spruce_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 stripped_spruce_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 stripped_spruce_log []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 stripped_spruce_log []
fill ~6 ~1 ~7 ~6 ~6 ~7 stripped_spruce_log []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 stripped_spruce_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 stripped_spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 stripped_spruce_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 stripped_spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 stripped_spruce_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 stripped_spruce_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 stripped_spruce_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 stripped_spruce_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 stripped_spruce_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 stripped_spruce_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 stripped_spruce_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 stripped_spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 stripped_spruce_log []
setblock ~-6 ~10 ~-7 lantern []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 stripped_spruce_log []
setblock ~-6 ~10 ~7 lantern []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 stripped_spruce_log []
setblock ~6 ~10 ~-7 lantern []
fill ~6 ~7 ~7 ~6 ~9 ~7 stripped_spruce_log []
setblock ~6 ~10 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 stripped_spruce_log []
setblock ~0 ~4 ~-9 emerald_block []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 stripped_spruce_log []
setblock ~0 ~4 ~9 emerald_block []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_spruce_log []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_spruce_log []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~8 ~0 ~2 ~8 ~4 ~4 calcite []
setblock ~8 ~5 ~3 emerald_block []
setblock ~8 ~6 ~3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 leather 13
replaceitem block ~5 ~1 ~6 slot.container 1 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 18
replaceitem block ~5 ~1 ~6 slot.container 9 coal 17
replaceitem block ~5 ~1 ~6 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 1
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 6
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_mutton 13
loot insert ~5 ~1 ~6 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
