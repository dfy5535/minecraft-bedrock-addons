# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0266/4224 | 主题内编号: b010/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·十字交叉深层地牢 (birch_forest_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 4格 | 地下深度 6格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~8 ~8 air [] replace log2
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 birch_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 campfire []
setblock ~5 ~-7 ~0 campfire []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-5 ~4 slot.container 1 bone 14
replaceitem block ~0 ~-5 ~4 slot.container 2 string 15
replaceitem block ~0 ~-5 ~4 slot.container 3 gunpowder 6
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 17
replaceitem block ~0 ~-5 ~4 slot.container 5 spider_eye 6
replaceitem block ~0 ~-5 ~4 slot.container 9 honeycomb 12
replaceitem block ~0 ~-5 ~4 slot.container 10 honey_bottle 3
replaceitem block ~0 ~-5 ~4 slot.container 11 birch_log 17
replaceitem block ~0 ~-5 ~4 slot.container 12 cooked_chicken 10
replaceitem block ~0 ~-5 ~4 slot.container 13 iron_ingot 8
replaceitem block ~0 ~-5 ~4 slot.container 14 coal 14
loot insert ~0 ~-5 ~4 loot "rsf/birch_forest"
loot insert ~0 ~-5 ~4 loot "chests/village/village_taiga_house"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-5 ~-4 slot.container 1 bone 12
replaceitem block ~0 ~-5 ~-4 slot.container 2 string 13
replaceitem block ~0 ~-5 ~-4 slot.container 3 gunpowder 12
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 23
replaceitem block ~0 ~-5 ~-4 slot.container 5 spider_eye 4
replaceitem block ~0 ~-5 ~-4 slot.container 9 honeycomb 11
replaceitem block ~0 ~-5 ~-4 slot.container 10 honey_bottle 9
replaceitem block ~0 ~-5 ~-4 slot.container 11 birch_log 16
replaceitem block ~0 ~-5 ~-4 slot.container 12 cooked_chicken 9
replaceitem block ~0 ~-5 ~-4 slot.container 13 iron_ingot 7
replaceitem block ~0 ~-5 ~-4 slot.container 14 coal 13
loot insert ~0 ~-5 ~-4 loot "rsf/birch_forest"
loot insert ~0 ~-5 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~4 ~6 mossy_cobblestone []
fill ~-7 ~1 ~-2 ~7 ~4 ~2 mossy_cobblestone []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~3 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 birch_fence []
setblock ~7 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~4 ~-6 ~7 ~4 ~6 birch_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-7 ~3 ~-1 ~-7 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 birch_log []
setblock ~-9 ~4 ~-8 campfire []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 birch_log []
setblock ~-9 ~4 ~8 campfire []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 birch_log []
setblock ~9 ~4 ~-8 campfire []
fill ~9 ~0 ~8 ~9 ~3 ~8 birch_log []
setblock ~9 ~4 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 cobblestone []
fill ~9 ~1 ~-2 ~9 ~6 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~6 ~2 birch_log []
fill ~8 ~7 ~-2 ~9 ~7 ~2 birch_slab []
setblock ~8 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 string 10
replaceitem block ~-6 ~1 ~4 slot.container 1 gunpowder 9
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 3 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 4 feather 14
replaceitem block ~-6 ~1 ~4 slot.container 5 phantom_membrane 9
replaceitem block ~-6 ~1 ~4 slot.container 9 shears 1
replaceitem block ~-6 ~1 ~4 slot.container 10 torch 17
replaceitem block ~-6 ~1 ~4 slot.container 11 honeycomb 8
replaceitem block ~-6 ~1 ~4 slot.container 12 honey_bottle 6
replaceitem block ~-6 ~1 ~4 slot.container 13 birch_log 20
replaceitem block ~-6 ~1 ~4 slot.container 14 cooked_chicken 13
loot insert ~-6 ~1 ~4 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-5 ~0
