# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3969/4224 | 主题内编号: b001/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·三层阶梯圣火祭坛 (basalt_deltas_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~10 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 nether_brick [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 polished_blackstone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 bone 12
replaceitem block ~2 ~-3 ~3 slot.container 1 coal 15
replaceitem block ~2 ~-3 ~3 slot.container 2 gunpowder 14
replaceitem block ~2 ~-3 ~3 slot.container 3 magma_cream 19
replaceitem block ~2 ~-3 ~3 slot.container 4 blaze_rod 14
replaceitem block ~2 ~-3 ~3 slot.container 5 ghast_tear 11
replaceitem block ~2 ~-3 ~3 slot.container 9 netherite_scrap 5
replaceitem block ~2 ~-3 ~3 slot.container 10 ancient_debris 5
replaceitem block ~2 ~-3 ~3 slot.container 11 obsidian 15
replaceitem block ~2 ~-3 ~3 slot.container 12 crying_obsidian 12
replaceitem block ~2 ~-3 ~3 slot.container 13 golden_apple 2
replaceitem block ~2 ~-3 ~3 slot.container 14 fire_charge 9
loot insert ~2 ~-3 ~3 loot "rsf/basalt_deltas"
loot insert ~2 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 nether_brick []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 blackstone []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 polished_blackstone_bricks []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~7 ~-5 ~-4 ~9 ~-5 basalt []
setblock ~-4 ~10 ~-5 lantern []
fill ~-4 ~7 ~5 ~-4 ~9 ~5 basalt []
setblock ~-4 ~10 ~5 lantern []
fill ~4 ~7 ~-5 ~4 ~9 ~-5 basalt []
setblock ~4 ~10 ~-5 lantern []
fill ~4 ~7 ~5 ~4 ~9 ~5 basalt []
setblock ~4 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 basalt []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 basalt []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 basalt []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 basalt []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~7 ~0 ~6 ~7 ~9 ~6 polished_basalt []
fill ~6 ~0 ~6 ~6 ~7 ~6 basalt []
setblock ~7 ~10 ~6 magma []
setblock ~7 ~11 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 1 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 2 gold_nugget 19
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~3 ~1 ~4 slot.container 4 bone 15
replaceitem block ~3 ~1 ~4 slot.container 5 coal 18
replaceitem block ~3 ~1 ~4 slot.container 9 blackstone 24
replaceitem block ~3 ~1 ~4 slot.container 10 diamond 3
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 15
replaceitem block ~3 ~1 ~4 slot.container 13 netherite_scrap 6
replaceitem block ~3 ~1 ~4 slot.container 14 ancient_debris 6
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
summon zombie_pigman ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
