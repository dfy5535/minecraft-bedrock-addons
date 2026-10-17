# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1942/4224 | 主题内编号: b022/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·廊柱书库秘藏室 (meadow_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 torch []
setblock ~3 ~-5 ~0 torch []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 arrow 23
replaceitem block ~0 ~-3 ~4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~4 slot.container 2 gunpowder 7
replaceitem block ~0 ~-3 ~4 slot.container 3 leather 10
replaceitem block ~0 ~-3 ~4 slot.container 4 emerald 7
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 honey_bottle 8
replaceitem block ~0 ~-3 ~4 slot.container 10 emerald 12
replaceitem block ~0 ~-3 ~4 slot.container 11 iron_ingot 6
replaceitem block ~0 ~-3 ~4 slot.container 12 coal 13
replaceitem block ~0 ~-3 ~4 slot.container 13 saddle 1
replaceitem block ~0 ~-3 ~4 slot.container 14 golden_apple 4
loot insert ~0 ~-3 ~4 loot "rsf/meadow"
loot insert ~0 ~-3 ~4 loot "chests/pillager_outpost"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 arrow 21
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 13
replaceitem block ~0 ~-3 ~-4 slot.container 3 leather 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 emerald 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 honey_bottle 7
replaceitem block ~0 ~-3 ~-4 slot.container 10 emerald 11
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 12 coal 12
replaceitem block ~0 ~-3 ~-4 slot.container 13 saddle 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 3
loot insert ~0 ~-3 ~-4 loot "rsf/meadow"
loot insert ~0 ~-3 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 spruce_planks []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 spruce_log []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 spruce_log []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 spruce_log []
fill ~5 ~1 ~0 ~5 ~6 ~0 spruce_log []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 spruce_log []
fill ~5 ~1 ~2 ~5 ~6 ~2 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 spruce_planks []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 emerald_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~7 ~0 ~-4 ~7 ~6 ~-2 calcite []
setblock ~7 ~7 ~-3 emerald_block []
setblock ~7 ~8 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 emerald 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 bone 10
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 5 string 11
replaceitem block ~-4 ~1 ~5 slot.container 9 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 10
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_mutton 10
replaceitem block ~-4 ~1 ~5 slot.container 14 bread 11
loot insert ~-4 ~1 ~5 loot "rsf/meadow"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 13
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 14
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 string 14
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 5 leather 8
replaceitem block ~4 ~1 ~5 slot.container 9 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_mutton 15
replaceitem block ~4 ~1 ~5 slot.container 14 bread 16
loot insert ~4 ~1 ~5 loot "rsf/meadow"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
