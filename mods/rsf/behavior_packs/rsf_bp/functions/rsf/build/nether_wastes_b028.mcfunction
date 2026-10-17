# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3484/4224 | 主题内编号: b028/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·重檐挑角古钟楼 (nether_wastes_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 2格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~13 ~7 air [] replace fire
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 red_nether_brick [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 red_nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 red_nether_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 nether_brick []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 red_nether_brick []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 red_nether_brick_slab []
fill ~-3 ~6 ~-4 ~3 ~10 ~4 quartz_block []
fill ~-2 ~6 ~-3 ~2 ~9 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 red_nether_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 red_nether_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 red_nether_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 red_nether_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 red_nether_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 nether_brick []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 chiseled_nether_bricks []
setblock ~-6 ~5 ~-7 soul_lantern []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 chiseled_nether_bricks []
setblock ~-6 ~5 ~7 soul_lantern []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 chiseled_nether_bricks []
setblock ~6 ~5 ~-7 soul_lantern []
fill ~6 ~0 ~7 ~6 ~4 ~7 chiseled_nether_bricks []
setblock ~6 ~5 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~-6 ~0 ~-8 ~-6 ~6 ~-8 nether_brick []
setblock ~-6 ~7 ~-8 magma []
setblock ~-6 ~8 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 3 coal 19
replaceitem block ~-3 ~1 ~4 slot.container 4 blaze_rod 6
replaceitem block ~-3 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 9 nether_wart 17
replaceitem block ~-3 ~1 ~4 slot.container 10 obsidian 14
replaceitem block ~-3 ~1 ~4 slot.container 11 crying_obsidian 4
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~-3 ~1 ~4 slot.container 13 golden_carrot 10
replaceitem block ~-3 ~1 ~4 slot.container 14 netherite_scrap 4
loot insert ~-3 ~1 ~4 loot "rsf/nether_wastes"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~3 ~1 ~4 slot.container 1 coal 14
replaceitem block ~3 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 5 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 9 nether_wart 15
replaceitem block ~3 ~1 ~4 slot.container 10 obsidian 12
replaceitem block ~3 ~1 ~4 slot.container 11 crying_obsidian 9
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~3 ~1 ~4 slot.container 13 golden_carrot 8
replaceitem block ~3 ~1 ~4 slot.container 14 netherite_scrap 2
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~1 ~4 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
