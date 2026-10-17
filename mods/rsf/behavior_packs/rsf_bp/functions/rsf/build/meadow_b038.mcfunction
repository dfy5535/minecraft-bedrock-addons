# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1958/4224 | 主题内编号: b038/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·四方凯旋衣冠冢 (meadow_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 bone 15
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-4 ~5 slot.container 2 arrow 23
replaceitem block ~0 ~-4 ~5 slot.container 3 string 8
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 5 leather 10
replaceitem block ~0 ~-4 ~5 slot.container 9 honey_bottle 7
replaceitem block ~0 ~-4 ~5 slot.container 10 emerald 11
replaceitem block ~0 ~-4 ~5 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 12 coal 12
replaceitem block ~0 ~-4 ~5 slot.container 13 saddle 1
replaceitem block ~0 ~-4 ~5 slot.container 14 golden_apple 3
loot insert ~0 ~-4 ~5 loot "rsf/meadow"
loot insert ~0 ~-4 ~5 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 bone 13
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 arrow 21
replaceitem block ~0 ~-4 ~-5 slot.container 3 string 14
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 13
replaceitem block ~0 ~-4 ~-5 slot.container 5 leather 8
replaceitem block ~0 ~-4 ~-5 slot.container 9 honey_bottle 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 emerald 10
replaceitem block ~0 ~-4 ~-5 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-4 ~-5 slot.container 12 coal 18
replaceitem block ~0 ~-4 ~-5 slot.container 13 saddle 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 golden_apple 2
loot insert ~0 ~-4 ~-5 loot "rsf/meadow"
loot insert ~0 ~-4 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 stone_bricks []
fill ~-4 ~1 ~-2 ~4 ~8 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 spruce_planks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 emerald_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~6 ~0 ~0 ~6 ~7 ~2 calcite []
setblock ~6 ~8 ~1 emerald_block []
setblock ~6 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~7 ~0 lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-3 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 5 string 11
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 10 coal 18
replaceitem block ~-3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 7
loot insert ~-3 ~1 ~4 loot "rsf/meadow"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 13
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 14
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 leather 8
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 10 coal 16
replaceitem block ~3 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 5
loot insert ~3 ~1 ~4 loot "rsf/meadow"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon sheep ~1 ~1 ~1
summon donkey ~0 ~-2 ~0
