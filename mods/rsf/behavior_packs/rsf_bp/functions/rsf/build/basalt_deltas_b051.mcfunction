# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4019/4224 | 主题内编号: b051/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·带哨塔围栏探险营地 (basalt_deltas_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 magma []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 blackstone []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 nether_brick []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 polished_blackstone_bricks []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 polished_blackstone_wall []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 polished_basalt []
setblock ~-5 ~10 ~-6 lantern []
setblock ~-5 ~9 ~6 polished_basalt []
setblock ~-5 ~10 ~6 lantern []
setblock ~5 ~9 ~-6 polished_basalt []
setblock ~5 ~10 ~-6 lantern []
setblock ~5 ~9 ~6 polished_basalt []
setblock ~5 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 polished_basalt []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~8 ~0 ~9 ~8 ~9 ~9 polished_basalt []
fill ~7 ~0 ~9 ~7 ~7 ~9 basalt []
setblock ~8 ~10 ~9 magma []
setblock ~8 ~11 ~9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 8
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 coal 18
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 17
replaceitem block ~4 ~1 ~5 slot.container 5 magma_cream 14
replaceitem block ~4 ~1 ~5 slot.container 9 blackstone 25
replaceitem block ~4 ~1 ~5 slot.container 10 diamond 4
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 13 netherite_scrap 7
replaceitem block ~4 ~1 ~5 slot.container 14 ancient_debris 7
loot insert ~4 ~1 ~5 loot "rsf/basalt_deltas"
summon strider ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon piglin_brute ~0 ~2 ~0
