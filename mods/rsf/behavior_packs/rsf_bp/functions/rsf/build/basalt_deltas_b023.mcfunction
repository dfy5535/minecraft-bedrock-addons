# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3991/4224 | 主题内编号: b023/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·双层露台阁楼宝室 (basalt_deltas_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~12 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~12 ~8 air [] replace fire
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 blackstone [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 blackstone [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 blackstone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 magma []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~4 ~6 blackstone []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-5 ~4 ~-7 ~5 ~4 ~7 blackstone_slab []
fill ~-3 ~5 ~-5 ~3 ~9 ~5 polished_basalt []
fill ~-2 ~5 ~-4 ~2 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-7 ~5 ~9 ~7 blackstone_slab []
fill ~-3 ~10 ~-5 ~3 ~11 ~5 polished_basalt []
fill ~-4 ~12 ~-6 ~4 ~12 ~6 polished_blackstone_slab []
setblock ~0 ~13 ~0 gold_block []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~11 ~2 polished_basalt []
fill ~5 ~1 ~-1 ~6 ~10 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~12 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~0 ~8 ~7 ~6 ~8 polished_basalt []
fill ~6 ~0 ~8 ~6 ~4 ~8 basalt []
setblock ~7 ~7 ~8 magma []
setblock ~7 ~8 ~8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 gunpowder 17
replaceitem block ~3 ~1 ~5 slot.container 1 magma_cream 14
replaceitem block ~3 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~3 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~3 ~1 ~5 slot.container 5 ender_pearl 8
replaceitem block ~3 ~1 ~5 slot.container 9 obsidian 11
replaceitem block ~3 ~1 ~5 slot.container 10 crying_obsidian 8
replaceitem block ~3 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~3 ~1 ~5 slot.container 12 fire_charge 12
replaceitem block ~3 ~1 ~5 slot.container 13 blackstone 29
replaceitem block ~3 ~1 ~5 slot.container 14 diamond 8
loot insert ~3 ~1 ~5 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
