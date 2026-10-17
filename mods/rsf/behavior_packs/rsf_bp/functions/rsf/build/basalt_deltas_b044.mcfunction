# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4012/4224 | 主题内编号: b044/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双子祭台勇士角斗场 (basalt_deltas_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~10 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~10 ~8 air [] replace fire
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 polished_basalt [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 polished_basalt [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 polished_blackstone_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 nether_brick []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 nether_brick []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 magma_cream 19
replaceitem block ~4 ~-2 ~4 slot.container 1 blaze_rod 14
replaceitem block ~4 ~-2 ~4 slot.container 2 ghast_tear 11
replaceitem block ~4 ~-2 ~4 slot.container 3 gold_nugget 16
replaceitem block ~4 ~-2 ~4 slot.container 4 ender_pearl 5
replaceitem block ~4 ~-2 ~4 slot.container 5 bone 12
replaceitem block ~4 ~-2 ~4 slot.container 9 gold_ingot 16
replaceitem block ~4 ~-2 ~4 slot.container 10 netherite_scrap 7
replaceitem block ~4 ~-2 ~4 slot.container 11 ancient_debris 7
replaceitem block ~4 ~-2 ~4 slot.container 12 obsidian 10
replaceitem block ~4 ~-2 ~4 slot.container 13 crying_obsidian 7
replaceitem block ~4 ~-2 ~4 slot.container 14 golden_apple 4
loot insert ~4 ~-2 ~4 loot "rsf/basalt_deltas"
loot insert ~4 ~-2 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~8 ~6 polished_basalt []
fill ~2 ~1 ~-6 ~6 ~8 ~6 polished_basalt []
fill ~-5 ~1 ~-5 ~-3 ~7 ~5 air []
fill ~3 ~1 ~-5 ~5 ~7 ~5 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 polished_blackstone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-6 ~-6 ~9 ~-6 chiseled_polished_blackstone []
setblock ~-6 ~10 ~-6 soul_campfire []
fill ~-6 ~7 ~6 ~-6 ~9 ~6 chiseled_polished_blackstone []
setblock ~-6 ~10 ~6 soul_campfire []
fill ~6 ~7 ~-6 ~6 ~9 ~-6 chiseled_polished_blackstone []
setblock ~6 ~10 ~-6 soul_campfire []
fill ~6 ~7 ~6 ~6 ~9 ~6 chiseled_polished_blackstone []
setblock ~6 ~10 ~6 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 chiseled_polished_blackstone []
setblock ~-8 ~6 ~-8 soul_campfire []
fill ~-8 ~0 ~8 ~-8 ~5 ~8 chiseled_polished_blackstone []
setblock ~-8 ~6 ~8 soul_campfire []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 chiseled_polished_blackstone []
setblock ~8 ~6 ~-8 soul_campfire []
fill ~8 ~0 ~8 ~8 ~5 ~8 chiseled_polished_blackstone []
setblock ~8 ~6 ~8 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~9 ~0 ~8 ~9 ~7 ~8 polished_basalt []
fill ~8 ~0 ~8 ~8 ~5 ~8 basalt []
setblock ~9 ~8 ~8 magma []
setblock ~9 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~5 slot.container 2 coal 18
replaceitem block ~-5 ~1 ~5 slot.container 3 gunpowder 17
replaceitem block ~-5 ~1 ~5 slot.container 4 magma_cream 14
replaceitem block ~-5 ~1 ~5 slot.container 5 blaze_rod 9
replaceitem block ~-5 ~1 ~5 slot.container 9 fire_charge 9
replaceitem block ~-5 ~1 ~5 slot.container 10 blackstone 26
replaceitem block ~-5 ~1 ~5 slot.container 11 diamond 5
replaceitem block ~-5 ~1 ~5 slot.container 12 lantern 10
replaceitem block ~-5 ~1 ~5 slot.container 13 gold_ingot 17
replaceitem block ~-5 ~1 ~5 slot.container 14 netherite_scrap 8
loot insert ~-5 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 coal 13
replaceitem block ~5 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~5 slot.container 2 magma_cream 17
replaceitem block ~5 ~1 ~5 slot.container 3 blaze_rod 12
replaceitem block ~5 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~5 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~5 ~1 ~5 slot.container 9 fire_charge 14
replaceitem block ~5 ~1 ~5 slot.container 10 blackstone 24
replaceitem block ~5 ~1 ~5 slot.container 11 diamond 3
replaceitem block ~5 ~1 ~5 slot.container 12 lantern 8
replaceitem block ~5 ~1 ~5 slot.container 13 gold_ingot 15
replaceitem block ~5 ~1 ~5 slot.container 14 netherite_scrap 6
loot insert ~5 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~5 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
