# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4044/4224 | 主题内编号: b076/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·阶梯高台图腾战阵 (basalt_deltas_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~12 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~12 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_basalt [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_basalt [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 polished_basalt []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 ancient_debris []
setblock ~-3 ~-4 ~-4 soul_campfire []
setblock ~3 ~-4 ~4 soul_campfire []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 ender_pearl 5
replaceitem block ~0 ~-2 ~4 slot.container 1 bone 12
replaceitem block ~0 ~-2 ~4 slot.container 2 coal 15
replaceitem block ~0 ~-2 ~4 slot.container 3 gunpowder 14
replaceitem block ~0 ~-2 ~4 slot.container 4 magma_cream 19
replaceitem block ~0 ~-2 ~4 slot.container 5 blaze_rod 14
replaceitem block ~0 ~-2 ~4 slot.container 9 crying_obsidian 8
replaceitem block ~0 ~-2 ~4 slot.container 10 golden_apple 5
replaceitem block ~0 ~-2 ~4 slot.container 11 fire_charge 12
replaceitem block ~0 ~-2 ~4 slot.container 12 blackstone 29
replaceitem block ~0 ~-2 ~4 slot.container 13 diamond 8
replaceitem block ~0 ~-2 ~4 slot.container 14 lantern 6
loot insert ~0 ~-2 ~4 loot "rsf/basalt_deltas"
loot insert ~0 ~-2 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 polished_basalt []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 polished_blackstone_bricks []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 nether_brick []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 polished_blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 polished_blackstone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 polished_basalt []
fill ~0 ~15 ~0 ~0 ~15 ~0 ancient_debris []
setblock ~0 ~16 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 chiseled_polished_blackstone []
setblock ~0 ~4 ~-8 shroomlight []
setblock ~0 ~5 ~-8 soul_campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 chiseled_polished_blackstone []
setblock ~0 ~4 ~8 shroomlight []
setblock ~0 ~5 ~8 soul_campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_polished_blackstone []
setblock ~-7 ~4 ~0 shroomlight []
setblock ~-7 ~5 ~0 soul_campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_polished_blackstone []
setblock ~7 ~4 ~0 shroomlight []
setblock ~7 ~5 ~0 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~7 ~8 ~9 ~7 polished_basalt []
fill ~7 ~0 ~7 ~7 ~7 ~7 basalt []
setblock ~8 ~10 ~7 magma []
setblock ~8 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 ancient_debris []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 2 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 4 magma_cream 14
replaceitem block ~-4 ~1 ~5 slot.container 5 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 9 ancient_debris 6
replaceitem block ~-4 ~1 ~5 slot.container 10 obsidian 16
replaceitem block ~-4 ~1 ~5 slot.container 11 crying_obsidian 6
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 3
replaceitem block ~-4 ~1 ~5 slot.container 13 fire_charge 10
replaceitem block ~-4 ~1 ~5 slot.container 14 blackstone 27
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 coal 13
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 9 ancient_debris 4
replaceitem block ~4 ~1 ~5 slot.container 10 obsidian 14
replaceitem block ~4 ~1 ~5 slot.container 11 crying_obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 8
replaceitem block ~4 ~1 ~5 slot.container 13 fire_charge 8
replaceitem block ~4 ~1 ~5 slot.container 14 blackstone 25
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
