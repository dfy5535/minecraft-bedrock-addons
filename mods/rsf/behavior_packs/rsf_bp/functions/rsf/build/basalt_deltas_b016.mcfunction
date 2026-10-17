# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3984/4224 | 主题内编号: b016/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·要塞地底重装暗牢 (basalt_deltas_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 polished_basalt [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 polished_basalt [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 polished_basalt []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 soul_campfire []
setblock ~4 ~-5 ~0 soul_campfire []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 coal 15
replaceitem block ~0 ~-3 ~5 slot.container 1 gunpowder 14
replaceitem block ~0 ~-3 ~5 slot.container 2 magma_cream 19
replaceitem block ~0 ~-3 ~5 slot.container 3 blaze_rod 14
replaceitem block ~0 ~-3 ~5 slot.container 4 ghast_tear 11
replaceitem block ~0 ~-3 ~5 slot.container 5 gold_nugget 16
replaceitem block ~0 ~-3 ~5 slot.container 9 crying_obsidian 6
replaceitem block ~0 ~-3 ~5 slot.container 10 golden_apple 3
replaceitem block ~0 ~-3 ~5 slot.container 11 fire_charge 10
replaceitem block ~0 ~-3 ~5 slot.container 12 blackstone 27
replaceitem block ~0 ~-3 ~5 slot.container 13 diamond 6
replaceitem block ~0 ~-3 ~5 slot.container 14 lantern 11
loot insert ~0 ~-3 ~5 loot "rsf/basalt_deltas"
loot insert ~0 ~-3 ~5 loot "chests/bastion_treasure"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 coal 13
replaceitem block ~0 ~-3 ~-5 slot.container 1 gunpowder 12
replaceitem block ~0 ~-3 ~-5 slot.container 2 magma_cream 17
replaceitem block ~0 ~-3 ~-5 slot.container 3 blaze_rod 12
replaceitem block ~0 ~-3 ~-5 slot.container 4 ghast_tear 9
replaceitem block ~0 ~-3 ~-5 slot.container 5 gold_nugget 22
replaceitem block ~0 ~-3 ~-5 slot.container 9 crying_obsidian 12
replaceitem block ~0 ~-3 ~-5 slot.container 10 golden_apple 2
replaceitem block ~0 ~-3 ~-5 slot.container 11 fire_charge 9
replaceitem block ~0 ~-3 ~-5 slot.container 12 blackstone 26
replaceitem block ~0 ~-3 ~-5 slot.container 13 diamond 5
replaceitem block ~0 ~-3 ~-5 slot.container 14 lantern 10
loot insert ~0 ~-3 ~-5 loot "rsf/basalt_deltas"
loot insert ~0 ~-3 ~-5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 polished_basalt []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 polished_blackstone_bricks []
setblock ~-6 ~10 ~-7 soul_campfire []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 polished_blackstone_bricks []
setblock ~-6 ~10 ~6 soul_campfire []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 polished_blackstone_bricks []
setblock ~5 ~10 ~-7 soul_campfire []
fill ~5 ~1 ~6 ~6 ~9 ~7 polished_blackstone_bricks []
setblock ~5 ~10 ~6 soul_campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 polished_blackstone_bricks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 nether_brick_fence []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 chiseled_polished_blackstone []
setblock ~-6 ~9 ~-7 soul_campfire []
setblock ~-6 ~8 ~7 chiseled_polished_blackstone []
setblock ~-6 ~9 ~7 soul_campfire []
setblock ~6 ~8 ~-7 chiseled_polished_blackstone []
setblock ~6 ~9 ~-7 soul_campfire []
setblock ~6 ~8 ~7 chiseled_polished_blackstone []
setblock ~6 ~9 ~7 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 nether_brick_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~9 ~0 ~8 ~9 ~9 ~8 polished_basalt []
fill ~8 ~0 ~8 ~8 ~7 ~8 basalt []
setblock ~9 ~10 ~8 magma []
setblock ~9 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 magma_cream 14
replaceitem block ~-5 ~1 ~6 slot.container 1 blaze_rod 9
replaceitem block ~-5 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 3 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 9 ancient_debris 2
replaceitem block ~-5 ~1 ~6 slot.container 10 obsidian 12
replaceitem block ~-5 ~1 ~6 slot.container 11 crying_obsidian 9
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~6 slot.container 13 fire_charge 13
replaceitem block ~-5 ~1 ~6 slot.container 14 blackstone 30
loot insert ~-5 ~1 ~6 loot "rsf/basalt_deltas"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~5 ~1 ~6 slot.container 1 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 coal 13
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 9 ancient_debris 7
replaceitem block ~5 ~1 ~6 slot.container 10 obsidian 10
replaceitem block ~5 ~1 ~6 slot.container 11 crying_obsidian 7
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 13 fire_charge 11
replaceitem block ~5 ~1 ~6 slot.container 14 blackstone 28
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
loot insert ~5 ~1 ~6 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
