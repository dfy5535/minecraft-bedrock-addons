# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4061/4224 | 主题内编号: b093/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·U型庭院神道祈福祠 (basalt_deltas_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 blackstone []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 nether_brick []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 blackstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 polished_blackstone_brick_slab []
fill ~-4 ~8 ~-5 ~4 ~9 ~5 polished_blackstone_bricks []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 polished_blackstone_brick_slab []
setblock ~0 ~11 ~0 shroomlight []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 blackstone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 basalt []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 basalt []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 polished_blackstone_brick_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~8 ~0 ~9 ~8 ~6 ~9 polished_basalt []
fill ~7 ~0 ~9 ~7 ~4 ~9 basalt []
setblock ~8 ~7 ~9 magma []
setblock ~8 ~8 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 coal 18
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 3 magma_cream 14
replaceitem block ~4 ~1 ~5 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 9 obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 10 crying_obsidian 8
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 12 fire_charge 12
replaceitem block ~4 ~1 ~5 slot.container 13 blackstone 29
replaceitem block ~4 ~1 ~5 slot.container 14 diamond 8
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~2 ~0
