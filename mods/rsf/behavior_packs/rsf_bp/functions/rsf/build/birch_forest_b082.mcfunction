# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0338/4224 | 主题内编号: b082/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·竖井井架矿工物资站 (birch_forest_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 6格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 birch_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 mossy_cobblestone []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 campfire []
setblock ~3 ~-7 ~-2 campfire []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-5 ~2 slot.container 1 spider_eye 6
replaceitem block ~3 ~-5 ~2 slot.container 2 feather 11
replaceitem block ~3 ~-5 ~2 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-5 ~2 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~-5 ~2 slot.container 5 bone 14
replaceitem block ~3 ~-5 ~2 slot.container 9 golden_carrot 8
replaceitem block ~3 ~-5 ~2 slot.container 10 iron_sword 1
replaceitem block ~3 ~-5 ~2 slot.container 11 shears 1
replaceitem block ~3 ~-5 ~2 slot.container 12 torch 16
replaceitem block ~3 ~-5 ~2 slot.container 13 honeycomb 7
replaceitem block ~3 ~-5 ~2 slot.container 14 honey_bottle 5
loot insert ~3 ~-5 ~2 loot "rsf/birch_forest"
loot insert ~3 ~-5 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~3 ~4 mossy_cobblestone []
fill ~-4 ~1 ~-3 ~4 ~2 ~3 air []
fill ~-6 ~3 ~-5 ~6 ~3 ~5 birch_slab []
fill ~-4 ~4 ~-3 ~4 ~7 ~3 birch_planks []
fill ~-3 ~4 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~4 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 birch_planks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 birch_planks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 cobblestone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 cobblestone []
fill ~7 ~1 ~-2 ~7 ~3 ~-2 birch_log []
fill ~7 ~1 ~2 ~7 ~3 ~2 birch_log []
fill ~6 ~4 ~-2 ~7 ~4 ~2 birch_slab []
setblock ~6 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 10
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 4 feather 14
replaceitem block ~-4 ~1 ~2 slot.container 5 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 7
replaceitem block ~-4 ~1 ~2 slot.container 10 coal 13
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_carrot 8
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_sword 1
replaceitem block ~-4 ~1 ~2 slot.container 13 shears 1
replaceitem block ~-4 ~1 ~2 slot.container 14 torch 16
loot insert ~-4 ~1 ~2 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-5 ~0
