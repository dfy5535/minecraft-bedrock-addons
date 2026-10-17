# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4016/4224 | 主题内编号: b048/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·阶梯王座巅峰试炼台 (basalt_deltas_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace fire
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 polished_basalt [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 polished_basalt [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 nether_brick []
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 polished_blackstone_bricks []
setblock ~0 ~-5 ~0 shroomlight []
fill ~0 ~-4 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_campfire []
setblock ~2 ~-4 ~0 soul_campfire []
setblock ~0 ~-2 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-5 slot.container 0 ghast_tear 11
replaceitem block ~0 ~-2 ~-5 slot.container 1 gold_nugget 16
replaceitem block ~0 ~-2 ~-5 slot.container 2 ender_pearl 5
replaceitem block ~0 ~-2 ~-5 slot.container 3 bone 12
replaceitem block ~0 ~-2 ~-5 slot.container 4 coal 15
replaceitem block ~0 ~-2 ~-5 slot.container 5 gunpowder 14
replaceitem block ~0 ~-2 ~-5 slot.container 9 crying_obsidian 7
replaceitem block ~0 ~-2 ~-5 slot.container 10 golden_apple 4
replaceitem block ~0 ~-2 ~-5 slot.container 11 fire_charge 11
replaceitem block ~0 ~-2 ~-5 slot.container 12 blackstone 28
replaceitem block ~0 ~-2 ~-5 slot.container 13 diamond 7
replaceitem block ~0 ~-2 ~-5 slot.container 14 lantern 12
loot insert ~0 ~-2 ~-5 loot "rsf/basalt_deltas"
loot insert ~0 ~-2 ~-5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 polished_basalt []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 polished_blackstone_bricks []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 nether_brick []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 polished_blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 chiseled_polished_blackstone []
setblock ~-6 ~11 ~-7 soul_campfire []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 chiseled_polished_blackstone []
setblock ~-6 ~11 ~7 soul_campfire []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 chiseled_polished_blackstone []
setblock ~6 ~11 ~-7 soul_campfire []
fill ~6 ~8 ~7 ~6 ~10 ~7 chiseled_polished_blackstone []
setblock ~6 ~11 ~7 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 chiseled_polished_blackstone []
setblock ~0 ~4 ~-9 shroomlight []
setblock ~0 ~5 ~-9 soul_campfire []
fill ~0 ~0 ~9 ~0 ~3 ~9 chiseled_polished_blackstone []
setblock ~0 ~4 ~9 shroomlight []
setblock ~0 ~5 ~9 soul_campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_polished_blackstone []
setblock ~-8 ~4 ~0 shroomlight []
setblock ~-8 ~5 ~0 soul_campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_polished_blackstone []
setblock ~8 ~4 ~0 shroomlight []
setblock ~8 ~5 ~0 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x10x2) ---
fill ~9 ~0 ~10 ~9 ~6 ~10 polished_basalt []
fill ~8 ~0 ~10 ~8 ~4 ~10 basalt []
setblock ~9 ~7 ~10 magma []
setblock ~9 ~8 ~10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 ancient_debris []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 magma_cream 14
replaceitem block ~-5 ~1 ~6 slot.container 1 blaze_rod 9
replaceitem block ~-5 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 3 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 9 diamond 7
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 12
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 12
replaceitem block ~-5 ~1 ~6 slot.container 12 netherite_scrap 3
replaceitem block ~-5 ~1 ~6 slot.container 13 ancient_debris 3
replaceitem block ~-5 ~1 ~6 slot.container 14 obsidian 13
loot insert ~-5 ~1 ~6 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~5 ~1 ~6 slot.container 1 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 coal 13
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 9 diamond 5
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 17
replaceitem block ~5 ~1 ~6 slot.container 12 netherite_scrap 8
replaceitem block ~5 ~1 ~6 slot.container 13 ancient_debris 1
replaceitem block ~5 ~1 ~6 slot.container 14 obsidian 11
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~6 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~-2 ~0
