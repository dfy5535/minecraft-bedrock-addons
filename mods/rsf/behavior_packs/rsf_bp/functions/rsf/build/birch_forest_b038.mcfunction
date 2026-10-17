# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0294/4224 | 主题内编号: b038/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·四方凯旋衣冠冢 (birch_forest_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 birch_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 birch_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 birch_planks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 14
replaceitem block ~0 ~-3 ~-2 slot.container 2 string 15
replaceitem block ~0 ~-3 ~-2 slot.container 3 gunpowder 6
replaceitem block ~0 ~-3 ~-2 slot.container 4 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 5 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 shears 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 torch 20
replaceitem block ~0 ~-3 ~-2 slot.container 11 honeycomb 11
replaceitem block ~0 ~-3 ~-2 slot.container 12 honey_bottle 9
replaceitem block ~0 ~-3 ~-2 slot.container 13 birch_log 16
replaceitem block ~0 ~-3 ~-2 slot.container 14 cooked_chicken 9
loot insert ~0 ~-3 ~-2 loot "rsf/birch_forest"
loot insert ~0 ~-3 ~-2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~7 ~4 mossy_cobblestone []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 mossy_cobblestone []
fill ~-1 ~1 ~-3 ~1 ~6 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 birch_fence []
setblock ~5 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 birch_planks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 birch_planks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 birch_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 birch_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 birch_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 birch_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~0 ~-2 ~7 ~0 ~2 cobblestone []
fill ~7 ~1 ~-2 ~7 ~4 ~-2 birch_log []
fill ~7 ~1 ~2 ~7 ~4 ~2 birch_log []
fill ~6 ~5 ~-2 ~7 ~5 ~2 birch_slab []
setblock ~6 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 feather 14
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 10
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 4 string 10
replaceitem block ~-4 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 9 birch_log 16
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_chicken 9
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 7
replaceitem block ~-4 ~1 ~2 slot.container 12 coal 13
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_carrot 8
replaceitem block ~-4 ~1 ~2 slot.container 14 iron_sword 1
loot insert ~-4 ~1 ~2 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
