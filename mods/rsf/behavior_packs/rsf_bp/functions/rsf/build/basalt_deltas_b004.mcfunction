# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3972/4224 | 主题内编号: b004/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双子火盆高台神坛 (basalt_deltas_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace fire
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 polished_basalt [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 polished_basalt [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 polished_basalt []
fill ~2 ~1 ~-5 ~6 ~9 ~5 polished_basalt []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 polished_blackstone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 chiseled_polished_blackstone []
setblock ~-6 ~11 ~-5 soul_campfire []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 chiseled_polished_blackstone []
setblock ~-6 ~11 ~5 soul_campfire []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 chiseled_polished_blackstone []
setblock ~6 ~11 ~-5 soul_campfire []
fill ~6 ~8 ~5 ~6 ~10 ~5 chiseled_polished_blackstone []
setblock ~6 ~11 ~5 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 polished_blackstone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_polished_blackstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_polished_blackstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 polished_blackstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~9 ~0 ~6 ~9 ~7 ~6 polished_basalt []
fill ~8 ~0 ~6 ~8 ~5 ~6 basalt []
setblock ~9 ~8 ~6 magma []
setblock ~9 ~9 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 coal 18
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 17
replaceitem block ~-5 ~1 ~4 slot.container 4 magma_cream 14
replaceitem block ~-5 ~1 ~4 slot.container 5 blaze_rod 9
replaceitem block ~-5 ~1 ~4 slot.container 9 fire_charge 11
replaceitem block ~-5 ~1 ~4 slot.container 10 blackstone 28
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 7
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 12
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 14 netherite_scrap 3
loot insert ~-5 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 coal 13
replaceitem block ~5 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 2 magma_cream 17
replaceitem block ~5 ~1 ~4 slot.container 3 blaze_rod 12
replaceitem block ~5 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~5 ~1 ~4 slot.container 5 gold_nugget 22
replaceitem block ~5 ~1 ~4 slot.container 9 fire_charge 9
replaceitem block ~5 ~1 ~4 slot.container 10 blackstone 26
replaceitem block ~5 ~1 ~4 slot.container 11 diamond 5
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~5 ~1 ~4 slot.container 13 gold_ingot 17
replaceitem block ~5 ~1 ~4 slot.container 14 netherite_scrap 8
loot insert ~5 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
