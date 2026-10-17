# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4027/4224 | 主题内编号: b059/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·阶梯金字塔法老墓室 (basalt_deltas_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 blackstone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 blackstone [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 blackstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 magma []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_basalt []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 polished_blackstone_bricks []
setblock ~0 ~-7 ~0 ancient_debris []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 bone 12
replaceitem block ~0 ~-4 ~-5 slot.container 1 coal 15
replaceitem block ~0 ~-4 ~-5 slot.container 2 gunpowder 14
replaceitem block ~0 ~-4 ~-5 slot.container 3 magma_cream 19
replaceitem block ~0 ~-4 ~-5 slot.container 4 blaze_rod 14
replaceitem block ~0 ~-4 ~-5 slot.container 5 ghast_tear 11
replaceitem block ~0 ~-4 ~-5 slot.container 9 blackstone 29
replaceitem block ~0 ~-4 ~-5 slot.container 10 diamond 8
replaceitem block ~0 ~-4 ~-5 slot.container 11 lantern 6
replaceitem block ~0 ~-4 ~-5 slot.container 12 gold_ingot 13
replaceitem block ~0 ~-4 ~-5 slot.container 13 netherite_scrap 4
replaceitem block ~0 ~-4 ~-5 slot.container 14 ancient_debris 4
loot insert ~0 ~-4 ~-5 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~-5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 blackstone []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 polished_blackstone_bricks []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 polished_basalt []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 polished_blackstone_bricks []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 polished_basalt []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 polished_basalt []
setblock ~-8 ~6 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 polished_basalt []
setblock ~-8 ~6 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 polished_basalt []
setblock ~8 ~6 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 polished_basalt []
setblock ~8 ~6 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~9 ~0 ~9 ~9 ~7 ~9 polished_basalt []
fill ~8 ~0 ~9 ~8 ~5 ~9 basalt []
setblock ~9 ~8 ~9 magma []
setblock ~9 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 ancient_debris []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 coal 18
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 17
replaceitem block ~5 ~1 ~6 slot.container 5 magma_cream 14
replaceitem block ~5 ~1 ~6 slot.container 9 netherite_scrap 4
replaceitem block ~5 ~1 ~6 slot.container 10 ancient_debris 4
replaceitem block ~5 ~1 ~6 slot.container 11 obsidian 14
replaceitem block ~5 ~1 ~6 slot.container 12 crying_obsidian 11
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 8
replaceitem block ~5 ~1 ~6 slot.container 14 fire_charge 8
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
