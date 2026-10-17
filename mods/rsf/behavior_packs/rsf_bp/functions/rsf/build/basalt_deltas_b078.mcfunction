# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4046/4224 | 主题内编号: b078/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·下沉祭池图腾柱群 (basalt_deltas_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_basalt []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 magma_cream 19
replaceitem block ~-3 ~-3 ~4 slot.container 1 blaze_rod 14
replaceitem block ~-3 ~-3 ~4 slot.container 2 ghast_tear 11
replaceitem block ~-3 ~-3 ~4 slot.container 3 gold_nugget 16
replaceitem block ~-3 ~-3 ~4 slot.container 4 ender_pearl 5
replaceitem block ~-3 ~-3 ~4 slot.container 5 bone 12
replaceitem block ~-3 ~-3 ~4 slot.container 9 crying_obsidian 7
replaceitem block ~-3 ~-3 ~4 slot.container 10 golden_apple 4
replaceitem block ~-3 ~-3 ~4 slot.container 11 fire_charge 11
replaceitem block ~-3 ~-3 ~4 slot.container 12 blackstone 28
replaceitem block ~-3 ~-3 ~4 slot.container 13 diamond 7
replaceitem block ~-3 ~-3 ~4 slot.container 14 lantern 12
loot insert ~-3 ~-3 ~4 loot "rsf/basalt_deltas"
loot insert ~-3 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 polished_basalt []
fill ~0 ~1 ~-6 ~0 ~2 ~6 polished_basalt []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 basalt []
setblock ~-5 ~10 ~-6 soul_lantern []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 basalt []
setblock ~-5 ~10 ~6 soul_lantern []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 basalt []
setblock ~5 ~10 ~-6 soul_lantern []
fill ~5 ~7 ~6 ~5 ~9 ~6 basalt []
setblock ~5 ~10 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 basalt []
setblock ~-7 ~6 ~-8 soul_lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 basalt []
setblock ~-7 ~6 ~8 soul_lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 basalt []
setblock ~7 ~6 ~-8 soul_lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 basalt []
setblock ~7 ~6 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~8 ~0 ~9 ~8 ~6 ~9 polished_basalt []
fill ~7 ~0 ~9 ~7 ~4 ~9 basalt []
setblock ~8 ~7 ~9 magma []
setblock ~8 ~8 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 2 magma_cream 14
replaceitem block ~-4 ~1 ~5 slot.container 3 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 9 diamond 2
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 7
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 12 netherite_scrap 5
replaceitem block ~-4 ~1 ~5 slot.container 13 ancient_debris 5
replaceitem block ~-4 ~1 ~5 slot.container 14 obsidian 15
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 11
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 diamond 7
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 12
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 12 netherite_scrap 3
replaceitem block ~4 ~1 ~5 slot.container 13 ancient_debris 3
replaceitem block ~4 ~1 ~5 slot.container 14 obsidian 13
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~-3 ~0
