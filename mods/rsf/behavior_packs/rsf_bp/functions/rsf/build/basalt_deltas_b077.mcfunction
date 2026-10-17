# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4045/4224 | 主题内编号: b077/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双子鸟居图腾神道 (basalt_deltas_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace fire
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 nether_brick [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 nether_brick [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 blackstone []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 nether_brick []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 polished_blackstone_brick_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 polished_blackstone_bricks []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 polished_blackstone_brick_slab []
setblock ~0 ~12 ~0 shroomlight []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 blackstone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~7 ~8 ~10 ~7 polished_basalt []
fill ~7 ~0 ~7 ~7 ~8 ~7 basalt []
setblock ~8 ~11 ~7 magma []
setblock ~8 ~12 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 15
replaceitem block ~4 ~1 ~4 slot.container 1 coal 18
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 17
replaceitem block ~4 ~1 ~4 slot.container 3 magma_cream 14
replaceitem block ~4 ~1 ~4 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~4 slot.container 5 ghast_tear 6
replaceitem block ~4 ~1 ~4 slot.container 9 golden_apple 8
replaceitem block ~4 ~1 ~4 slot.container 10 fire_charge 8
replaceitem block ~4 ~1 ~4 slot.container 11 blackstone 25
replaceitem block ~4 ~1 ~4 slot.container 12 diamond 4
replaceitem block ~4 ~1 ~4 slot.container 13 lantern 9
replaceitem block ~4 ~1 ~4 slot.container 14 gold_ingot 16
loot insert ~4 ~1 ~4 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
