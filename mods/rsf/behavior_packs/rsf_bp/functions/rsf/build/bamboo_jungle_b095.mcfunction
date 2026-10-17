# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1119/4224 | 主题内编号: b095/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·双子灯笼守卫神龛 (bamboo_jungle_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 bamboo_mosaic [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 bamboo_mosaic [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 bamboo_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 bamboo_planks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~7 ~3 bamboo_mosaic []
fill ~2 ~1 ~-3 ~6 ~7 ~3 bamboo_mosaic []
fill ~-5 ~1 ~-2 ~-3 ~6 ~2 air []
fill ~3 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 bamboo_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 jungle_planks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 bamboo_slab []
setblock ~0 ~10 ~0 emerald_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~3 ~-5 stripped_bamboo_block []
setblock ~-8 ~4 ~-5 campfire []
fill ~-8 ~0 ~5 ~-8 ~3 ~5 stripped_bamboo_block []
setblock ~-8 ~4 ~5 campfire []
fill ~8 ~0 ~-5 ~8 ~3 ~-5 stripped_bamboo_block []
setblock ~8 ~4 ~-5 campfire []
fill ~8 ~0 ~5 ~8 ~3 ~5 stripped_bamboo_block []
setblock ~8 ~4 ~5 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~1 ~-2 ~7 ~8 ~2 scaffolding []
fill ~6 ~8 ~-2 ~8 ~8 ~2 bamboo_mosaic_slab []
setblock ~7 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~2 smoker []
setblock ~5 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 1 string 12
replaceitem block ~5 ~1 ~1 slot.container 2 rotten_flesh 11
replaceitem block ~5 ~1 ~1 slot.container 3 bone 12
replaceitem block ~5 ~1 ~1 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~1 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~1 slot.container 9 golden_apple 7
replaceitem block ~5 ~1 ~1 slot.container 10 bow 1
replaceitem block ~5 ~1 ~1 slot.container 11 lantern 5
replaceitem block ~5 ~1 ~1 slot.container 12 bamboo 34
replaceitem block ~5 ~1 ~1 slot.container 13 scaffolding 19
replaceitem block ~5 ~1 ~1 slot.container 14 melon_slice 16
loot insert ~5 ~1 ~1 loot "rsf/bamboo_jungle"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~2 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~2 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~2 slot.container 4 slime_ball 6
replaceitem block ~-5 ~1 ~2 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~2 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~2 slot.container 10 bow 1
replaceitem block ~-5 ~1 ~2 slot.container 11 lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 12 bamboo 32
replaceitem block ~-5 ~1 ~2 slot.container 13 scaffolding 17
replaceitem block ~-5 ~1 ~2 slot.container 14 melon_slice 14
loot insert ~-5 ~1 ~2 loot "rsf/bamboo_jungle"
loot insert ~-5 ~1 ~2 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
