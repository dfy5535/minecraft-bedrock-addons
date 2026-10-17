# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0268/4224 | 主题内编号: b012/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双子暗门地底宝库 (birch_forest_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 5格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 calcite []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~-4 ~2 slot.container 1 bone 14
replaceitem block ~5 ~-4 ~2 slot.container 2 string 15
replaceitem block ~5 ~-4 ~2 slot.container 3 gunpowder 6
replaceitem block ~5 ~-4 ~2 slot.container 4 arrow 17
replaceitem block ~5 ~-4 ~2 slot.container 5 spider_eye 6
replaceitem block ~5 ~-4 ~2 slot.container 9 shears 1
replaceitem block ~5 ~-4 ~2 slot.container 10 torch 22
replaceitem block ~5 ~-4 ~2 slot.container 11 honeycomb 6
replaceitem block ~5 ~-4 ~2 slot.container 12 honey_bottle 4
replaceitem block ~5 ~-4 ~2 slot.container 13 birch_log 18
replaceitem block ~5 ~-4 ~2 slot.container 14 cooked_chicken 11
loot insert ~5 ~-4 ~2 loot "rsf/birch_forest"
loot insert ~5 ~-4 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~7 ~6 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 birch_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~6 ~-5 ~-8 ~6 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~6 ~-5 ~8 ~6 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~7 ~-4 ~-7 ~7 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-4 ~7 ~7 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-4 ~6 ~7 ~4 stone_brick_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 birch_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 stripped_birch_log []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 stripped_birch_log []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 stripped_birch_log []
fill ~8 ~0 ~2 ~8 ~4 ~2 stripped_birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 stone_bricks []
fill ~9 ~1 ~-2 ~9 ~3 ~-2 stripped_birch_log []
fill ~9 ~1 ~2 ~9 ~3 ~2 stripped_birch_log []
fill ~8 ~4 ~-2 ~9 ~4 ~2 stone_brick_slab []
setblock ~8 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~2 smithing_table []
setblock ~-4 ~1 ~2 anvil []
setblock ~4 ~1 ~2 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-6 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 2 feather 14
replaceitem block ~-6 ~1 ~2 slot.container 3 phantom_membrane 9
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 10
replaceitem block ~-6 ~1 ~2 slot.container 5 bone 9
replaceitem block ~-6 ~1 ~2 slot.container 9 iron_ingot 7
replaceitem block ~-6 ~1 ~2 slot.container 10 coal 13
replaceitem block ~-6 ~1 ~2 slot.container 11 golden_carrot 8
replaceitem block ~-6 ~1 ~2 slot.container 12 iron_sword 1
replaceitem block ~-6 ~1 ~2 slot.container 13 shears 1
replaceitem block ~-6 ~1 ~2 slot.container 14 torch 16
loot insert ~-6 ~1 ~2 loot "rsf/birch_forest"
summon bee ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
