# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0314/4224 | 主题内编号: b058/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·十字拱顶家族陵墓 (birch_forest_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 birch_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~3 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~3 slot.container 2 string 15
replaceitem block ~0 ~-4 ~3 slot.container 3 gunpowder 6
replaceitem block ~0 ~-4 ~3 slot.container 4 arrow 17
replaceitem block ~0 ~-4 ~3 slot.container 5 spider_eye 6
replaceitem block ~0 ~-4 ~3 slot.container 9 iron_ingot 10
replaceitem block ~0 ~-4 ~3 slot.container 10 coal 16
replaceitem block ~0 ~-4 ~3 slot.container 11 golden_carrot 4
replaceitem block ~0 ~-4 ~3 slot.container 12 iron_sword 1
replaceitem block ~0 ~-4 ~3 slot.container 13 shears 1
replaceitem block ~0 ~-4 ~3 slot.container 14 torch 19
loot insert ~0 ~-4 ~3 loot "rsf/birch_forest"
loot insert ~0 ~-4 ~3 loot "chests/village/village_taiga_house"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 12
replaceitem block ~0 ~-4 ~-3 slot.container 2 string 13
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 12
replaceitem block ~0 ~-4 ~-3 slot.container 4 arrow 23
replaceitem block ~0 ~-4 ~-3 slot.container 5 spider_eye 4
replaceitem block ~0 ~-4 ~-3 slot.container 9 iron_ingot 9
replaceitem block ~0 ~-4 ~-3 slot.container 10 coal 15
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_carrot 10
replaceitem block ~0 ~-4 ~-3 slot.container 12 iron_sword 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 shears 1
replaceitem block ~0 ~-4 ~-3 slot.container 14 torch 18
loot insert ~0 ~-4 ~-3 loot "rsf/birch_forest"
loot insert ~0 ~-4 ~-3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~5 ~5 mossy_cobblestone []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 mossy_cobblestone []
fill ~-1 ~1 ~-4 ~1 ~4 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 birch_fence []
setblock ~6 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 stone_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 stone_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 stone_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 birch_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 birch_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 birch_log []
setblock ~-8 ~4 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 birch_log []
setblock ~-8 ~4 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 birch_log []
setblock ~8 ~4 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~3 ~7 birch_log []
setblock ~8 ~4 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 cobblestone []
fill ~8 ~1 ~-2 ~8 ~4 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~4 ~2 birch_log []
fill ~7 ~5 ~-2 ~8 ~5 ~2 birch_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 10
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 4 feather 14
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 9 birch_log 22
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_chicken 8
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 12
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_carrot 7
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_sword 1
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-4 ~0
