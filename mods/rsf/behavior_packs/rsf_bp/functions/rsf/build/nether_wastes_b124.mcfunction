# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3580/4224 | 主题内编号: b124/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·三层重檐帝王阁楼与秘库 (nether_wastes_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-9 ~7 ~13 ~9 air [] replace lava
fill ~-7 ~0 ~-9 ~7 ~13 ~9 air [] replace fire
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 red_nether_brick [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 red_nether_brick [] replace lava
fill ~-6 ~0 ~-8 ~6 ~0 ~8 red_nether_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 quartz_block []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 quartz_block []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 blaze_rod 11
replaceitem block ~3 ~-3 ~5 slot.container 1 magma_cream 14
replaceitem block ~3 ~-3 ~5 slot.container 2 ghast_tear 11
replaceitem block ~3 ~-3 ~5 slot.container 3 gold_nugget 16
replaceitem block ~3 ~-3 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~-3 ~5 slot.container 5 bone 12
replaceitem block ~3 ~-3 ~5 slot.container 9 crying_obsidian 10
replaceitem block ~3 ~-3 ~5 slot.container 10 golden_apple 2
replaceitem block ~3 ~-3 ~5 slot.container 11 golden_carrot 9
replaceitem block ~3 ~-3 ~5 slot.container 12 netherite_scrap 3
replaceitem block ~3 ~-3 ~5 slot.container 13 fire_charge 9
replaceitem block ~3 ~-3 ~5 slot.container 14 soul_lantern 8
loot insert ~3 ~-3 ~5 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 red_nether_brick []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-6 ~5 ~-8 ~6 ~5 ~8 red_nether_brick_slab []
fill ~-4 ~6 ~-6 ~4 ~10 ~6 quartz_block []
fill ~-3 ~6 ~-5 ~3 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~6 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~10 ~-8 ~6 ~10 ~8 red_nether_brick_slab []
fill ~-4 ~11 ~-6 ~4 ~12 ~6 quartz_block []
fill ~-5 ~13 ~-7 ~5 ~13 ~7 quartz_slab []
setblock ~0 ~14 ~0 magma []
setblock ~0 ~15 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 blackstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x10x4) ---
fill ~-7 ~0 ~-10 ~-7 ~7 ~-10 nether_brick []
setblock ~-7 ~8 ~-10 magma []
setblock ~-7 ~9 ~-10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 magma []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~6 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~6 slot.container 2 ender_pearl 10
replaceitem block ~-4 ~1 ~6 slot.container 3 coal 19
replaceitem block ~-4 ~1 ~6 slot.container 4 blaze_rod 6
replaceitem block ~-4 ~1 ~6 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~6 slot.container 9 gold_ingot 13
replaceitem block ~-4 ~1 ~6 slot.container 10 quartz 20
replaceitem block ~-4 ~1 ~6 slot.container 11 nether_wart 17
replaceitem block ~-4 ~1 ~6 slot.container 12 obsidian 14
replaceitem block ~-4 ~1 ~6 slot.container 13 crying_obsidian 4
replaceitem block ~-4 ~1 ~6 slot.container 14 golden_apple 3
loot insert ~-4 ~1 ~6 loot "rsf/nether_wastes"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~6 slot.container 1 coal 14
replaceitem block ~4 ~1 ~6 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~6 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~6 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~6 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~6 slot.container 9 gold_ingot 11
replaceitem block ~4 ~1 ~6 slot.container 10 quartz 18
replaceitem block ~4 ~1 ~6 slot.container 11 nether_wart 15
replaceitem block ~4 ~1 ~6 slot.container 12 obsidian 12
replaceitem block ~4 ~1 ~6 slot.container 13 crying_obsidian 9
replaceitem block ~4 ~1 ~6 slot.container 14 golden_apple 8
loot insert ~4 ~1 ~6 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~6 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
