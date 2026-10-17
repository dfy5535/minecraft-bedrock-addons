# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0342/4224 | 主题内编号: b086/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·重装矿石金库碉堡 (birch_forest_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 birch_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 birch_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 15
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 6
replaceitem block ~4 ~-3 ~3 slot.container 2 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 3 spider_eye 6
replaceitem block ~4 ~-3 ~3 slot.container 4 feather 11
replaceitem block ~4 ~-3 ~3 slot.container 5 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 9 honeycomb 8
replaceitem block ~4 ~-3 ~3 slot.container 10 honey_bottle 6
replaceitem block ~4 ~-3 ~3 slot.container 11 birch_log 20
replaceitem block ~4 ~-3 ~3 slot.container 12 cooked_chicken 13
replaceitem block ~4 ~-3 ~3 slot.container 13 iron_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 14 coal 10
loot insert ~4 ~-3 ~3 loot "rsf/birch_forest"
loot insert ~4 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~7 ~-4 birch_planks []
setblock ~-6 ~8 ~-5 campfire []
fill ~-6 ~1 ~4 ~-5 ~7 ~5 birch_planks []
setblock ~-6 ~8 ~4 campfire []
fill ~5 ~1 ~-5 ~6 ~7 ~-4 birch_planks []
setblock ~5 ~8 ~-5 campfire []
fill ~5 ~1 ~4 ~6 ~7 ~5 birch_planks []
setblock ~5 ~8 ~4 campfire []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 birch_planks []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 birch_fence []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 birch_log []
setblock ~-6 ~7 ~-5 campfire []
setblock ~-6 ~6 ~5 birch_log []
setblock ~-6 ~7 ~5 campfire []
setblock ~6 ~6 ~-5 birch_log []
setblock ~6 ~7 ~-5 campfire []
setblock ~6 ~6 ~5 birch_log []
setblock ~6 ~7 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 birch_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~-2 ~8 ~0 ~2 cobblestone []
fill ~8 ~1 ~-2 ~8 ~7 ~-2 birch_log []
fill ~8 ~1 ~2 ~8 ~7 ~2 birch_log []
fill ~7 ~8 ~-2 ~8 ~8 ~2 birch_slab []
setblock ~7 ~1 ~1 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 feather 14
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 4 string 10
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_carrot 10
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 11 shears 1
replaceitem block ~-5 ~1 ~3 slot.container 12 torch 18
replaceitem block ~-5 ~1 ~3 slot.container 13 honeycomb 9
replaceitem block ~-5 ~1 ~3 slot.container 14 honey_bottle 7
loot insert ~-5 ~1 ~3 loot "rsf/birch_forest"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
