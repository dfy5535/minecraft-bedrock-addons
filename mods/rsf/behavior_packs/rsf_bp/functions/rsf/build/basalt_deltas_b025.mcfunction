# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3993/4224 | 主题内编号: b025/128
# 地形主题 #32: 下界玄武岩三角洲与熔岩黑石堡 (basalt_deltas) —— 带磨制玄武岩柱阵与黑石防爆熔炉堡
# 建筑名称: 玄武熔岩系·雉堞女墙四方哨塔 (basalt_deltas_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: basalt_deltas
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~14 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~14 ~6 air [] replace fire
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 nether_brick [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 nether_brick [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 blackstone []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 nether_brick []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 basalt []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 basalt []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 basalt []
fill ~3 ~1 ~4 ~3 ~11 ~4 basalt []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 polished_blackstone_wall []
setblock ~3 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~11 ~-4 ~3 ~11 ~4 blackstone []
fill ~-3 ~12 ~-4 ~3 ~12 ~4 polished_blackstone_wall []
fill ~-2 ~12 ~-3 ~2 ~12 ~3 air []
setblock ~-3 ~12 ~-4 basalt []
setblock ~-3 ~13 ~-4 lantern []
setblock ~-3 ~12 ~4 basalt []
setblock ~-3 ~13 ~4 lantern []
setblock ~3 ~12 ~-4 basalt []
setblock ~3 ~13 ~-4 lantern []
setblock ~3 ~12 ~4 basalt []
setblock ~3 ~13 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 blackstone []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 basalt []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 basalt []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 polished_blackstone_brick_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (basalt_deltas 独有建筑构件 | 几何特征参数 6x5x4) ---
fill ~6 ~0 ~5 ~6 ~8 ~5 polished_basalt []
fill ~5 ~0 ~5 ~5 ~6 ~5 basalt []
setblock ~6 ~9 ~5 magma []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 gold_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 blaze_rod 9
replaceitem block ~2 ~1 ~3 slot.container 1 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 2 gold_nugget 19
replaceitem block ~2 ~1 ~3 slot.container 3 ender_pearl 8
replaceitem block ~2 ~1 ~3 slot.container 4 bone 15
replaceitem block ~2 ~1 ~3 slot.container 5 coal 18
replaceitem block ~2 ~1 ~3 slot.container 9 lantern 9
replaceitem block ~2 ~1 ~3 slot.container 10 gold_ingot 16
replaceitem block ~2 ~1 ~3 slot.container 11 netherite_scrap 7
replaceitem block ~2 ~1 ~3 slot.container 12 ancient_debris 7
replaceitem block ~2 ~1 ~3 slot.container 13 obsidian 10
replaceitem block ~2 ~1 ~3 slot.container 14 crying_obsidian 7
loot insert ~2 ~1 ~3 loot "rsf/basalt_deltas"
summon zombie_pigman ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
