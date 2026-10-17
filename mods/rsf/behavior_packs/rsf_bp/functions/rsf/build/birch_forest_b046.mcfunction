# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0302/4224 | 主题内编号: b046/128
# 地形主题 #03: 白桦森林与变异桦林 (birch_forest) —— 带白桦高挑采光窗与蜂巢花架
# 建筑名称: 白桦蜂语系·要塞校场比武演武台 (birch_forest_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: birch_forest, birch_forest_hills, birch_forest_mutated, birch_forest_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~9 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 birch_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 birch_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~4 slot.container 0 string 15
replaceitem block ~5 ~-3 ~4 slot.container 1 gunpowder 6
replaceitem block ~5 ~-3 ~4 slot.container 2 arrow 17
replaceitem block ~5 ~-3 ~4 slot.container 3 spider_eye 6
replaceitem block ~5 ~-3 ~4 slot.container 4 feather 11
replaceitem block ~5 ~-3 ~4 slot.container 5 phantom_membrane 6
replaceitem block ~5 ~-3 ~4 slot.container 9 honeycomb 10
replaceitem block ~5 ~-3 ~4 slot.container 10 honey_bottle 8
replaceitem block ~5 ~-3 ~4 slot.container 11 birch_log 22
replaceitem block ~5 ~-3 ~4 slot.container 12 cooked_chicken 8
replaceitem block ~5 ~-3 ~4 slot.container 13 iron_ingot 6
replaceitem block ~5 ~-3 ~4 slot.container 14 coal 12
loot insert ~5 ~-3 ~4 loot "rsf/birch_forest"
loot insert ~5 ~-3 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 mossy_cobblestone []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~7 ~-5 birch_planks []
setblock ~-7 ~8 ~-6 campfire []
fill ~-7 ~1 ~5 ~-6 ~7 ~6 birch_planks []
setblock ~-7 ~8 ~5 campfire []
fill ~6 ~1 ~-6 ~7 ~7 ~-5 birch_planks []
setblock ~6 ~8 ~-6 campfire []
fill ~6 ~1 ~5 ~7 ~7 ~6 birch_planks []
setblock ~6 ~8 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 birch_planks []
fill ~-7 ~6 ~-6 ~7 ~6 ~6 birch_fence []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 air []
setblock ~-7 ~6 ~-6 birch_log []
setblock ~-7 ~7 ~-6 campfire []
setblock ~-7 ~6 ~6 birch_log []
setblock ~-7 ~7 ~6 campfire []
setblock ~7 ~6 ~-6 birch_log []
setblock ~7 ~7 ~-6 campfire []
setblock ~7 ~6 ~6 birch_log []
setblock ~7 ~7 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~7 ~2 birch_planks []
fill ~8 ~1 ~-1 ~9 ~6 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~8 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (birch_forest 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~-2 ~9 ~0 ~2 cobblestone []
fill ~9 ~1 ~-2 ~9 ~7 ~-2 birch_log []
fill ~9 ~1 ~2 ~9 ~7 ~2 birch_log []
fill ~8 ~8 ~-2 ~9 ~8 ~2 birch_slab []
setblock ~8 ~1 ~0 honeycomb_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 feather 14
replaceitem block ~-6 ~1 ~4 slot.container 1 phantom_membrane 9
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~4 slot.container 4 string 10
replaceitem block ~-6 ~1 ~4 slot.container 5 gunpowder 9
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_carrot 5
replaceitem block ~-6 ~1 ~4 slot.container 10 iron_sword 1
replaceitem block ~-6 ~1 ~4 slot.container 11 shears 1
replaceitem block ~-6 ~1 ~4 slot.container 12 torch 20
replaceitem block ~-6 ~1 ~4 slot.container 13 honeycomb 11
replaceitem block ~-6 ~1 ~4 slot.container 14 honey_bottle 9
loot insert ~-6 ~1 ~4 loot "rsf/birch_forest"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon witch ~0 ~-3 ~0
