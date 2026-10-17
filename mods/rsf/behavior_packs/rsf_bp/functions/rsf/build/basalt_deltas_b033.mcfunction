# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4001/4224 | 主题内编号: b033/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·太阳金顶高耸方尖碑 (basalt_deltas_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~15 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~15 ~6 air [] replace fire
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 nether_brick [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 nether_brick [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 polished_blackstone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 blackstone []
setblock ~0 ~-6 ~0 gilded_blackstone []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 gold_nugget 16
replaceitem block ~0 ~-3 ~-2 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 12
replaceitem block ~0 ~-3 ~-2 slot.container 3 coal 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 gunpowder 14
replaceitem block ~0 ~-3 ~-2 slot.container 5 magma_cream 19
replaceitem block ~0 ~-3 ~-2 slot.container 9 lantern 6
replaceitem block ~0 ~-3 ~-2 slot.container 10 gold_ingot 13
replaceitem block ~0 ~-3 ~-2 slot.container 11 netherite_scrap 4
replaceitem block ~0 ~-3 ~-2 slot.container 12 ancient_debris 4
replaceitem block ~0 ~-3 ~-2 slot.container 13 obsidian 14
replaceitem block ~0 ~-3 ~-2 slot.container 14 crying_obsidian 11
loot insert ~0 ~-3 ~-2 loot "rsf/basalt_deltas"
loot insert ~0 ~-3 ~-2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 nether_brick []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 blackstone []
fill ~-1 ~5 ~-2 ~1 ~12 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-2 ~1 ~11 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 blackstone []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 nether_brick []
fill ~0 ~18 ~0 ~0 ~18 ~0 shroomlight []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~5 ~-6 basalt []
setblock ~-5 ~6 ~-6 lantern []
fill ~-5 ~0 ~6 ~-5 ~5 ~6 basalt []
setblock ~-5 ~6 ~6 lantern []
fill ~5 ~0 ~-6 ~5 ~5 ~-6 basalt []
setblock ~5 ~6 ~-6 lantern []
fill ~5 ~0 ~6 ~5 ~5 ~6 basalt []
setblock ~5 ~6 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~0 ~7 ~6 ~6 ~7 polished_basalt []
fill ~5 ~0 ~7 ~5 ~4 ~7 basalt []
setblock ~6 ~7 ~7 magma []
setblock ~6 ~8 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 ancient_debris []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 blaze_rod 9
replaceitem block ~2 ~1 ~3 slot.container 1 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 2 gold_nugget 19
replaceitem block ~2 ~1 ~3 slot.container 3 ender_pearl 8
replaceitem block ~2 ~1 ~3 slot.container 4 bone 15
replaceitem block ~2 ~1 ~3 slot.container 5 coal 18
replaceitem block ~2 ~1 ~3 slot.container 9 obsidian 14
replaceitem block ~2 ~1 ~3 slot.container 10 crying_obsidian 11
replaceitem block ~2 ~1 ~3 slot.container 11 golden_apple 8
replaceitem block ~2 ~1 ~3 slot.container 12 fire_charge 8
replaceitem block ~2 ~1 ~3 slot.container 13 blackstone 25
replaceitem block ~2 ~1 ~3 slot.container 14 diamond 4
loot insert ~2 ~1 ~3 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-3 ~0
