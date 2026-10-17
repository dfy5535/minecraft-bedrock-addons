# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4022/4224 | 主题内编号: b054/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·切石与伐木工匠棚屋 (basalt_deltas_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace fire
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 blackstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 polished_basalt []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 polished_blackstone_bricks []
fill ~2 ~1 ~-5 ~5 ~8 ~5 polished_blackstone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 polished_basalt []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 polished_blackstone_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 polished_basalt []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 magma []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~8 ~8 ~7 ~8 polished_basalt []
fill ~7 ~0 ~8 ~7 ~5 ~8 basalt []
setblock ~8 ~8 ~8 magma []
setblock ~8 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 coal 18
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 17
replaceitem block ~-4 ~1 ~4 slot.container 2 magma_cream 14
replaceitem block ~-4 ~1 ~4 slot.container 3 blaze_rod 9
replaceitem block ~-4 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~4 slot.container 9 fire_charge 12
replaceitem block ~-4 ~1 ~4 slot.container 10 blackstone 29
replaceitem block ~-4 ~1 ~4 slot.container 11 diamond 8
replaceitem block ~-4 ~1 ~4 slot.container 12 lantern 6
replaceitem block ~-4 ~1 ~4 slot.container 13 gold_ingot 13
replaceitem block ~-4 ~1 ~4 slot.container 14 netherite_scrap 4
loot insert ~-4 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 magma_cream 17
replaceitem block ~4 ~1 ~4 slot.container 1 blaze_rod 12
replaceitem block ~4 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 11
replaceitem block ~4 ~1 ~4 slot.container 5 bone 10
replaceitem block ~4 ~1 ~4 slot.container 9 fire_charge 10
replaceitem block ~4 ~1 ~4 slot.container 10 blackstone 27
replaceitem block ~4 ~1 ~4 slot.container 11 diamond 6
replaceitem block ~4 ~1 ~4 slot.container 12 lantern 11
replaceitem block ~4 ~1 ~4 slot.container 13 gold_ingot 18
replaceitem block ~4 ~1 ~4 slot.container 14 netherite_scrap 2
loot insert ~4 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~4 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~2 ~0
