# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1113/4224 | 主题内编号: b089/128
# 地形主题 #09: 竹林与竹林丘陵 (bamboo_jungle) —— 带竹马赛克飞檐与脚手架悬空栈道
# 建筑名称: 竹海机关·四柱挑檐祈愿凉亭 (bamboo_jungle_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: bamboo_jungle, bamboo_jungle_hills
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air [] replace log2
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bamboo_planks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bamboo_planks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 bamboo_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 bamboo_mosaic []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~6 ~3 bamboo_planks []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 bamboo_block []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 bamboo_block []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 bamboo_block []
fill ~4 ~1 ~3 ~4 ~6 ~3 bamboo_block []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 bamboo_fence []
setblock ~4 ~2 ~0 bamboo_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 bamboo_slab []
fill ~-3 ~7 ~-2 ~3 ~8 ~2 mossy_stone_bricks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 bamboo_mosaic_slab []
setblock ~0 ~10 ~0 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 bamboo_mosaic []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 bamboo_block []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 bamboo_block []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 bamboo_slab []
setblock ~0 ~3 ~-5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (bamboo_jungle 独有建筑构件 | 几何特征参数 5x6x5) ---
fill ~5 ~1 ~-2 ~5 ~7 ~2 scaffolding []
fill ~4 ~7 ~-2 ~6 ~7 ~2 bamboo_mosaic_slab []
setblock ~5 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~2 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 rotten_flesh 11
replaceitem block ~3 ~1 ~1 slot.container 1 bone 12
replaceitem block ~3 ~1 ~1 slot.container 2 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 4 slime_ball 11
replaceitem block ~3 ~1 ~1 slot.container 5 arrow 22
replaceitem block ~3 ~1 ~1 slot.container 9 lantern 4
replaceitem block ~3 ~1 ~1 slot.container 10 bamboo 33
replaceitem block ~3 ~1 ~1 slot.container 11 scaffolding 18
replaceitem block ~3 ~1 ~1 slot.container 12 melon_slice 15
replaceitem block ~3 ~1 ~1 slot.container 13 cooked_chicken 12
replaceitem block ~3 ~1 ~1 slot.container 14 iron_ingot 11
loot insert ~3 ~1 ~1 loot "rsf/bamboo_jungle"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 2 slime_ball 6
replaceitem block ~-3 ~1 ~2 slot.container 3 arrow 17
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 string 15
replaceitem block ~-3 ~1 ~2 slot.container 9 lantern 9
replaceitem block ~-3 ~1 ~2 slot.container 10 bamboo 38
replaceitem block ~-3 ~1 ~2 slot.container 11 scaffolding 16
replaceitem block ~-3 ~1 ~2 slot.container 12 melon_slice 13
replaceitem block ~-3 ~1 ~2 slot.container 13 cooked_chicken 10
replaceitem block ~-3 ~1 ~2 slot.container 14 iron_ingot 9
loot insert ~-3 ~1 ~2 loot "rsf/bamboo_jungle"
loot insert ~-3 ~1 ~2 loot "chests/jungle_temple"
summon cave_spider ~0 ~1 ~-1
summon panda ~-1 ~1 ~1
