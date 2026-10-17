# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3462/4224 | 主题内编号: b006/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·重檐飞角四方神龛 (nether_wastes_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 nether_brick [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 polished_blackstone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 ghast_tear 11
replaceitem block ~2 ~-2 ~3 slot.container 1 gold_nugget 16
replaceitem block ~2 ~-2 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~2 ~-2 ~3 slot.container 3 bone 12
replaceitem block ~2 ~-2 ~3 slot.container 4 ender_pearl 7
replaceitem block ~2 ~-2 ~3 slot.container 5 coal 16
replaceitem block ~2 ~-2 ~3 slot.container 9 gold_ingot 10
replaceitem block ~2 ~-2 ~3 slot.container 10 quartz 17
replaceitem block ~2 ~-2 ~3 slot.container 11 nether_wart 14
replaceitem block ~2 ~-2 ~3 slot.container 12 obsidian 11
replaceitem block ~2 ~-2 ~3 slot.container 13 crying_obsidian 8
replaceitem block ~2 ~-2 ~3 slot.container 14 golden_apple 7
loot insert ~2 ~-2 ~3 loot "rsf/nether_wastes"
loot insert ~2 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 nether_brick []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 chiseled_nether_bricks []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 chiseled_nether_bricks []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 chiseled_nether_bricks []
fill ~4 ~1 ~5 ~4 ~8 ~5 chiseled_nether_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 nether_brick_fence []
setblock ~4 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 nether_brick_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 polished_blackstone_bricks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 polished_blackstone_brick_slab []
setblock ~0 ~12 ~0 glowstone []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 polished_blackstone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-6 ~0 ~-7 ~-6 ~9 ~-7 nether_brick []
setblock ~-6 ~10 ~-7 magma []
setblock ~-6 ~11 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 1 coal 19
replaceitem block ~-3 ~1 ~4 slot.container 2 blaze_rod 6
replaceitem block ~-3 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-3 ~1 ~4 slot.container 9 golden_carrot 12
replaceitem block ~-3 ~1 ~4 slot.container 10 netherite_scrap 6
replaceitem block ~-3 ~1 ~4 slot.container 11 fire_charge 12
replaceitem block ~-3 ~1 ~4 slot.container 12 soul_lantern 4
replaceitem block ~-3 ~1 ~4 slot.container 13 gold_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 14 quartz 18
loot insert ~-3 ~1 ~4 loot "rsf/nether_wastes"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 19
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 golden_carrot 10
replaceitem block ~3 ~1 ~4 slot.container 10 netherite_scrap 4
replaceitem block ~3 ~1 ~4 slot.container 11 fire_charge 10
replaceitem block ~3 ~1 ~4 slot.container 12 soul_lantern 9
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 16
replaceitem block ~3 ~1 ~4 slot.container 14 quartz 16
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~1 ~4 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
