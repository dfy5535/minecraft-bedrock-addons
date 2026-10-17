# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4048/4224 | 主题内编号: b080/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·悬灯祈福图腾花坛 (basalt_deltas_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~11 ~7 air [] replace fire
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 polished_basalt [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 polished_basalt [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 polished_basalt []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 polished_blackstone_slab []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 nether_brick []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 polished_blackstone_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 nether_brick []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 polished_blackstone_brick_slab []
setblock ~0 ~12 ~0 ancient_debris []
setblock ~0 ~13 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_polished_blackstone []
setblock ~0 ~4 ~-7 shroomlight []
setblock ~0 ~5 ~-7 soul_campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_polished_blackstone []
setblock ~0 ~4 ~7 shroomlight []
setblock ~0 ~5 ~7 soul_campfire []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 chiseled_polished_blackstone []
setblock ~-6 ~4 ~0 shroomlight []
setblock ~-6 ~5 ~0 soul_campfire []
fill ~6 ~0 ~0 ~6 ~3 ~0 chiseled_polished_blackstone []
setblock ~6 ~4 ~0 shroomlight []
setblock ~6 ~5 ~0 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~7 ~0 ~7 ~7 ~8 ~7 polished_basalt []
fill ~6 ~0 ~7 ~6 ~6 ~7 basalt []
setblock ~7 ~9 ~7 magma []
setblock ~7 ~10 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 magma_cream 14
replaceitem block ~-3 ~1 ~4 slot.container 1 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 3 gold_nugget 19
replaceitem block ~-3 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 9 crying_obsidian 8
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-3 ~1 ~4 slot.container 11 fire_charge 12
replaceitem block ~-3 ~1 ~4 slot.container 12 blackstone 29
replaceitem block ~-3 ~1 ~4 slot.container 13 diamond 8
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 6
loot insert ~-3 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 1 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 11
replaceitem block ~3 ~1 ~4 slot.container 3 bone 10
replaceitem block ~3 ~1 ~4 slot.container 4 coal 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 9 crying_obsidian 6
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 11 fire_charge 10
replaceitem block ~3 ~1 ~4 slot.container 12 blackstone 27
replaceitem block ~3 ~1 ~4 slot.container 13 diamond 6
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 11
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~1 ~4 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
