# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4038/4224 | 主题内编号: b070/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·风化坍塌阶梯祭台 (basalt_deltas_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 blackstone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 ghast_tear 11
replaceitem block ~3 ~-2 ~4 slot.container 1 gold_nugget 16
replaceitem block ~3 ~-2 ~4 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-2 ~4 slot.container 3 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 4 coal 15
replaceitem block ~3 ~-2 ~4 slot.container 5 gunpowder 14
replaceitem block ~3 ~-2 ~4 slot.container 9 diamond 4
replaceitem block ~3 ~-2 ~4 slot.container 10 lantern 9
replaceitem block ~3 ~-2 ~4 slot.container 11 gold_ingot 16
replaceitem block ~3 ~-2 ~4 slot.container 12 netherite_scrap 7
replaceitem block ~3 ~-2 ~4 slot.container 13 ancient_debris 7
replaceitem block ~3 ~-2 ~4 slot.container 14 obsidian 10
loot insert ~3 ~-2 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~-2 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 polished_blackstone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 polished_basalt []
fill ~-3 ~5 ~-4 ~3 ~7 ~4 blackstone []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 polished_blackstone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 polished_blackstone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 basalt []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 basalt []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 basalt []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 basalt []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~7 ~8 ~8 ~7 polished_basalt []
fill ~7 ~0 ~7 ~7 ~6 ~7 basalt []
setblock ~8 ~9 ~7 magma []
setblock ~8 ~10 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 ancient_debris []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 2 magma_cream 14
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 9 crying_obsidian 12
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 11 fire_charge 9
replaceitem block ~-4 ~1 ~5 slot.container 12 blackstone 26
replaceitem block ~-4 ~1 ~5 slot.container 13 diamond 5
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 10
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 11
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 crying_obsidian 10
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 11 fire_charge 14
replaceitem block ~4 ~1 ~5 slot.container 12 blackstone 24
replaceitem block ~4 ~1 ~5 slot.container 13 diamond 3
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 8
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
