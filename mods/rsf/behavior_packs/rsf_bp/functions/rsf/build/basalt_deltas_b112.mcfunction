# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4080/4224 | 主题内编号: b112/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·U型回廊学者修道院 (basalt_deltas_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_basalt [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_basalt [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 nether_brick []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 ender_pearl 5
replaceitem block ~3 ~-2 ~4 slot.container 1 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 2 coal 15
replaceitem block ~3 ~-2 ~4 slot.container 3 gunpowder 14
replaceitem block ~3 ~-2 ~4 slot.container 4 magma_cream 19
replaceitem block ~3 ~-2 ~4 slot.container 5 blaze_rod 14
replaceitem block ~3 ~-2 ~4 slot.container 9 crying_obsidian 8
replaceitem block ~3 ~-2 ~4 slot.container 10 golden_apple 5
replaceitem block ~3 ~-2 ~4 slot.container 11 fire_charge 12
replaceitem block ~3 ~-2 ~4 slot.container 12 blackstone 29
replaceitem block ~3 ~-2 ~4 slot.container 13 diamond 8
replaceitem block ~3 ~-2 ~4 slot.container 14 lantern 6
loot insert ~3 ~-2 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~-2 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 polished_basalt []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 polished_blackstone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 polished_blackstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 polished_blackstone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 polished_blackstone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 polished_blackstone_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 polished_blackstone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 chiseled_polished_blackstone []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 chiseled_polished_blackstone []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 polished_blackstone_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~7 ~8 ~10 ~7 polished_basalt []
fill ~7 ~0 ~7 ~7 ~8 ~7 basalt []
setblock ~8 ~11 ~7 magma []
setblock ~8 ~12 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 magma_cream 14
replaceitem block ~-4 ~1 ~5 slot.container 1 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 2 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 3 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 8
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 18
replaceitem block ~-4 ~1 ~5 slot.container 10 netherite_scrap 2
replaceitem block ~-4 ~1 ~5 slot.container 11 ancient_debris 2
replaceitem block ~-4 ~1 ~5 slot.container 12 obsidian 12
replaceitem block ~-4 ~1 ~5 slot.container 13 crying_obsidian 9
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 1 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 11
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 coal 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 10 netherite_scrap 7
replaceitem block ~4 ~1 ~5 slot.container 11 ancient_debris 7
replaceitem block ~4 ~1 ~5 slot.container 12 obsidian 10
replaceitem block ~4 ~1 ~5 slot.container 13 crying_obsidian 7
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
