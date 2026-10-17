# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4028/4224 | 主题内编号: b060/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·圆形穹顶万骨祠堂 (basalt_deltas_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_basalt [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_basalt [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 polished_basalt []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 soul_campfire []
setblock ~3 ~-5 ~0 soul_campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ghast_tear 11
replaceitem block ~0 ~-3 ~4 slot.container 1 gold_nugget 16
replaceitem block ~0 ~-3 ~4 slot.container 2 ender_pearl 5
replaceitem block ~0 ~-3 ~4 slot.container 3 bone 12
replaceitem block ~0 ~-3 ~4 slot.container 4 coal 15
replaceitem block ~0 ~-3 ~4 slot.container 5 gunpowder 14
replaceitem block ~0 ~-3 ~4 slot.container 9 fire_charge 10
replaceitem block ~0 ~-3 ~4 slot.container 10 blackstone 27
replaceitem block ~0 ~-3 ~4 slot.container 11 diamond 6
replaceitem block ~0 ~-3 ~4 slot.container 12 lantern 11
replaceitem block ~0 ~-3 ~4 slot.container 13 gold_ingot 18
replaceitem block ~0 ~-3 ~4 slot.container 14 netherite_scrap 2
loot insert ~0 ~-3 ~4 loot "rsf/basalt_deltas"
loot insert ~0 ~-3 ~4 loot "chests/bastion_treasure"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ghast_tear 9
replaceitem block ~0 ~-3 ~-4 slot.container 1 gold_nugget 22
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 11
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 10
replaceitem block ~0 ~-3 ~-4 slot.container 4 coal 13
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 12
replaceitem block ~0 ~-3 ~-4 slot.container 9 fire_charge 9
replaceitem block ~0 ~-3 ~-4 slot.container 10 blackstone 26
replaceitem block ~0 ~-3 ~-4 slot.container 11 diamond 5
replaceitem block ~0 ~-3 ~-4 slot.container 12 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 gold_ingot 17
replaceitem block ~0 ~-3 ~-4 slot.container 14 netherite_scrap 8
loot insert ~0 ~-3 ~-4 loot "rsf/basalt_deltas"
loot insert ~0 ~-3 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 polished_blackstone_bricks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 chiseled_polished_blackstone []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 chiseled_polished_blackstone []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 chiseled_polished_blackstone []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 chiseled_polished_blackstone []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 chiseled_polished_blackstone []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 chiseled_polished_blackstone []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 chiseled_polished_blackstone []
fill ~1 ~1 ~6 ~1 ~7 ~6 chiseled_polished_blackstone []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 chiseled_polished_blackstone []
fill ~3 ~1 ~6 ~3 ~7 ~6 chiseled_polished_blackstone []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 chiseled_polished_blackstone []
fill ~5 ~1 ~6 ~5 ~7 ~6 chiseled_polished_blackstone []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 chiseled_polished_blackstone []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 chiseled_polished_blackstone []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 chiseled_polished_blackstone []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 chiseled_polished_blackstone []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 chiseled_polished_blackstone []
fill ~5 ~1 ~0 ~5 ~7 ~0 chiseled_polished_blackstone []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 chiseled_polished_blackstone []
fill ~5 ~1 ~2 ~5 ~7 ~2 chiseled_polished_blackstone []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 chiseled_polished_blackstone []
fill ~5 ~1 ~4 ~5 ~7 ~4 chiseled_polished_blackstone []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 polished_blackstone_bricks []
fill ~-4 ~9 ~-5 ~4 ~10 ~5 glass []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~8 ~0 ~9 ~8 ~8 ~9 polished_basalt []
fill ~7 ~0 ~9 ~7 ~6 ~9 basalt []
setblock ~8 ~9 ~9 magma []
setblock ~8 ~10 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 2 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 4 magma_cream 14
replaceitem block ~-4 ~1 ~5 slot.container 5 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 9 crying_obsidian 9
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~-4 ~1 ~5 slot.container 11 fire_charge 13
replaceitem block ~-4 ~1 ~5 slot.container 12 blackstone 30
replaceitem block ~-4 ~1 ~5 slot.container 13 diamond 2
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 7
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 coal 13
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 9 crying_obsidian 7
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 11 fire_charge 11
replaceitem block ~4 ~1 ~5 slot.container 12 blackstone 28
replaceitem block ~4 ~1 ~5 slot.container 13 diamond 7
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 12
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~-3 ~0
