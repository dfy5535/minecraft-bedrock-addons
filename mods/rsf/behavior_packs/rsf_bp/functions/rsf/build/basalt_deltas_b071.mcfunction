# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4039/4224 | 主题内编号: b071/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·残破双子哨所遗迹 (basalt_deltas_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace fire
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 blackstone [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 blackstone [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 blackstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 magma []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~9 ~5 blackstone []
fill ~2 ~1 ~-5 ~5 ~9 ~5 blackstone []
fill ~-4 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~4 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 polished_blackstone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 blackstone_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 nether_brick []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~7 ~8 ~9 ~7 polished_basalt []
fill ~7 ~0 ~7 ~7 ~7 ~7 basalt []
setblock ~8 ~10 ~7 magma []
setblock ~8 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gilded_blackstone []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 gunpowder 17
replaceitem block ~4 ~1 ~4 slot.container 1 magma_cream 14
replaceitem block ~4 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~4 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~4 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~4 slot.container 9 blackstone 24
replaceitem block ~4 ~1 ~4 slot.container 10 diamond 3
replaceitem block ~4 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~4 ~1 ~4 slot.container 12 gold_ingot 15
replaceitem block ~4 ~1 ~4 slot.container 13 netherite_scrap 6
replaceitem block ~4 ~1 ~4 slot.container 14 ancient_debris 6
loot insert ~4 ~1 ~4 loot "rsf/basalt_deltas"
summon blaze ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
