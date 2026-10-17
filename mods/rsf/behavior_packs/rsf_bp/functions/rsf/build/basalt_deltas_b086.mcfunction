# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4054/4224 | 主题内编号: b086/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·重装矿石金库碉堡 (basalt_deltas_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 blackstone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 ghast_tear 11
replaceitem block ~3 ~-2 ~4 slot.container 1 gold_nugget 16
replaceitem block ~3 ~-2 ~4 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-2 ~4 slot.container 3 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 4 coal 15
replaceitem block ~3 ~-2 ~4 slot.container 5 gunpowder 14
replaceitem block ~3 ~-2 ~4 slot.container 9 fire_charge 12
replaceitem block ~3 ~-2 ~4 slot.container 10 blackstone 29
replaceitem block ~3 ~-2 ~4 slot.container 11 diamond 8
replaceitem block ~3 ~-2 ~4 slot.container 12 lantern 6
replaceitem block ~3 ~-2 ~4 slot.container 13 gold_ingot 13
replaceitem block ~3 ~-2 ~4 slot.container 14 netherite_scrap 4
loot insert ~3 ~-2 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~-2 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 polished_basalt []
setblock ~-5 ~10 ~-6 soul_lantern []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 polished_basalt []
setblock ~-5 ~10 ~5 soul_lantern []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 polished_basalt []
setblock ~4 ~10 ~-6 soul_lantern []
fill ~4 ~1 ~5 ~5 ~9 ~6 polished_basalt []
setblock ~4 ~10 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 polished_basalt []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 polished_blackstone_wall []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 basalt []
setblock ~-5 ~9 ~-6 soul_lantern []
setblock ~-5 ~8 ~6 basalt []
setblock ~-5 ~9 ~6 soul_lantern []
setblock ~5 ~8 ~-6 basalt []
setblock ~5 ~9 ~-6 soul_lantern []
setblock ~5 ~8 ~6 basalt []
setblock ~5 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 polished_blackstone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~0 ~8 ~8 ~9 ~8 polished_basalt []
fill ~7 ~0 ~8 ~7 ~7 ~8 basalt []
setblock ~8 ~10 ~8 magma []
setblock ~8 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 2 magma_cream 14
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 9 ancient_debris 2
replaceitem block ~-4 ~1 ~5 slot.container 10 obsidian 12
replaceitem block ~-4 ~1 ~5 slot.container 11 crying_obsidian 9
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~-4 ~1 ~5 slot.container 13 fire_charge 13
replaceitem block ~-4 ~1 ~5 slot.container 14 blackstone 30
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 11
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 ancient_debris 7
replaceitem block ~4 ~1 ~5 slot.container 10 obsidian 10
replaceitem block ~4 ~1 ~5 slot.container 11 crying_obsidian 7
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 13 fire_charge 11
replaceitem block ~4 ~1 ~5 slot.container 14 blackstone 28
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
