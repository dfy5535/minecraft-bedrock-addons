# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1051/4224 | 主题内编号: b027/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子连廊警戒塔楼 (bamboo_jungle_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 bamboo_mosaic [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 bamboo_mosaic [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 bamboo_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 bamboo_planks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 bamboo_mosaic []
fill ~2 ~1 ~-3 ~6 ~9 ~3 bamboo_mosaic []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-3 ~6 ~8 ~3 stone_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 bamboo_fence []
fill ~-5 ~9 ~-2 ~5 ~9 ~2 air []
setblock ~-6 ~9 ~-3 stripped_bamboo_block []
setblock ~-6 ~10 ~-3 campfire []
setblock ~-6 ~9 ~3 stripped_bamboo_block []
setblock ~-6 ~10 ~3 campfire []
setblock ~6 ~9 ~-3 stripped_bamboo_block []
setblock ~6 ~10 ~-3 campfire []
setblock ~6 ~9 ~3 stripped_bamboo_block []
setblock ~6 ~10 ~3 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 campfire []
setblock ~2 ~4 ~-6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x4x3) ---
fill ~7 ~1 ~-2 ~7 ~5 ~2 scaffolding []
fill ~6 ~5 ~-2 ~8 ~5 ~2 bamboo_mosaic_slab []
setblock ~7 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 scaffolding []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~1 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~1 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~1 slot.container 3 arrow 22
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 5 string 12
replaceitem block ~5 ~1 ~1 slot.container 9 cooked_chicken 9
replaceitem block ~5 ~1 ~1 slot.container 10 iron_ingot 8
replaceitem block ~5 ~1 ~1 slot.container 11 emerald 7
replaceitem block ~5 ~1 ~1 slot.container 12 gold_ingot 8
replaceitem block ~5 ~1 ~1 slot.container 13 golden_apple 6
replaceitem block ~5 ~1 ~1 slot.container 14 bow 1
loot insert ~5 ~1 ~1 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~2 slot.container 1 arrow 17
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 3 string 15
replaceitem block ~-5 ~1 ~2 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~2 slot.container 9 cooked_chicken 14
replaceitem block ~-5 ~1 ~2 slot.container 10 iron_ingot 6
replaceitem block ~-5 ~1 ~2 slot.container 11 emerald 5
replaceitem block ~-5 ~1 ~2 slot.container 12 gold_ingot 6
replaceitem block ~-5 ~1 ~2 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~2 slot.container 14 bow 1
loot insert ~-5 ~1 ~2 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~2 loot "chests/jungle_temple"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
