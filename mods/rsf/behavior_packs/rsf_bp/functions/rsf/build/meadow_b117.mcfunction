# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2037/4224 | 主题内编号: b117/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·环柱生态标本采集馆 (meadow_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~3 ~-3 ~4 slot.container 1 arrow 23
replaceitem block ~3 ~-3 ~4 slot.container 2 string 8
replaceitem block ~3 ~-3 ~4 slot.container 3 gunpowder 7
replaceitem block ~3 ~-3 ~4 slot.container 4 leather 10
replaceitem block ~3 ~-3 ~4 slot.container 5 emerald 7
replaceitem block ~3 ~-3 ~4 slot.container 9 coal 15
replaceitem block ~3 ~-3 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_apple 6
replaceitem block ~3 ~-3 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 13 lantern 4
replaceitem block ~3 ~-3 ~4 slot.container 14 cooked_mutton 11
loot insert ~3 ~-3 ~4 loot "rsf/meadow"
loot insert ~3 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 spruce_planks []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 stripped_spruce_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 stripped_spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 stripped_spruce_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 stripped_spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 stripped_spruce_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 stripped_spruce_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 stripped_spruce_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 stripped_spruce_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 stripped_spruce_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 stripped_spruce_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 stripped_spruce_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 stripped_spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 stripped_spruce_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 stripped_spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 stripped_spruce_log []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 stripped_spruce_log []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 stripped_spruce_log []
fill ~5 ~1 ~0 ~5 ~6 ~0 stripped_spruce_log []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 stripped_spruce_log []
fill ~5 ~1 ~2 ~5 ~6 ~2 stripped_spruce_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 stripped_spruce_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 stripped_spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 spruce_planks []
fill ~-4 ~8 ~-5 ~4 ~9 ~5 glass []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~4 ~-8 stripped_spruce_log []
setblock ~-7 ~5 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~4 ~8 stripped_spruce_log []
setblock ~-7 ~5 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~4 ~-8 stripped_spruce_log []
setblock ~7 ~5 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~4 ~8 stripped_spruce_log []
setblock ~7 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~0 ~1 ~7 ~6 ~3 calcite []
setblock ~7 ~7 ~2 emerald_block []
setblock ~7 ~8 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 13
replaceitem block ~4 ~1 ~5 slot.container 1 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 11
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 9 bread 10
replaceitem block ~4 ~1 ~5 slot.container 10 honey_bottle 4
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 13 coal 16
replaceitem block ~4 ~1 ~5 slot.container 14 saddle 1
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
