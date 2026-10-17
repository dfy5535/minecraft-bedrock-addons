# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3995/4224 | 主题内编号: b027/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双子连廊警戒塔楼 (basalt_deltas_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 magma []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~11 ~4 blackstone []
fill ~2 ~1 ~-4 ~5 ~11 ~4 blackstone []
fill ~-4 ~1 ~-3 ~-3 ~10 ~3 air []
fill ~3 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 polished_blackstone_bricks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 polished_blackstone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 polished_blackstone_wall []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 air []
setblock ~-5 ~11 ~-4 polished_basalt []
setblock ~-5 ~12 ~-4 lantern []
setblock ~-5 ~11 ~4 polished_basalt []
setblock ~-5 ~12 ~4 lantern []
setblock ~5 ~11 ~-4 polished_basalt []
setblock ~5 ~12 ~-4 lantern []
setblock ~5 ~11 ~4 polished_basalt []
setblock ~5 ~12 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~7 ~8 ~10 ~7 polished_basalt []
fill ~7 ~0 ~7 ~7 ~8 ~7 basalt []
setblock ~8 ~11 ~7 magma []
setblock ~8 ~12 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~3 slot.container 1 ender_pearl 8
replaceitem block ~4 ~1 ~3 slot.container 2 bone 15
replaceitem block ~4 ~1 ~3 slot.container 3 coal 18
replaceitem block ~4 ~1 ~3 slot.container 4 gunpowder 17
replaceitem block ~4 ~1 ~3 slot.container 5 magma_cream 14
replaceitem block ~4 ~1 ~3 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~3 slot.container 10 fire_charge 14
replaceitem block ~4 ~1 ~3 slot.container 11 blackstone 24
replaceitem block ~4 ~1 ~3 slot.container 12 diamond 3
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~4 ~1 ~3 slot.container 14 gold_ingot 15
loot insert ~4 ~1 ~3 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~2 ~0
