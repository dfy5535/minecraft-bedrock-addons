# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4026/4224 | 主题内编号: b058/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·十字拱顶家族陵墓 (basalt_deltas_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 soul_lantern []
setblock ~3 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 magma_cream 19
replaceitem block ~0 ~-3 ~4 slot.container 1 blaze_rod 14
replaceitem block ~0 ~-3 ~4 slot.container 2 ghast_tear 11
replaceitem block ~0 ~-3 ~4 slot.container 3 gold_nugget 16
replaceitem block ~0 ~-3 ~4 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-3 ~4 slot.container 5 bone 12
replaceitem block ~0 ~-3 ~4 slot.container 9 gold_ingot 12
replaceitem block ~0 ~-3 ~4 slot.container 10 netherite_scrap 3
replaceitem block ~0 ~-3 ~4 slot.container 11 ancient_debris 3
replaceitem block ~0 ~-3 ~4 slot.container 12 obsidian 13
replaceitem block ~0 ~-3 ~4 slot.container 13 crying_obsidian 10
replaceitem block ~0 ~-3 ~4 slot.container 14 golden_apple 7
loot insert ~0 ~-3 ~4 loot "rsf/basalt_deltas"
loot insert ~0 ~-3 ~4 loot "chests/bastion_treasure"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 magma_cream 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 blaze_rod 12
replaceitem block ~0 ~-3 ~-4 slot.container 2 ghast_tear 9
replaceitem block ~0 ~-3 ~-4 slot.container 3 gold_nugget 22
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 11
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 10
replaceitem block ~0 ~-3 ~-4 slot.container 9 gold_ingot 18
replaceitem block ~0 ~-3 ~-4 slot.container 10 netherite_scrap 2
replaceitem block ~0 ~-3 ~-4 slot.container 11 ancient_debris 2
replaceitem block ~0 ~-3 ~-4 slot.container 12 obsidian 12
replaceitem block ~0 ~-3 ~-4 slot.container 13 crying_obsidian 9
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 6
loot insert ~0 ~-3 ~-4 loot "rsf/basalt_deltas"
loot insert ~0 ~-3 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 polished_blackstone_brick_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 polished_basalt []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 basalt []
setblock ~-7 ~6 ~-8 soul_lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 basalt []
setblock ~-7 ~6 ~8 soul_lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 basalt []
setblock ~7 ~6 ~-8 soul_lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 basalt []
setblock ~7 ~6 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~7 ~8 ~6 ~7 polished_basalt []
fill ~7 ~0 ~7 ~7 ~4 ~7 basalt []
setblock ~8 ~7 ~7 magma []
setblock ~8 ~8 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 4 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 5 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 9 diamond 3
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 15
replaceitem block ~-4 ~1 ~5 slot.container 12 netherite_scrap 6
replaceitem block ~-4 ~1 ~5 slot.container 13 ancient_debris 6
replaceitem block ~-4 ~1 ~5 slot.container 14 obsidian 16
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 11
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 coal 13
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 9 diamond 8
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 12 netherite_scrap 4
replaceitem block ~4 ~1 ~5 slot.container 13 ancient_debris 4
replaceitem block ~4 ~1 ~5 slot.container 14 obsidian 14
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
