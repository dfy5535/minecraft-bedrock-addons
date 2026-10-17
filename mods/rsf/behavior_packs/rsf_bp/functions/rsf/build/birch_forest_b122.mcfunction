# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0378/4224 | 主题内编号: b122/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·十字穹顶宏伟圣堂与墓窟 (birch_forest_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 birch_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 birch_planks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 birch_planks []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 arrow 17
replaceitem block ~0 ~-4 ~-4 slot.container 1 spider_eye 6
replaceitem block ~0 ~-4 ~-4 slot.container 2 feather 11
replaceitem block ~0 ~-4 ~-4 slot.container 3 phantom_membrane 6
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 15
replaceitem block ~0 ~-4 ~-4 slot.container 5 bone 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 honeycomb 9
replaceitem block ~0 ~-4 ~-4 slot.container 10 honey_bottle 7
replaceitem block ~0 ~-4 ~-4 slot.container 11 birch_log 21
replaceitem block ~0 ~-4 ~-4 slot.container 12 cooked_chicken 14
replaceitem block ~0 ~-4 ~-4 slot.container 13 iron_ingot 5
replaceitem block ~0 ~-4 ~-4 slot.container 14 coal 11
loot insert ~0 ~-4 ~-4 loot "rsf/birch_forest"
loot insert ~0 ~-4 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 mossy_cobblestone []
fill ~-7 ~1 ~-2 ~7 ~8 ~2 mossy_cobblestone []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 birch_fence []
setblock ~7 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 birch_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_cobblestone []
fill ~0 ~14 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 birch_log []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 birch_log []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 birch_log []
fill ~8 ~0 ~2 ~8 ~7 ~2 birch_log []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 cobblestone []
fill ~9 ~1 ~-2 ~9 ~3 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~3 ~2 birch_log []
fill ~8 ~4 ~-2 ~9 ~4 ~2 birch_slab []
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
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_ingot 5
replaceitem block ~-6 ~1 ~4 slot.container 10 coal 11
replaceitem block ~-6 ~1 ~4 slot.container 11 golden_carrot 6
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_sword 1
replaceitem block ~-6 ~1 ~4 slot.container 13 shears 1
replaceitem block ~-6 ~1 ~4 slot.container 14 torch 21
loot insert ~-6 ~1 ~4 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
