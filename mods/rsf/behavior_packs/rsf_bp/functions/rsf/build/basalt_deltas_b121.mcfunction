# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4089/4224 | 主题内编号: b121/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·卫城廊柱王座大殿与地宫 (basalt_deltas_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~12 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~12 ~9 air [] replace fire
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 nether_brick [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 nether_brick [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 nether_brick []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 gunpowder 14
replaceitem block ~0 ~-4 ~5 slot.container 1 magma_cream 19
replaceitem block ~0 ~-4 ~5 slot.container 2 blaze_rod 14
replaceitem block ~0 ~-4 ~5 slot.container 3 ghast_tear 11
replaceitem block ~0 ~-4 ~5 slot.container 4 gold_nugget 16
replaceitem block ~0 ~-4 ~5 slot.container 5 ender_pearl 5
replaceitem block ~0 ~-4 ~5 slot.container 9 lantern 6
replaceitem block ~0 ~-4 ~5 slot.container 10 gold_ingot 13
replaceitem block ~0 ~-4 ~5 slot.container 11 netherite_scrap 4
replaceitem block ~0 ~-4 ~5 slot.container 12 ancient_debris 4
replaceitem block ~0 ~-4 ~5 slot.container 13 obsidian 14
replaceitem block ~0 ~-4 ~5 slot.container 14 crying_obsidian 11
loot insert ~0 ~-4 ~5 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~5 loot "chests/bastion_treasure"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 gunpowder 12
replaceitem block ~0 ~-4 ~-5 slot.container 1 magma_cream 17
replaceitem block ~0 ~-4 ~-5 slot.container 2 blaze_rod 12
replaceitem block ~0 ~-4 ~-5 slot.container 3 ghast_tear 9
replaceitem block ~0 ~-4 ~-5 slot.container 4 gold_nugget 22
replaceitem block ~0 ~-4 ~-5 slot.container 5 ender_pearl 11
replaceitem block ~0 ~-4 ~-5 slot.container 9 lantern 12
replaceitem block ~0 ~-4 ~-5 slot.container 10 gold_ingot 12
replaceitem block ~0 ~-4 ~-5 slot.container 11 netherite_scrap 3
replaceitem block ~0 ~-4 ~-5 slot.container 12 ancient_debris 3
replaceitem block ~0 ~-4 ~-5 slot.container 13 obsidian 13
replaceitem block ~0 ~-4 ~-5 slot.container 14 crying_obsidian 10
loot insert ~0 ~-4 ~-5 loot "rsf/basalt_deltas"
loot insert ~0 ~-4 ~-5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~9 ~7 nether_brick []
fill ~-5 ~1 ~0 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~9 ~-7 basalt []
fill ~-4 ~1 ~-7 ~-4 ~9 ~-7 basalt []
fill ~-2 ~1 ~-7 ~-2 ~9 ~-7 basalt []
fill ~0 ~1 ~-7 ~0 ~9 ~-7 basalt []
fill ~2 ~1 ~-7 ~2 ~9 ~-7 basalt []
fill ~4 ~1 ~-7 ~4 ~9 ~-7 basalt []
fill ~6 ~1 ~-7 ~6 ~9 ~-7 basalt []
fill ~-6 ~9 ~-7 ~6 ~9 ~-1 blackstone []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~10 ~-8 ~-7 ~10 ~8 nether_brick_stairs ["weirdo_direction"=0]
fill ~7 ~10 ~-8 ~7 ~10 ~8 nether_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-7 ~-6 ~11 ~7 nether_brick_stairs ["weirdo_direction"=0]
fill ~6 ~11 ~-7 ~6 ~11 ~7 nether_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~11 ~-7 ~5 ~11 ~7 polished_blackstone_brick_slab []
fill ~0 ~12 ~-8 ~0 ~12 ~8 blackstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 basalt []
setblock ~-8 ~6 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 basalt []
setblock ~-8 ~6 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 basalt []
setblock ~8 ~6 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 basalt []
setblock ~8 ~6 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~9 ~0 ~8 ~9 ~9 ~8 polished_basalt []
fill ~8 ~0 ~8 ~8 ~7 ~8 basalt []
setblock ~9 ~10 ~8 magma []
setblock ~9 ~11 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 1 ghast_tear 6
replaceitem block ~5 ~1 ~6 slot.container 2 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~6 slot.container 4 bone 15
replaceitem block ~5 ~1 ~6 slot.container 5 coal 18
replaceitem block ~5 ~1 ~6 slot.container 9 blackstone 25
replaceitem block ~5 ~1 ~6 slot.container 10 diamond 4
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 9
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 16
replaceitem block ~5 ~1 ~6 slot.container 13 netherite_scrap 7
replaceitem block ~5 ~1 ~6 slot.container 14 ancient_debris 7
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
summon zombie_pigman ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
