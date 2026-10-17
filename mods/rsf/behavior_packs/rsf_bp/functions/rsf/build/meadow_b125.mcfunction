# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2045/4224 | 主题内编号: b125/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·巨型阶梯金字塔神王殿 (meadow_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 oak_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 leather 10
replaceitem block ~-3 ~-3 ~4 slot.container 1 emerald 7
replaceitem block ~-3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~4 slot.container 3 bone 15
replaceitem block ~-3 ~-3 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~-3 ~-3 ~4 slot.container 5 arrow 23
replaceitem block ~-3 ~-3 ~4 slot.container 9 bread 16
replaceitem block ~-3 ~-3 ~4 slot.container 10 honey_bottle 3
replaceitem block ~-3 ~-3 ~4 slot.container 11 emerald 7
replaceitem block ~-3 ~-3 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-3 ~-3 ~4 slot.container 13 coal 15
replaceitem block ~-3 ~-3 ~4 slot.container 14 saddle 1
loot insert ~-3 ~-3 ~4 loot "rsf/meadow"
loot insert ~-3 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mossy_stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 spruce_planks []
fill ~-4 ~5 ~-5 ~4 ~9 ~5 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~10 ~-7 ~6 ~10 ~7 spruce_planks []
fill ~-5 ~11 ~-6 ~5 ~11 ~6 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 chiseled_stone_bricks []
setblock ~0 ~13 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~-2 ~8 ~4 ~0 calcite []
setblock ~8 ~5 ~-1 emerald_block []
setblock ~8 ~6 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 leather 13
replaceitem block ~5 ~1 ~6 slot.container 1 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 18
replaceitem block ~5 ~1 ~6 slot.container 9 coal 13
replaceitem block ~5 ~1 ~6 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 9
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_mutton 16
loot insert ~5 ~1 ~6 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
