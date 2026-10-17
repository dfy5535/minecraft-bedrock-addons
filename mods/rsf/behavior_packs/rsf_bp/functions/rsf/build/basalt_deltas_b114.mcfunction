# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4082/4224 | 主题内编号: b114/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双联拱顶植物培育馆 (basalt_deltas_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 polished_basalt []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 polished_blackstone_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 polished_blackstone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 polished_basalt []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 polished_basalt []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 magma []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~9 ~0 ~8 ~9 ~7 ~8 polished_basalt []
fill ~8 ~0 ~8 ~8 ~5 ~8 basalt []
setblock ~9 ~8 ~8 magma []
setblock ~9 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 6
replaceitem block ~-5 ~1 ~4 slot.container 1 gold_nugget 19
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 coal 18
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 17
replaceitem block ~-5 ~1 ~4 slot.container 9 fire_charge 9
replaceitem block ~-5 ~1 ~4 slot.container 10 blackstone 26
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 5
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 17
replaceitem block ~-5 ~1 ~4 slot.container 14 netherite_scrap 8
loot insert ~-5 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 11
replaceitem block ~5 ~1 ~4 slot.container 1 bone 10
replaceitem block ~5 ~1 ~4 slot.container 2 coal 13
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 4 magma_cream 17
replaceitem block ~5 ~1 ~4 slot.container 5 blaze_rod 12
replaceitem block ~5 ~1 ~4 slot.container 9 fire_charge 14
replaceitem block ~5 ~1 ~4 slot.container 10 blackstone 24
replaceitem block ~5 ~1 ~4 slot.container 11 diamond 3
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 8
replaceitem block ~5 ~1 ~4 slot.container 13 gold_ingot 15
replaceitem block ~5 ~1 ~4 slot.container 14 netherite_scrap 6
loot insert ~5 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~4 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
summon strider ~0 ~2 ~0
