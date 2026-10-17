# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3974/4224 | 主题内编号: b006/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·重檐飞角四方神龛 (basalt_deltas_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 blackstone []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 ghast_tear 11
replaceitem block ~2 ~-2 ~3 slot.container 1 gold_nugget 16
replaceitem block ~2 ~-2 ~3 slot.container 2 ender_pearl 5
replaceitem block ~2 ~-2 ~3 slot.container 3 bone 12
replaceitem block ~2 ~-2 ~3 slot.container 4 coal 15
replaceitem block ~2 ~-2 ~3 slot.container 5 gunpowder 14
replaceitem block ~2 ~-2 ~3 slot.container 9 fire_charge 9
replaceitem block ~2 ~-2 ~3 slot.container 10 blackstone 26
replaceitem block ~2 ~-2 ~3 slot.container 11 diamond 5
replaceitem block ~2 ~-2 ~3 slot.container 12 lantern 10
replaceitem block ~2 ~-2 ~3 slot.container 13 gold_ingot 17
replaceitem block ~2 ~-2 ~3 slot.container 14 netherite_scrap 8
loot insert ~2 ~-2 ~3 loot "rsf/basalt_deltas"
loot insert ~2 ~-2 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 polished_blackstone_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 basalt []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 basalt []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 basalt []
fill ~4 ~1 ~5 ~4 ~9 ~5 basalt []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 polished_blackstone_wall []
setblock ~4 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 polished_blackstone_brick_slab []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 blackstone []
fill ~-4 ~12 ~-5 ~4 ~12 ~5 blackstone_slab []
setblock ~0 ~13 ~0 gilded_blackstone []
setblock ~0 ~14 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 basalt []
setblock ~-6 ~6 ~-7 soul_lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 basalt []
setblock ~-6 ~6 ~7 soul_lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 basalt []
setblock ~6 ~6 ~-7 soul_lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 basalt []
setblock ~6 ~6 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~0 ~8 ~7 ~9 ~8 polished_basalt []
fill ~6 ~0 ~8 ~6 ~7 ~8 basalt []
setblock ~7 ~10 ~8 magma []
setblock ~7 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 coal 18
replaceitem block ~-3 ~1 ~4 slot.container 1 gunpowder 17
replaceitem block ~-3 ~1 ~4 slot.container 2 magma_cream 14
replaceitem block ~-3 ~1 ~4 slot.container 3 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-3 ~1 ~4 slot.container 9 ancient_debris 6
replaceitem block ~-3 ~1 ~4 slot.container 10 obsidian 16
replaceitem block ~-3 ~1 ~4 slot.container 11 crying_obsidian 6
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~-3 ~1 ~4 slot.container 13 fire_charge 10
replaceitem block ~-3 ~1 ~4 slot.container 14 blackstone 27
loot insert ~-3 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 magma_cream 17
replaceitem block ~3 ~1 ~4 slot.container 1 blaze_rod 12
replaceitem block ~3 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 11
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 ancient_debris 4
replaceitem block ~3 ~1 ~4 slot.container 10 obsidian 14
replaceitem block ~3 ~1 ~4 slot.container 11 crying_obsidian 11
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~3 ~1 ~4 slot.container 13 fire_charge 8
replaceitem block ~3 ~1 ~4 slot.container 14 blackstone 25
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~1 ~4 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~-2 ~0
