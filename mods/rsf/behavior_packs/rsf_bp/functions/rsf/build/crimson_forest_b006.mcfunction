# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3590/4224 | 主题内编号: b006/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·重檐飞角四方神龛 (crimson_forest_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 red_nether_brick []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 gold_ingot 17
replaceitem block ~3 ~-3 ~2 slot.container 1 blaze_rod 4
replaceitem block ~3 ~-3 ~2 slot.container 2 magma_cream 7
replaceitem block ~3 ~-3 ~2 slot.container 3 ghast_tear 5
replaceitem block ~3 ~-3 ~2 slot.container 4 string 13
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 8
replaceitem block ~3 ~-3 ~2 slot.container 9 crying_obsidian 8
replaceitem block ~3 ~-3 ~2 slot.container 10 obsidian 11
replaceitem block ~3 ~-3 ~2 slot.container 11 netherite_scrap 5
replaceitem block ~3 ~-3 ~2 slot.container 12 golden_helmet 1
replaceitem block ~3 ~-3 ~2 slot.container 13 crossbow 1
replaceitem block ~3 ~-3 ~2 slot.container 14 arrow 24
loot insert ~3 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 gilded_blackstone []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 gilded_blackstone []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 gilded_blackstone []
fill ~5 ~1 ~4 ~5 ~9 ~4 gilded_blackstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 polished_blackstone_brick_slab []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 red_nether_brick []
fill ~-5 ~12 ~-4 ~5 ~12 ~4 crimson_slab []
setblock ~0 ~13 ~0 gold_block []
setblock ~0 ~14 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 gilded_blackstone []
setblock ~-7 ~6 ~-6 shroomlight []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 gilded_blackstone []
setblock ~-7 ~6 ~6 shroomlight []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 gilded_blackstone []
setblock ~7 ~6 ~-6 shroomlight []
fill ~7 ~0 ~6 ~7 ~5 ~6 gilded_blackstone []
setblock ~7 ~6 ~6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~-7 ~8 ~5 ~-7 gilded_blackstone []
setblock ~8 ~6 ~-7 gold_block []
setblock ~8 ~7 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 soul_lantern []
fill ~-4 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 16
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 3 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 5 blaze_rod 7
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 8
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_carrot 8
replaceitem block ~-4 ~1 ~2 slot.container 11 crimson_stem 17
replaceitem block ~-4 ~1 ~2 slot.container 12 shroomlight 8
replaceitem block ~-4 ~1 ~2 slot.container 13 crying_obsidian 9
replaceitem block ~-4 ~1 ~2 slot.container 14 obsidian 12
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-3 ~0
