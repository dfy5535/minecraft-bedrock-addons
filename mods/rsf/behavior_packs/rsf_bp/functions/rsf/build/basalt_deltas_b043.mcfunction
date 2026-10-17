# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4011/4224 | 主题内编号: b043/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·十字四门试炼擂台 (basalt_deltas_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~10 ~9 air [] replace fire
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 blackstone [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 blackstone [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 blackstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 magma []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~7 ~7 blackstone []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 blackstone []
fill ~-1 ~1 ~-6 ~1 ~6 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 polished_blackstone_wall []
setblock ~6 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 polished_blackstone_bricks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 polished_blackstone_wall []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 polished_basalt []
setblock ~-6 ~9 ~-7 lantern []
setblock ~-6 ~8 ~7 polished_basalt []
setblock ~-6 ~9 ~7 lantern []
setblock ~6 ~8 ~-7 polished_basalt []
setblock ~6 ~9 ~-7 lantern []
setblock ~6 ~8 ~7 polished_basalt []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 polished_blackstone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~9 ~0 ~8 ~9 ~6 ~8 polished_basalt []
fill ~8 ~0 ~8 ~8 ~4 ~8 basalt []
setblock ~9 ~7 ~8 magma []
setblock ~9 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gold_nugget 19
replaceitem block ~5 ~1 ~6 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 coal 18
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 17
replaceitem block ~5 ~1 ~6 slot.container 5 magma_cream 14
replaceitem block ~5 ~1 ~6 slot.container 9 obsidian 10
replaceitem block ~5 ~1 ~6 slot.container 10 crying_obsidian 7
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 12 fire_charge 11
replaceitem block ~5 ~1 ~6 slot.container 13 blackstone 28
replaceitem block ~5 ~1 ~6 slot.container 14 diamond 7
loot insert ~5 ~1 ~6 loot "rsf/basalt_deltas"
summon zombie_pigman ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
