# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3996/4224 | 主题内编号: b028/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·重檐挑角古钟楼 (basalt_deltas_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 11格 | 地下深度 2格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~14 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~14 ~7 air [] replace fire
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 polished_basalt [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 polished_basalt [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 polished_basalt []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 polished_blackstone_slab []
fill ~-3 ~6 ~-4 ~3 ~11 ~4 nether_brick []
fill ~-2 ~6 ~-3 ~2 ~10 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~11 ~-6 ~5 ~11 ~6 polished_blackstone_slab []
fill ~-3 ~12 ~-4 ~3 ~13 ~4 nether_brick []
fill ~-4 ~14 ~-5 ~4 ~14 ~5 polished_blackstone_brick_slab []
setblock ~0 ~15 ~0 ancient_debris []
setblock ~0 ~16 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 chiseled_polished_blackstone []
setblock ~-6 ~6 ~-7 soul_campfire []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 chiseled_polished_blackstone []
setblock ~-6 ~6 ~7 soul_campfire []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 chiseled_polished_blackstone []
setblock ~6 ~6 ~-7 soul_campfire []
fill ~6 ~0 ~7 ~6 ~5 ~7 chiseled_polished_blackstone []
setblock ~6 ~6 ~7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~7 ~0 ~6 ~7 ~6 ~6 polished_basalt []
fill ~6 ~0 ~6 ~6 ~4 ~6 basalt []
setblock ~7 ~7 ~6 magma []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 2 coal 18
replaceitem block ~-3 ~1 ~4 slot.container 3 gunpowder 17
replaceitem block ~-3 ~1 ~4 slot.container 4 magma_cream 14
replaceitem block ~-3 ~1 ~4 slot.container 5 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 9 diamond 8
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 13
replaceitem block ~-3 ~1 ~4 slot.container 12 netherite_scrap 4
replaceitem block ~-3 ~1 ~4 slot.container 13 ancient_debris 4
replaceitem block ~-3 ~1 ~4 slot.container 14 obsidian 14
loot insert ~-3 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 coal 13
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 magma_cream 17
replaceitem block ~3 ~1 ~4 slot.container 3 blaze_rod 12
replaceitem block ~3 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 5 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 9 diamond 6
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 11
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 18
replaceitem block ~3 ~1 ~4 slot.container 12 netherite_scrap 2
replaceitem block ~3 ~1 ~4 slot.container 13 ancient_debris 2
replaceitem block ~3 ~1 ~4 slot.container 14 obsidian 12
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
