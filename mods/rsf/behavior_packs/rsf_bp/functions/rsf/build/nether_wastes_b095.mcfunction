# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3551/4224 | 主题内编号: b095/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双子灯笼守卫神龛 (nether_wastes_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 nether_brick []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~8 ~4 polished_blackstone_bricks []
fill ~2 ~1 ~-4 ~5 ~8 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 nether_brick []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 nether_brick []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 polished_blackstone_wall []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 air []
setblock ~-5 ~10 ~-4 gilded_blackstone []
setblock ~-5 ~11 ~-4 lantern []
setblock ~-5 ~10 ~4 gilded_blackstone []
setblock ~-5 ~11 ~4 lantern []
setblock ~5 ~10 ~-4 gilded_blackstone []
setblock ~5 ~11 ~-4 lantern []
setblock ~5 ~10 ~4 gilded_blackstone []
setblock ~5 ~11 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 gilded_blackstone []
setblock ~-7 ~5 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 gilded_blackstone []
setblock ~-7 ~5 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 gilded_blackstone []
setblock ~7 ~5 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~4 ~6 gilded_blackstone []
setblock ~7 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~-7 ~0 ~-5 ~-7 ~8 ~-5 nether_brick []
setblock ~-7 ~9 ~-5 magma []
setblock ~-7 ~10 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 coal 19
replaceitem block ~4 ~1 ~3 slot.container 1 blaze_rod 6
replaceitem block ~4 ~1 ~3 slot.container 2 magma_cream 9
replaceitem block ~4 ~1 ~3 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~3 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~3 slot.container 9 obsidian 10
replaceitem block ~4 ~1 ~3 slot.container 10 crying_obsidian 7
replaceitem block ~4 ~1 ~3 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~3 slot.container 12 golden_carrot 13
replaceitem block ~4 ~1 ~3 slot.container 13 netherite_scrap 7
replaceitem block ~4 ~1 ~3 slot.container 14 fire_charge 6
loot insert ~4 ~1 ~3 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~2 ~0
