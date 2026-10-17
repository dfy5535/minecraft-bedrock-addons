# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4042/4224 | 主题内编号: b074/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·十字四象图腾柱阵 (basalt_deltas_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 blackstone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gilded_blackstone []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 ghast_tear 11
replaceitem block ~3 ~-2 ~0 slot.container 1 gold_nugget 16
replaceitem block ~3 ~-2 ~0 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-2 ~0 slot.container 3 bone 12
replaceitem block ~3 ~-2 ~0 slot.container 4 coal 15
replaceitem block ~3 ~-2 ~0 slot.container 5 gunpowder 14
replaceitem block ~3 ~-2 ~0 slot.container 9 ancient_debris 2
replaceitem block ~3 ~-2 ~0 slot.container 10 obsidian 12
replaceitem block ~3 ~-2 ~0 slot.container 11 crying_obsidian 9
replaceitem block ~3 ~-2 ~0 slot.container 12 golden_apple 6
replaceitem block ~3 ~-2 ~0 slot.container 13 fire_charge 13
replaceitem block ~3 ~-2 ~0 slot.container 14 blackstone 30
loot insert ~3 ~-2 ~0 loot "rsf/basalt_deltas"
loot insert ~3 ~-2 ~0 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~8 ~-6 ~-5 ~10 ~-6 basalt []
setblock ~-5 ~11 ~-6 soul_lantern []
fill ~-5 ~8 ~6 ~-5 ~10 ~6 basalt []
setblock ~-5 ~11 ~6 soul_lantern []
fill ~5 ~8 ~-6 ~5 ~10 ~-6 basalt []
setblock ~5 ~11 ~-6 soul_lantern []
fill ~5 ~8 ~6 ~5 ~10 ~6 basalt []
setblock ~5 ~11 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 basalt []
setblock ~-7 ~6 ~-8 soul_lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 basalt []
setblock ~-7 ~6 ~8 soul_lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 basalt []
setblock ~7 ~6 ~-8 soul_lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 basalt []
setblock ~7 ~6 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~8 ~8 ~7 ~8 polished_basalt []
fill ~7 ~0 ~8 ~7 ~5 ~8 basalt []
setblock ~8 ~8 ~8 magma []
setblock ~8 ~9 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 4 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 5 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 9 fire_charge 11
replaceitem block ~-4 ~1 ~5 slot.container 10 blackstone 28
replaceitem block ~-4 ~1 ~5 slot.container 11 diamond 7
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 12
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 14 netherite_scrap 3
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 11
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 coal 13
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 9 fire_charge 9
replaceitem block ~4 ~1 ~5 slot.container 10 blackstone 26
replaceitem block ~4 ~1 ~5 slot.container 11 diamond 5
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 17
replaceitem block ~4 ~1 ~5 slot.container 14 netherite_scrap 8
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
