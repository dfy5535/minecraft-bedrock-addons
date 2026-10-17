# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4056/4224 | 主题内编号: b088/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·矿车铁轨转运仓库 (basalt_deltas_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-9 ~6 ~10 ~9 air [] replace lava
fill ~-6 ~0 ~-9 ~6 ~10 ~9 air [] replace fire
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 polished_basalt [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 polished_basalt [] replace lava
fill ~-5 ~0 ~-8 ~5 ~0 ~8 polished_blackstone_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 nether_brick []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 nether_brick []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 ender_pearl 5
replaceitem block ~2 ~-2 ~5 slot.container 1 bone 12
replaceitem block ~2 ~-2 ~5 slot.container 2 coal 15
replaceitem block ~2 ~-2 ~5 slot.container 3 gunpowder 14
replaceitem block ~2 ~-2 ~5 slot.container 4 magma_cream 19
replaceitem block ~2 ~-2 ~5 slot.container 5 blaze_rod 14
replaceitem block ~2 ~-2 ~5 slot.container 9 ancient_debris 7
replaceitem block ~2 ~-2 ~5 slot.container 10 obsidian 10
replaceitem block ~2 ~-2 ~5 slot.container 11 crying_obsidian 7
replaceitem block ~2 ~-2 ~5 slot.container 12 golden_apple 4
replaceitem block ~2 ~-2 ~5 slot.container 13 fire_charge 11
replaceitem block ~2 ~-2 ~5 slot.container 14 blackstone 28
loot insert ~2 ~-2 ~5 loot "rsf/basalt_deltas"
loot insert ~2 ~-2 ~5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~7 ~7 polished_basalt []
fill ~-3 ~1 ~-6 ~3 ~6 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 chiseled_polished_blackstone []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 chiseled_polished_blackstone []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 chiseled_polished_blackstone []
fill ~4 ~1 ~7 ~4 ~7 ~7 chiseled_polished_blackstone []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 nether_brick_fence []
setblock ~4 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-8 ~-5 ~8 ~8 polished_blackstone_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-8 ~5 ~8 ~8 polished_blackstone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-7 ~-4 ~9 ~7 polished_blackstone_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-7 ~4 ~9 ~7 polished_blackstone_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-7 ~3 ~9 ~7 polished_blackstone_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 polished_blackstone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 soul_campfire []
setblock ~2 ~4 ~-10 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~0 ~8 ~7 ~6 ~8 polished_basalt []
fill ~6 ~0 ~8 ~6 ~4 ~8 basalt []
setblock ~7 ~7 ~8 magma []
setblock ~7 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 magma_cream 14
replaceitem block ~-3 ~1 ~6 slot.container 1 blaze_rod 9
replaceitem block ~-3 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-3 ~1 ~6 slot.container 3 gold_nugget 19
replaceitem block ~-3 ~1 ~6 slot.container 4 ender_pearl 8
replaceitem block ~-3 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~6 slot.container 9 diamond 5
replaceitem block ~-3 ~1 ~6 slot.container 10 lantern 10
replaceitem block ~-3 ~1 ~6 slot.container 11 gold_ingot 17
replaceitem block ~-3 ~1 ~6 slot.container 12 netherite_scrap 8
replaceitem block ~-3 ~1 ~6 slot.container 13 ancient_debris 1
replaceitem block ~-3 ~1 ~6 slot.container 14 obsidian 11
loot insert ~-3 ~1 ~6 loot "rsf/basalt_deltas"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~3 ~1 ~6 slot.container 1 gold_nugget 22
replaceitem block ~3 ~1 ~6 slot.container 2 ender_pearl 11
replaceitem block ~3 ~1 ~6 slot.container 3 bone 10
replaceitem block ~3 ~1 ~6 slot.container 4 coal 13
replaceitem block ~3 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~6 slot.container 9 diamond 3
replaceitem block ~3 ~1 ~6 slot.container 10 lantern 8
replaceitem block ~3 ~1 ~6 slot.container 11 gold_ingot 15
replaceitem block ~3 ~1 ~6 slot.container 12 netherite_scrap 6
replaceitem block ~3 ~1 ~6 slot.container 13 ancient_debris 6
replaceitem block ~3 ~1 ~6 slot.container 14 obsidian 16
loot insert ~3 ~1 ~6 loot "rsf/basalt_deltas"
loot insert ~3 ~1 ~6 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
