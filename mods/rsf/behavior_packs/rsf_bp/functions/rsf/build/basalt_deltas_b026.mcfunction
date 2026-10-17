# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3994/4224 | 主题内编号: b026/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·尖顶信标引航高塔 (basalt_deltas_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~15 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~15 ~6 air [] replace fire
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 blackstone []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 coal 15
replaceitem block ~1 ~-2 ~2 slot.container 1 gunpowder 14
replaceitem block ~1 ~-2 ~2 slot.container 2 magma_cream 19
replaceitem block ~1 ~-2 ~2 slot.container 3 blaze_rod 14
replaceitem block ~1 ~-2 ~2 slot.container 4 ghast_tear 11
replaceitem block ~1 ~-2 ~2 slot.container 5 gold_nugget 16
replaceitem block ~1 ~-2 ~2 slot.container 9 fire_charge 8
replaceitem block ~1 ~-2 ~2 slot.container 10 blackstone 25
replaceitem block ~1 ~-2 ~2 slot.container 11 diamond 4
replaceitem block ~1 ~-2 ~2 slot.container 12 lantern 9
replaceitem block ~1 ~-2 ~2 slot.container 13 gold_ingot 16
replaceitem block ~1 ~-2 ~2 slot.container 14 netherite_scrap 7
loot insert ~1 ~-2 ~2 loot "rsf/basalt_deltas"
loot insert ~1 ~-2 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~12 ~4 polished_blackstone_bricks []
fill ~-2 ~1 ~-3 ~2 ~11 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~13 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~13 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~13 ~4 air []
fill ~3 ~1 ~4 ~3 ~13 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~12 ~-3 basalt []
fill ~2 ~1 ~-3 ~2 ~12 ~-3 basalt []
fill ~-2 ~1 ~3 ~-2 ~12 ~3 basalt []
fill ~2 ~1 ~3 ~2 ~12 ~3 basalt []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 polished_basalt []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 polished_blackstone_bricks []
fill ~0 ~18 ~0 ~0 ~18 ~0 gilded_blackstone []
setblock ~0 ~19 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~11 ~-2 basalt []
fill ~-4 ~0 ~2 ~-4 ~11 ~2 basalt []
fill ~4 ~0 ~-2 ~4 ~11 ~-2 basalt []
fill ~4 ~0 ~2 ~4 ~11 ~2 basalt []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~0 ~6 ~6 ~9 ~6 polished_basalt []
fill ~5 ~0 ~6 ~5 ~7 ~6 basalt []
setblock ~6 ~10 ~6 magma []
setblock ~6 ~11 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 ghast_tear 6
replaceitem block ~-2 ~1 ~3 slot.container 1 gold_nugget 19
replaceitem block ~-2 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-2 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-2 ~1 ~3 slot.container 4 coal 18
replaceitem block ~-2 ~1 ~3 slot.container 5 gunpowder 17
replaceitem block ~-2 ~1 ~3 slot.container 9 ancient_debris 5
replaceitem block ~-2 ~1 ~3 slot.container 10 obsidian 15
replaceitem block ~-2 ~1 ~3 slot.container 11 crying_obsidian 12
replaceitem block ~-2 ~1 ~3 slot.container 12 golden_apple 2
replaceitem block ~-2 ~1 ~3 slot.container 13 fire_charge 9
replaceitem block ~-2 ~1 ~3 slot.container 14 blackstone 26
loot insert ~-2 ~1 ~3 loot "rsf/basalt_deltas"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 ender_pearl 11
replaceitem block ~2 ~1 ~3 slot.container 1 bone 10
replaceitem block ~2 ~1 ~3 slot.container 2 coal 13
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 magma_cream 17
replaceitem block ~2 ~1 ~3 slot.container 5 blaze_rod 12
replaceitem block ~2 ~1 ~3 slot.container 9 ancient_debris 3
replaceitem block ~2 ~1 ~3 slot.container 10 obsidian 13
replaceitem block ~2 ~1 ~3 slot.container 11 crying_obsidian 10
replaceitem block ~2 ~1 ~3 slot.container 12 golden_apple 7
replaceitem block ~2 ~1 ~3 slot.container 13 fire_charge 14
replaceitem block ~2 ~1 ~3 slot.container 14 blackstone 24
loot insert ~2 ~1 ~3 loot "rsf/basalt_deltas"
loot insert ~2 ~1 ~3 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
