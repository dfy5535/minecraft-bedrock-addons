# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4029/4224 | 主题内编号: b061/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双子封土古墓地宫 (basalt_deltas_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 nether_brick [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 blackstone []
setblock ~0 ~-7 ~0 gilded_blackstone []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 gunpowder 14
replaceitem block ~0 ~-4 ~-3 slot.container 1 magma_cream 19
replaceitem block ~0 ~-4 ~-3 slot.container 2 blaze_rod 14
replaceitem block ~0 ~-4 ~-3 slot.container 3 ghast_tear 11
replaceitem block ~0 ~-4 ~-3 slot.container 4 gold_nugget 16
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 5
replaceitem block ~0 ~-4 ~-3 slot.container 9 obsidian 10
replaceitem block ~0 ~-4 ~-3 slot.container 10 crying_obsidian 7
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 4
replaceitem block ~0 ~-4 ~-3 slot.container 12 fire_charge 11
replaceitem block ~0 ~-4 ~-3 slot.container 13 blackstone 28
replaceitem block ~0 ~-4 ~-3 slot.container 14 diamond 7
loot insert ~0 ~-4 ~-3 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~-3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 nether_brick []
fill ~2 ~1 ~-5 ~6 ~8 ~5 nether_brick []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 blackstone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 blackstone []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 polished_blackstone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 shroomlight []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 blackstone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~9 ~0 ~6 ~9 ~9 ~6 polished_basalt []
fill ~8 ~0 ~6 ~8 ~7 ~6 basalt []
setblock ~9 ~10 ~6 magma []
setblock ~9 ~11 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 15
replaceitem block ~5 ~1 ~4 slot.container 1 coal 18
replaceitem block ~5 ~1 ~4 slot.container 2 gunpowder 17
replaceitem block ~5 ~1 ~4 slot.container 3 magma_cream 14
replaceitem block ~5 ~1 ~4 slot.container 4 blaze_rod 9
replaceitem block ~5 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~5 ~1 ~4 slot.container 9 blackstone 28
replaceitem block ~5 ~1 ~4 slot.container 10 diamond 7
replaceitem block ~5 ~1 ~4 slot.container 11 lantern 12
replaceitem block ~5 ~1 ~4 slot.container 12 gold_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 13 netherite_scrap 3
replaceitem block ~5 ~1 ~4 slot.container 14 ancient_debris 3
loot insert ~5 ~1 ~4 loot "rsf/basalt_deltas"
summon zombie_pigman ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
