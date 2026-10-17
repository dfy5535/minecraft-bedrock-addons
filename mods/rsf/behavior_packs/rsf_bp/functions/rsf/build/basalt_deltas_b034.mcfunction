# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4002/4224 | 主题内编号: b034/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双子对称铭文方尖碑 (basalt_deltas_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~14 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~14 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 blackstone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 coal 15
replaceitem block ~3 ~-2 ~2 slot.container 1 gunpowder 14
replaceitem block ~3 ~-2 ~2 slot.container 2 magma_cream 19
replaceitem block ~3 ~-2 ~2 slot.container 3 blaze_rod 14
replaceitem block ~3 ~-2 ~2 slot.container 4 ghast_tear 11
replaceitem block ~3 ~-2 ~2 slot.container 5 gold_nugget 16
replaceitem block ~3 ~-2 ~2 slot.container 9 gold_ingot 13
replaceitem block ~3 ~-2 ~2 slot.container 10 netherite_scrap 4
replaceitem block ~3 ~-2 ~2 slot.container 11 ancient_debris 4
replaceitem block ~3 ~-2 ~2 slot.container 12 obsidian 14
replaceitem block ~3 ~-2 ~2 slot.container 13 crying_obsidian 11
replaceitem block ~3 ~-2 ~2 slot.container 14 golden_apple 8
loot insert ~3 ~-2 ~2 loot "rsf/basalt_deltas"
loot insert ~3 ~-2 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~12 ~4 polished_blackstone_bricks []
fill ~2 ~1 ~-4 ~5 ~12 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~11 ~3 air []
fill ~3 ~1 ~-3 ~4 ~11 ~3 air []
fill ~-2 ~9 ~-1 ~2 ~11 ~1 polished_basalt []
fill ~-3 ~10 ~0 ~3 ~10 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 polished_basalt []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 polished_blackstone_bricks []
fill ~0 ~17 ~0 ~0 ~17 ~0 gilded_blackstone []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_basalt []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~8 ~0 ~5 ~8 ~7 ~5 polished_basalt []
fill ~7 ~0 ~5 ~7 ~5 ~5 basalt []
setblock ~8 ~8 ~5 magma []
setblock ~8 ~9 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~3 slot.container 1 gold_nugget 19
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 4 coal 18
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 17
replaceitem block ~-4 ~1 ~3 slot.container 9 fire_charge 13
replaceitem block ~-4 ~1 ~3 slot.container 10 blackstone 30
replaceitem block ~-4 ~1 ~3 slot.container 11 diamond 2
replaceitem block ~-4 ~1 ~3 slot.container 12 lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 13 gold_ingot 14
replaceitem block ~-4 ~1 ~3 slot.container 14 netherite_scrap 5
loot insert ~-4 ~1 ~3 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 11
replaceitem block ~4 ~1 ~3 slot.container 1 bone 10
replaceitem block ~4 ~1 ~3 slot.container 2 coal 13
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 4 magma_cream 17
replaceitem block ~4 ~1 ~3 slot.container 5 blaze_rod 12
replaceitem block ~4 ~1 ~3 slot.container 9 fire_charge 11
replaceitem block ~4 ~1 ~3 slot.container 10 blackstone 28
replaceitem block ~4 ~1 ~3 slot.container 11 diamond 7
replaceitem block ~4 ~1 ~3 slot.container 12 lantern 12
replaceitem block ~4 ~1 ~3 slot.container 13 gold_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 14 netherite_scrap 3
loot insert ~4 ~1 ~3 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~3 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
