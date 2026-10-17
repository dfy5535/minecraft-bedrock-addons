# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4085/4224 | 主题内编号: b117/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·环柱生态标本采集馆 (basalt_deltas_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 nether_brick [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 blaze_rod 14
replaceitem block ~3 ~-3 ~4 slot.container 1 ghast_tear 11
replaceitem block ~3 ~-3 ~4 slot.container 2 gold_nugget 16
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 5
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 12
replaceitem block ~3 ~-3 ~4 slot.container 5 coal 15
replaceitem block ~3 ~-3 ~4 slot.container 9 lantern 6
replaceitem block ~3 ~-3 ~4 slot.container 10 gold_ingot 13
replaceitem block ~3 ~-3 ~4 slot.container 11 netherite_scrap 4
replaceitem block ~3 ~-3 ~4 slot.container 12 ancient_debris 4
replaceitem block ~3 ~-3 ~4 slot.container 13 obsidian 14
replaceitem block ~3 ~-3 ~4 slot.container 14 crying_obsidian 11
loot insert ~3 ~-3 ~4 loot "rsf/basalt_deltas"
loot insert ~3 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 blackstone []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 basalt []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 basalt []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 basalt []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 basalt []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 basalt []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 basalt []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 basalt []
fill ~1 ~1 ~6 ~1 ~7 ~6 basalt []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 basalt []
fill ~3 ~1 ~6 ~3 ~7 ~6 basalt []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 basalt []
fill ~5 ~1 ~6 ~5 ~7 ~6 basalt []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 basalt []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 basalt []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 basalt []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 basalt []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 basalt []
fill ~5 ~1 ~0 ~5 ~7 ~0 basalt []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 basalt []
fill ~5 ~1 ~2 ~5 ~7 ~2 basalt []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 basalt []
fill ~5 ~1 ~4 ~5 ~7 ~4 basalt []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 blackstone []
fill ~-4 ~9 ~-5 ~4 ~10 ~5 glass []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 basalt []
setblock ~-7 ~6 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 basalt []
setblock ~-7 ~6 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 basalt []
setblock ~7 ~6 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 basalt []
setblock ~7 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~8 ~0 ~9 ~8 ~10 ~9 polished_basalt []
fill ~7 ~0 ~9 ~7 ~8 ~9 basalt []
setblock ~8 ~11 ~9 magma []
setblock ~8 ~12 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 coal 18
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 3 magma_cream 14
replaceitem block ~4 ~1 ~5 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 10 fire_charge 13
replaceitem block ~4 ~1 ~5 slot.container 11 blackstone 30
replaceitem block ~4 ~1 ~5 slot.container 12 diamond 2
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 14
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~-3 ~0
