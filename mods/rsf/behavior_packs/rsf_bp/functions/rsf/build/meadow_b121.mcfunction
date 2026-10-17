# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2041/4224 | 主题内编号: b121/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·卫城廊柱王座大殿与地宫 (meadow_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
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

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~8 ~7 mossy_stone_bricks []
fill ~-5 ~1 ~0 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 stripped_spruce_log []
fill ~-4 ~1 ~-7 ~-4 ~8 ~-7 stripped_spruce_log []
fill ~-2 ~1 ~-7 ~-2 ~8 ~-7 stripped_spruce_log []
fill ~0 ~1 ~-7 ~0 ~8 ~-7 stripped_spruce_log []
fill ~2 ~1 ~-7 ~2 ~8 ~-7 stripped_spruce_log []
fill ~4 ~1 ~-7 ~4 ~8 ~-7 stripped_spruce_log []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 stripped_spruce_log []
fill ~-6 ~8 ~-7 ~6 ~8 ~-1 spruce_planks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~9 ~-8 ~-7 ~9 ~8 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-8 ~7 ~9 ~8 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~10 ~-7 ~-6 ~10 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~10 ~-7 ~6 ~10 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-7 ~5 ~10 ~7 spruce_slab []
fill ~0 ~11 ~-8 ~0 ~11 ~8 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 stripped_spruce_log []
setblock ~-8 ~5 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 stripped_spruce_log []
setblock ~-8 ~5 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 stripped_spruce_log []
setblock ~8 ~5 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~4 ~9 stripped_spruce_log []
setblock ~8 ~5 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x10x4) ---
fill ~8 ~0 ~1 ~8 ~5 ~3 calcite []
setblock ~8 ~6 ~2 emerald_block []
setblock ~8 ~7 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 18
replaceitem block ~5 ~1 ~6 slot.container 2 string 11
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 4 leather 13
replaceitem block ~5 ~1 ~6 slot.container 5 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 11 coal 18
replaceitem block ~5 ~1 ~6 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~6 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
