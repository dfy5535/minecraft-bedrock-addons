# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4009/4224 | 主题内编号: b041/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·八角看台古罗马斗技场 (basalt_deltas_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 nether_brick [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 nether_brick [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 shroomlight []
setblock ~-4 ~-5 ~-5 lantern []
setblock ~4 ~-5 ~5 lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 blaze_rod 14
replaceitem block ~0 ~-3 ~5 slot.container 1 ghast_tear 11
replaceitem block ~0 ~-3 ~5 slot.container 2 gold_nugget 16
replaceitem block ~0 ~-3 ~5 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-3 ~5 slot.container 4 bone 12
replaceitem block ~0 ~-3 ~5 slot.container 5 coal 15
replaceitem block ~0 ~-3 ~5 slot.container 9 lantern 8
replaceitem block ~0 ~-3 ~5 slot.container 10 gold_ingot 15
replaceitem block ~0 ~-3 ~5 slot.container 11 netherite_scrap 6
replaceitem block ~0 ~-3 ~5 slot.container 12 ancient_debris 6
replaceitem block ~0 ~-3 ~5 slot.container 13 obsidian 16
replaceitem block ~0 ~-3 ~5 slot.container 14 crying_obsidian 6
loot insert ~0 ~-3 ~5 loot "rsf/basalt_deltas"
loot insert ~0 ~-3 ~5 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 nether_brick []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~8 ~7 air []
fill ~6 ~1 ~7 ~6 ~8 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 basalt []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 basalt []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 basalt []
fill ~5 ~1 ~6 ~5 ~7 ~6 basalt []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 basalt []
setblock ~-6 ~10 ~-7 lantern []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 basalt []
setblock ~-6 ~10 ~7 lantern []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 basalt []
setblock ~6 ~10 ~-7 lantern []
fill ~6 ~7 ~7 ~6 ~9 ~7 basalt []
setblock ~6 ~10 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 basalt []
setblock ~-8 ~6 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 basalt []
setblock ~-8 ~6 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 basalt []
setblock ~8 ~6 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 basalt []
setblock ~8 ~6 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~9 ~0 ~9 ~9 ~9 ~9 polished_basalt []
fill ~8 ~0 ~9 ~8 ~7 ~9 basalt []
setblock ~9 ~10 ~9 magma []
setblock ~9 ~11 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 1 ghast_tear 6
replaceitem block ~5 ~1 ~6 slot.container 2 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~6 slot.container 4 bone 15
replaceitem block ~5 ~1 ~6 slot.container 5 coal 18
replaceitem block ~5 ~1 ~6 slot.container 9 blackstone 29
replaceitem block ~5 ~1 ~6 slot.container 10 diamond 8
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 6
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 13 netherite_scrap 4
replaceitem block ~5 ~1 ~6 slot.container 14 ancient_debris 4
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
