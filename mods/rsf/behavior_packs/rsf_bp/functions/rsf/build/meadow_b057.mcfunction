# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1977/4224 | 主题内编号: b057/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·中央石棺帝王地下陵寝 (meadow_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~7 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 spruce_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 spruce_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 bone 15
replaceitem block ~-2 ~-4 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 arrow 23
replaceitem block ~-2 ~-4 ~3 slot.container 4 string 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 7
replaceitem block ~-2 ~-4 ~3 slot.container 9 bread 11
replaceitem block ~-2 ~-4 ~3 slot.container 10 honey_bottle 5
replaceitem block ~-2 ~-4 ~3 slot.container 11 emerald 9
replaceitem block ~-2 ~-4 ~3 slot.container 12 iron_ingot 10
replaceitem block ~-2 ~-4 ~3 slot.container 13 coal 17
replaceitem block ~-2 ~-4 ~3 slot.container 14 saddle 1
loot insert ~-2 ~-4 ~3 loot "rsf/meadow"
loot insert ~-2 ~-4 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 mossy_stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-7 ~0 ~2 ~7 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 spruce_planks []
fill ~-4 ~7 ~-6 ~4 ~7 ~6 stone_bricks []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 chiseled_stone_bricks []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 spruce_planks []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 stripped_spruce_log []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 stripped_spruce_log []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 spruce_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~7 ~0 ~0 ~7 ~6 ~2 calcite []
setblock ~7 ~7 ~1 emerald_block []
setblock ~7 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 rotten_flesh 11
replaceitem block ~4 ~1 ~6 slot.container 1 arrow 18
replaceitem block ~4 ~1 ~6 slot.container 2 string 11
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~6 slot.container 4 leather 13
replaceitem block ~4 ~1 ~6 slot.container 5 emerald 10
replaceitem block ~4 ~1 ~6 slot.container 9 bread 13
replaceitem block ~4 ~1 ~6 slot.container 10 honey_bottle 7
replaceitem block ~4 ~1 ~6 slot.container 11 emerald 11
replaceitem block ~4 ~1 ~6 slot.container 12 iron_ingot 12
replaceitem block ~4 ~1 ~6 slot.container 13 coal 12
replaceitem block ~4 ~1 ~6 slot.container 14 saddle 1
loot insert ~4 ~1 ~6 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
