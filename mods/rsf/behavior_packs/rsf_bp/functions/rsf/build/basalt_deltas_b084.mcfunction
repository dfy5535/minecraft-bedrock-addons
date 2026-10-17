# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4052/4224 | 主题内编号: b084/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·露天采石场与矿道库 (basalt_deltas_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_basalt [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_basalt [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 nether_brick []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 magma_cream 19
replaceitem block ~3 ~-3 ~4 slot.container 1 blaze_rod 14
replaceitem block ~3 ~-3 ~4 slot.container 2 ghast_tear 11
replaceitem block ~3 ~-3 ~4 slot.container 3 gold_nugget 16
replaceitem block ~3 ~-3 ~4 slot.container 4 ender_pearl 5
replaceitem block ~3 ~-3 ~4 slot.container 5 bone 12
replaceitem block ~3 ~-3 ~4 slot.container 9 gold_ingot 14
replaceitem block ~3 ~-3 ~4 slot.container 10 netherite_scrap 5
replaceitem block ~3 ~-3 ~4 slot.container 11 ancient_debris 5
replaceitem block ~3 ~-3 ~4 slot.container 12 obsidian 15
replaceitem block ~3 ~-3 ~4 slot.container 13 crying_obsidian 12
replaceitem block ~3 ~-3 ~4 slot.container 14 golden_apple 2
loot insert ~3 ~-3 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 polished_basalt []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 chiseled_polished_blackstone []
setblock ~-5 ~9 ~-6 soul_campfire []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 chiseled_polished_blackstone []
setblock ~-5 ~9 ~6 soul_campfire []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 chiseled_polished_blackstone []
setblock ~5 ~9 ~-6 soul_campfire []
fill ~5 ~6 ~6 ~5 ~8 ~6 chiseled_polished_blackstone []
setblock ~5 ~9 ~6 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 nether_brick_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~8 ~0 ~9 ~8 ~7 ~9 polished_basalt []
fill ~7 ~0 ~9 ~7 ~5 ~9 basalt []
setblock ~8 ~8 ~9 magma []
setblock ~8 ~9 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 2 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 4 magma_cream 14
replaceitem block ~-4 ~1 ~5 slot.container 5 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 9 fire_charge 14
replaceitem block ~-4 ~1 ~5 slot.container 10 blackstone 24
replaceitem block ~-4 ~1 ~5 slot.container 11 diamond 3
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 15
replaceitem block ~-4 ~1 ~5 slot.container 14 netherite_scrap 6
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 coal 13
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 9 fire_charge 12
replaceitem block ~4 ~1 ~5 slot.container 10 blackstone 29
replaceitem block ~4 ~1 ~5 slot.container 11 diamond 8
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 14 netherite_scrap 4
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~-3 ~0
