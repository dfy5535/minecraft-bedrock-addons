# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3976/4224 | 主题内编号: b008/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·凯旋双拱圣物祭坛 (basalt_deltas_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace fire
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 polished_basalt [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 polished_basalt [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 nether_brick []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 polished_basalt []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 polished_blackstone_bricks []
fill ~-5 ~9 ~-5 ~5 ~9 ~5 nether_brick_fence []
fill ~-4 ~9 ~-4 ~4 ~9 ~4 air []
setblock ~-5 ~9 ~-5 chiseled_polished_blackstone []
setblock ~-5 ~10 ~-5 soul_campfire []
setblock ~-5 ~9 ~5 chiseled_polished_blackstone []
setblock ~-5 ~10 ~5 soul_campfire []
setblock ~5 ~9 ~-5 chiseled_polished_blackstone []
setblock ~5 ~10 ~-5 soul_campfire []
setblock ~5 ~9 ~5 chiseled_polished_blackstone []
setblock ~5 ~10 ~5 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_campfire []
setblock ~2 ~4 ~-8 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~7 ~8 ~6 ~7 polished_basalt []
fill ~7 ~0 ~7 ~7 ~4 ~7 basalt []
setblock ~8 ~7 ~7 magma []
setblock ~8 ~8 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 magma_cream 14
replaceitem block ~-4 ~1 ~4 slot.container 1 blaze_rod 9
replaceitem block ~-4 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-4 ~1 ~4 slot.container 3 gold_nugget 19
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~4 slot.container 9 diamond 2
replaceitem block ~-4 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~-4 ~1 ~4 slot.container 11 gold_ingot 14
replaceitem block ~-4 ~1 ~4 slot.container 12 netherite_scrap 5
replaceitem block ~-4 ~1 ~4 slot.container 13 ancient_debris 5
replaceitem block ~-4 ~1 ~4 slot.container 14 obsidian 15
loot insert ~-4 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~4 ~1 ~4 slot.container 1 gold_nugget 22
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 11
replaceitem block ~4 ~1 ~4 slot.container 3 bone 10
replaceitem block ~4 ~1 ~4 slot.container 4 coal 13
replaceitem block ~4 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~4 slot.container 9 diamond 7
replaceitem block ~4 ~1 ~4 slot.container 10 lantern 12
replaceitem block ~4 ~1 ~4 slot.container 11 gold_ingot 12
replaceitem block ~4 ~1 ~4 slot.container 12 netherite_scrap 3
replaceitem block ~4 ~1 ~4 slot.container 13 ancient_debris 3
replaceitem block ~4 ~1 ~4 slot.container 14 obsidian 13
loot insert ~4 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~4 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
