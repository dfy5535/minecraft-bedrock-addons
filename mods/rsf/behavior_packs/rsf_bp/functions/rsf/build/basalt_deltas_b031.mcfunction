# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3999/4224 | 主题内编号: b031/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·阶梯圣火烽火台 (basalt_deltas_tower_ziggurat_fire)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~13 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~13 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 magma []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_basalt []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 gold_nugget 16
replaceitem block ~3 ~-3 ~4 slot.container 1 ender_pearl 5
replaceitem block ~3 ~-3 ~4 slot.container 2 bone 12
replaceitem block ~3 ~-3 ~4 slot.container 3 coal 15
replaceitem block ~3 ~-3 ~4 slot.container 4 gunpowder 14
replaceitem block ~3 ~-3 ~4 slot.container 5 magma_cream 19
replaceitem block ~3 ~-3 ~4 slot.container 9 netherite_scrap 7
replaceitem block ~3 ~-3 ~4 slot.container 10 ancient_debris 7
replaceitem block ~3 ~-3 ~4 slot.container 11 obsidian 10
replaceitem block ~3 ~-3 ~4 slot.container 12 crying_obsidian 7
replaceitem block ~3 ~-3 ~4 slot.container 13 golden_apple 4
replaceitem block ~3 ~-3 ~4 slot.container 14 fire_charge 11
loot insert ~3 ~-3 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 blackstone []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 polished_blackstone_bricks []
fill ~-3 ~5 ~-4 ~3 ~10 ~4 polished_basalt []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~10 ~-6 ~-5 ~12 ~-6 polished_basalt []
setblock ~-5 ~13 ~-6 lantern []
fill ~-5 ~10 ~6 ~-5 ~12 ~6 polished_basalt []
setblock ~-5 ~13 ~6 lantern []
fill ~5 ~10 ~-6 ~5 ~12 ~-6 polished_basalt []
setblock ~5 ~13 ~-6 lantern []
fill ~5 ~10 ~6 ~5 ~12 ~6 polished_basalt []
setblock ~5 ~13 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 polished_basalt []
setblock ~-7 ~6 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 polished_basalt []
setblock ~-7 ~6 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 polished_basalt []
setblock ~7 ~6 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 polished_basalt []
setblock ~7 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~7 ~8 ~9 ~7 polished_basalt []
fill ~7 ~0 ~7 ~7 ~7 ~7 basalt []
setblock ~8 ~10 ~7 magma []
setblock ~8 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 14
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~5 slot.container 9 blackstone 26
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 5
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 17
replaceitem block ~4 ~1 ~5 slot.container 13 netherite_scrap 8
replaceitem block ~4 ~1 ~5 slot.container 14 ancient_debris 1
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
summon zombie_pigman ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
