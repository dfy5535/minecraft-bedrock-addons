# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4073/4224 | 主题内编号: b105/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·满书架奥术附魔书院 (basalt_deltas_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~11 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~11 ~8 air [] replace fire
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 nether_brick [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 nether_brick [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 polished_blackstone_bricks []
fill ~-2 ~-5 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~2 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~4 slot.container 0 bone 12
replaceitem block ~2 ~-3 ~4 slot.container 1 coal 15
replaceitem block ~2 ~-3 ~4 slot.container 2 gunpowder 14
replaceitem block ~2 ~-3 ~4 slot.container 3 magma_cream 19
replaceitem block ~2 ~-3 ~4 slot.container 4 blaze_rod 14
replaceitem block ~2 ~-3 ~4 slot.container 5 ghast_tear 11
replaceitem block ~2 ~-3 ~4 slot.container 9 obsidian 12
replaceitem block ~2 ~-3 ~4 slot.container 10 crying_obsidian 9
replaceitem block ~2 ~-3 ~4 slot.container 11 golden_apple 6
replaceitem block ~2 ~-3 ~4 slot.container 12 fire_charge 13
replaceitem block ~2 ~-3 ~4 slot.container 13 blackstone 30
replaceitem block ~2 ~-3 ~4 slot.container 14 diamond 2
loot insert ~2 ~-3 ~4 loot "rsf/basalt_deltas"
loot insert ~2 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~8 ~6 nether_brick []
fill ~-3 ~1 ~-5 ~3 ~7 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~8 ~-6 basalt []
fill ~-4 ~1 ~6 ~-4 ~8 ~6 basalt []
fill ~4 ~1 ~-6 ~4 ~8 ~-6 basalt []
fill ~4 ~1 ~6 ~4 ~8 ~6 basalt []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 polished_blackstone_wall []
setblock ~4 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~9 ~-7 ~-5 ~9 ~7 nether_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-7 ~5 ~9 ~7 nether_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-6 ~-4 ~10 ~6 nether_brick_stairs ["weirdo_direction"=0]
fill ~4 ~10 ~-6 ~4 ~10 ~6 nether_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~10 ~-6 ~3 ~10 ~6 polished_blackstone_brick_slab []
fill ~0 ~11 ~-7 ~0 ~11 ~7 blackstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 blackstone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 basalt []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 basalt []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 polished_blackstone_brick_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~7 ~0 ~9 ~7 ~8 ~9 polished_basalt []
fill ~6 ~0 ~9 ~6 ~6 ~9 basalt []
setblock ~7 ~9 ~9 magma []
setblock ~7 ~10 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~3 ~1 ~5 slot.container 1 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 2 gold_nugget 19
replaceitem block ~3 ~1 ~5 slot.container 3 ender_pearl 8
replaceitem block ~3 ~1 ~5 slot.container 4 bone 15
replaceitem block ~3 ~1 ~5 slot.container 5 coal 18
replaceitem block ~3 ~1 ~5 slot.container 9 lantern 12
replaceitem block ~3 ~1 ~5 slot.container 10 gold_ingot 12
replaceitem block ~3 ~1 ~5 slot.container 11 netherite_scrap 3
replaceitem block ~3 ~1 ~5 slot.container 12 ancient_debris 3
replaceitem block ~3 ~1 ~5 slot.container 13 obsidian 13
replaceitem block ~3 ~1 ~5 slot.container 14 crying_obsidian 10
loot insert ~3 ~1 ~5 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-3 ~0
