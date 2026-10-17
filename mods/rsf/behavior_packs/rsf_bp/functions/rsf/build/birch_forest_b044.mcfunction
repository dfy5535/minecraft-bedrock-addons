# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0300/4224 | 主题内编号: b044/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·双子祭台勇士角斗场 (birch_forest_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~9 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~9 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~9 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~9 ~7 air [] replace log2
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 stone_bricks [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 stone_bricks [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 stone_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 mossy_stone_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 calcite []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~-3 ~3 slot.container 1 bone 14
replaceitem block ~5 ~-3 ~3 slot.container 2 string 15
replaceitem block ~5 ~-3 ~3 slot.container 3 gunpowder 6
replaceitem block ~5 ~-3 ~3 slot.container 4 arrow 17
replaceitem block ~5 ~-3 ~3 slot.container 5 spider_eye 6
replaceitem block ~5 ~-3 ~3 slot.container 9 iron_ingot 7
replaceitem block ~5 ~-3 ~3 slot.container 10 coal 13
replaceitem block ~5 ~-3 ~3 slot.container 11 golden_carrot 8
replaceitem block ~5 ~-3 ~3 slot.container 12 iron_sword 1
replaceitem block ~5 ~-3 ~3 slot.container 13 shears 1
replaceitem block ~5 ~-3 ~3 slot.container 14 torch 16
loot insert ~5 ~-3 ~3 loot "rsf/birch_forest"
loot insert ~5 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~6 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~7 ~6 ~5 stone_bricks []
fill ~-6 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~6 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 birch_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-5 ~-7 ~7 ~-5 stripped_birch_log []
setblock ~-7 ~8 ~-5 torch []
fill ~-7 ~5 ~5 ~-7 ~7 ~5 stripped_birch_log []
setblock ~-7 ~8 ~5 torch []
fill ~7 ~5 ~-5 ~7 ~7 ~-5 stripped_birch_log []
setblock ~7 ~8 ~-5 torch []
fill ~7 ~5 ~5 ~7 ~7 ~5 stripped_birch_log []
setblock ~7 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~3 ~-7 stripped_birch_log []
setblock ~-9 ~4 ~-7 torch []
fill ~-9 ~0 ~7 ~-9 ~3 ~7 stripped_birch_log []
setblock ~-9 ~4 ~7 torch []
fill ~9 ~0 ~-7 ~9 ~3 ~-7 stripped_birch_log []
setblock ~9 ~4 ~-7 torch []
fill ~9 ~0 ~7 ~9 ~3 ~7 stripped_birch_log []
setblock ~9 ~4 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 stone_bricks []
fill ~9 ~1 ~-2 ~9 ~5 ~-2 stripped_birch_log []
fill ~9 ~1 ~2 ~9 ~5 ~2 stripped_birch_log []
fill ~8 ~6 ~-2 ~9 ~6 ~2 stone_brick_slab []
setblock ~8 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 bookshelf []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-6 ~1 ~3 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~3 slot.container 2 feather 14
replaceitem block ~-6 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-6 ~1 ~3 slot.container 4 rotten_flesh 10
replaceitem block ~-6 ~1 ~3 slot.container 5 bone 9
replaceitem block ~-6 ~1 ~3 slot.container 9 honeycomb 12
replaceitem block ~-6 ~1 ~3 slot.container 10 honey_bottle 3
replaceitem block ~-6 ~1 ~3 slot.container 11 birch_log 17
replaceitem block ~-6 ~1 ~3 slot.container 12 cooked_chicken 10
replaceitem block ~-6 ~1 ~3 slot.container 13 iron_ingot 8
replaceitem block ~-6 ~1 ~3 slot.container 14 coal 14
loot insert ~-6 ~1 ~3 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
