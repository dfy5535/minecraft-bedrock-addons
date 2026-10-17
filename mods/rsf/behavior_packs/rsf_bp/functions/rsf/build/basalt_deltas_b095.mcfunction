# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4063/4224 | 主题内编号: b095/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双子灯笼守卫神龛 (basalt_deltas_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 magma []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~9 ~4 blackstone []
fill ~2 ~1 ~-4 ~5 ~9 ~4 blackstone []
fill ~-4 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 polished_blackstone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 blackstone_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 polished_basalt []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 polished_blackstone_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 polished_basalt []
setblock ~-7 ~6 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 polished_basalt []
setblock ~-7 ~6 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 polished_basalt []
setblock ~7 ~6 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 polished_basalt []
setblock ~7 ~6 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~8 ~0 ~6 ~8 ~8 ~6 polished_basalt []
fill ~7 ~0 ~6 ~7 ~6 ~6 basalt []
setblock ~8 ~9 ~6 magma []
setblock ~8 ~10 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 17
replaceitem block ~4 ~1 ~3 slot.container 1 magma_cream 14
replaceitem block ~4 ~1 ~3 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~3 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~3 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 9
replaceitem block ~4 ~1 ~3 slot.container 10 gold_ingot 16
replaceitem block ~4 ~1 ~3 slot.container 11 netherite_scrap 7
replaceitem block ~4 ~1 ~3 slot.container 12 ancient_debris 7
replaceitem block ~4 ~1 ~3 slot.container 13 obsidian 10
replaceitem block ~4 ~1 ~3 slot.container 14 crying_obsidian 7
loot insert ~4 ~1 ~3 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
