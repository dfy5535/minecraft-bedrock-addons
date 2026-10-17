# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0319/4224 | 主题内编号: b063/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·方尖碑镇压古墓穴 (birch_forest_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 birch_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 birch_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 birch_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 birch_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~2 slot.container 1 feather 11
replaceitem block ~0 ~-3 ~2 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-3 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-3 ~2 slot.container 4 bone 14
replaceitem block ~0 ~-3 ~2 slot.container 5 string 15
replaceitem block ~0 ~-3 ~2 slot.container 9 torch 19
replaceitem block ~0 ~-3 ~2 slot.container 10 honeycomb 10
replaceitem block ~0 ~-3 ~2 slot.container 11 honey_bottle 8
replaceitem block ~0 ~-3 ~2 slot.container 12 birch_log 22
replaceitem block ~0 ~-3 ~2 slot.container 13 cooked_chicken 8
replaceitem block ~0 ~-3 ~2 slot.container 14 iron_ingot 6
loot insert ~0 ~-3 ~2 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~2 loot "chests/village/village_taiga_house"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 spider_eye 4
replaceitem block ~0 ~-3 ~-2 slot.container 1 feather 9
replaceitem block ~0 ~-3 ~-2 slot.container 2 phantom_membrane 4
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-3 ~-2 slot.container 4 bone 12
replaceitem block ~0 ~-3 ~-2 slot.container 5 string 13
replaceitem block ~0 ~-3 ~-2 slot.container 9 torch 18
replaceitem block ~0 ~-3 ~-2 slot.container 10 honeycomb 9
replaceitem block ~0 ~-3 ~-2 slot.container 11 honey_bottle 7
replaceitem block ~0 ~-3 ~-2 slot.container 12 birch_log 21
replaceitem block ~0 ~-3 ~-2 slot.container 13 cooked_chicken 14
replaceitem block ~0 ~-3 ~-2 slot.container 14 iron_ingot 5
loot insert ~0 ~-3 ~-2 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~-2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 birch_planks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 birch_log []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 birch_log []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 birch_log []
fill ~4 ~1 ~3 ~4 ~8 ~3 birch_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 birch_planks []
fill ~0 ~14 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 birch_log []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 birch_log []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 birch_log []
fill ~6 ~0 ~2 ~6 ~7 ~2 birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x5x3) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 mossy_stone_bricks []
fill ~7 ~1 ~-2 ~7 ~4 ~-2 birch_log []
fill ~7 ~1 ~2 ~7 ~4 ~2 birch_log []
fill ~6 ~5 ~-2 ~7 ~5 ~2 birch_slab []
setblock ~6 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~1 ~2 slot.container 2 bone 9
replaceitem block ~4 ~1 ~2 slot.container 3 string 10
replaceitem block ~4 ~1 ~2 slot.container 4 gunpowder 9
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 9 iron_sword 1
replaceitem block ~4 ~1 ~2 slot.container 10 shears 1
replaceitem block ~4 ~1 ~2 slot.container 11 torch 22
replaceitem block ~4 ~1 ~2 slot.container 12 honeycomb 6
replaceitem block ~4 ~1 ~2 slot.container 13 honey_bottle 4
replaceitem block ~4 ~1 ~2 slot.container 14 birch_log 18
loot insert ~4 ~1 ~2 loot "rsf/birch_forest"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 1 string 13
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 4
replaceitem block ~-4 ~1 ~3 slot.container 5 feather 9
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_sword 1
replaceitem block ~-4 ~1 ~3 slot.container 10 shears 1
replaceitem block ~-4 ~1 ~3 slot.container 11 torch 20
replaceitem block ~-4 ~1 ~3 slot.container 12 honeycomb 11
replaceitem block ~-4 ~1 ~3 slot.container 13 honey_bottle 9
replaceitem block ~-4 ~1 ~3 slot.container 14 birch_log 16
loot insert ~-4 ~1 ~3 loot "rsf/birch_forest"
loot insert ~-4 ~1 ~3 loot "chests/village/village_taiga_house"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
