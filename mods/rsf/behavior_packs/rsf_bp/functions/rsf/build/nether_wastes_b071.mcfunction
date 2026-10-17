# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3527/4224 | 主题内编号: b071/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·残破双子哨所遗迹 (nether_wastes_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~10 ~7 air [] replace fire
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 blackstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 nether_brick []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 polished_blackstone_bricks []
fill ~2 ~1 ~-5 ~5 ~8 ~5 polished_blackstone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 nether_brick []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 polished_blackstone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 chiseled_nether_bricks []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 chiseled_nether_bricks []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 chiseled_nether_bricks []
fill ~7 ~0 ~2 ~7 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~-6 ~-7 ~9 ~-6 nether_brick []
setblock ~-7 ~10 ~-6 magma []
setblock ~-7 ~11 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 coal 19
replaceitem block ~4 ~1 ~4 slot.container 1 blaze_rod 6
replaceitem block ~4 ~1 ~4 slot.container 2 magma_cream 9
replaceitem block ~4 ~1 ~4 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~4 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~4 slot.container 9 quartz 22
replaceitem block ~4 ~1 ~4 slot.container 10 nether_wart 12
replaceitem block ~4 ~1 ~4 slot.container 11 obsidian 9
replaceitem block ~4 ~1 ~4 slot.container 12 crying_obsidian 6
replaceitem block ~4 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~4 ~1 ~4 slot.container 14 golden_carrot 12
loot insert ~4 ~1 ~4 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~2 ~0
