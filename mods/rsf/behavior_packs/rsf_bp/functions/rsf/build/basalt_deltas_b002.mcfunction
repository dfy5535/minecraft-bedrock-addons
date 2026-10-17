# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3970/4224 | 主题内编号: b002/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·十字拱门祈愿圣殿 (basalt_deltas_altar_cross_sanctuary)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 2格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace fire
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 magma []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 polished_basalt []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 polished_basalt []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 blackstone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gilded_blackstone []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 polished_basalt []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 basalt []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 basalt []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 polished_blackstone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~8 ~8 ~10 ~8 polished_basalt []
fill ~7 ~0 ~8 ~7 ~8 ~8 basalt []
setblock ~8 ~11 ~8 magma []
setblock ~8 ~12 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 4 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 5 gunpowder 17
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 10 netherite_scrap 4
replaceitem block ~-4 ~1 ~5 slot.container 11 ancient_debris 4
replaceitem block ~-4 ~1 ~5 slot.container 12 obsidian 14
replaceitem block ~-4 ~1 ~5 slot.container 13 crying_obsidian 11
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 8
loot insert ~-4 ~1 ~5 loot "rsf/basalt_deltas"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 11
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 coal 13
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 magma_cream 17
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 12
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 18
replaceitem block ~4 ~1 ~5 slot.container 10 netherite_scrap 2
replaceitem block ~4 ~1 ~5 slot.container 11 ancient_debris 2
replaceitem block ~4 ~1 ~5 slot.container 12 obsidian 12
replaceitem block ~4 ~1 ~5 slot.container 13 crying_obsidian 9
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
loot insert ~4 ~1 ~5 loot "chests/bastion_treasure"
summon wither_skeleton ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
