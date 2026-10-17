# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4068/4224 | 主题内编号: b100/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·半地下暗堡火力点 (basalt_deltas_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_basalt [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 polished_basalt [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 polished_basalt []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 magma_cream 19
replaceitem block ~2 ~-3 ~3 slot.container 1 blaze_rod 14
replaceitem block ~2 ~-3 ~3 slot.container 2 ghast_tear 11
replaceitem block ~2 ~-3 ~3 slot.container 3 gold_nugget 16
replaceitem block ~2 ~-3 ~3 slot.container 4 ender_pearl 5
replaceitem block ~2 ~-3 ~3 slot.container 5 bone 12
replaceitem block ~2 ~-3 ~3 slot.container 9 gold_ingot 12
replaceitem block ~2 ~-3 ~3 slot.container 10 netherite_scrap 3
replaceitem block ~2 ~-3 ~3 slot.container 11 ancient_debris 3
replaceitem block ~2 ~-3 ~3 slot.container 12 obsidian 13
replaceitem block ~2 ~-3 ~3 slot.container 13 crying_obsidian 10
replaceitem block ~2 ~-3 ~3 slot.container 14 golden_apple 7
loot insert ~2 ~-3 ~3 loot "rsf/basalt_deltas"
loot insert ~2 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 polished_basalt []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 polished_blackstone_bricks []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 nether_brick_fence []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~-4 ~7 ~-5 chiseled_polished_blackstone []
setblock ~-4 ~8 ~-5 soul_campfire []
setblock ~-4 ~7 ~5 chiseled_polished_blackstone []
setblock ~-4 ~8 ~5 soul_campfire []
setblock ~4 ~7 ~-5 chiseled_polished_blackstone []
setblock ~4 ~8 ~-5 soul_campfire []
setblock ~4 ~7 ~5 chiseled_polished_blackstone []
setblock ~4 ~8 ~5 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 nether_brick_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~0 ~6 ~7 ~8 ~6 polished_basalt []
fill ~6 ~0 ~6 ~6 ~6 ~6 basalt []
setblock ~7 ~9 ~6 magma []
setblock ~7 ~10 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-3 ~1 ~4 slot.container 2 coal 18
replaceitem block ~-3 ~1 ~4 slot.container 3 gunpowder 17
replaceitem block ~-3 ~1 ~4 slot.container 4 magma_cream 14
replaceitem block ~-3 ~1 ~4 slot.container 5 blaze_rod 9
replaceitem block ~-3 ~1 ~4 slot.container 9 crying_obsidian 7
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 4
replaceitem block ~-3 ~1 ~4 slot.container 11 fire_charge 11
replaceitem block ~-3 ~1 ~4 slot.container 12 blackstone 28
replaceitem block ~-3 ~1 ~4 slot.container 13 diamond 7
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 12
loot insert ~-3 ~1 ~4 loot "rsf/basalt_deltas"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 coal 13
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 magma_cream 17
replaceitem block ~3 ~1 ~4 slot.container 3 blaze_rod 12
replaceitem block ~3 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 5 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 9 crying_obsidian 12
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~3 ~1 ~4 slot.container 11 fire_charge 9
replaceitem block ~3 ~1 ~4 slot.container 12 blackstone 26
replaceitem block ~3 ~1 ~4 slot.container 13 diamond 5
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 10
loot insert ~3 ~1 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
