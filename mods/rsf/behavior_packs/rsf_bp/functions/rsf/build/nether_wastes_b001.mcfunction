# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3457/4224 | 主题内编号: b001/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·三层阶梯圣火祭坛 (nether_wastes_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~9 ~7 air [] replace fire
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 quartz_block [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 nether_brick []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 bone 12
replaceitem block ~2 ~-3 ~3 slot.container 1 ender_pearl 7
replaceitem block ~2 ~-3 ~3 slot.container 2 coal 16
replaceitem block ~2 ~-3 ~3 slot.container 3 blaze_rod 11
replaceitem block ~2 ~-3 ~3 slot.container 4 magma_cream 14
replaceitem block ~2 ~-3 ~3 slot.container 5 ghast_tear 11
replaceitem block ~2 ~-3 ~3 slot.container 9 golden_apple 4
replaceitem block ~2 ~-3 ~3 slot.container 10 golden_carrot 11
replaceitem block ~2 ~-3 ~3 slot.container 11 netherite_scrap 5
replaceitem block ~2 ~-3 ~3 slot.container 12 fire_charge 11
replaceitem block ~2 ~-3 ~3 slot.container 13 soul_lantern 10
replaceitem block ~2 ~-3 ~3 slot.container 14 gold_ingot 10
loot insert ~2 ~-3 ~3 loot "rsf/nether_wastes"
loot insert ~2 ~-3 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 quartz_block []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 nether_brick []
fill ~-2 ~5 ~-3 ~2 ~6 ~3 nether_brick []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 quartz_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~6 ~-5 ~-4 ~8 ~-5 quartz_pillar []
setblock ~-4 ~9 ~-5 soul_lantern []
fill ~-4 ~6 ~5 ~-4 ~8 ~5 quartz_pillar []
setblock ~-4 ~9 ~5 soul_lantern []
fill ~4 ~6 ~-5 ~4 ~8 ~-5 quartz_pillar []
setblock ~4 ~9 ~-5 soul_lantern []
fill ~4 ~6 ~5 ~4 ~8 ~5 quartz_pillar []
setblock ~4 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~-6 ~0 ~-8 ~-6 ~9 ~-8 nether_brick []
setblock ~-6 ~10 ~-8 magma []
setblock ~-6 ~11 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 soul_lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 gilded_blackstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 magma_cream 9
replaceitem block ~3 ~1 ~4 slot.container 1 ghast_tear 6
replaceitem block ~3 ~1 ~4 slot.container 2 gold_nugget 19
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 4 bone 15
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 10
replaceitem block ~3 ~1 ~4 slot.container 9 quartz 22
replaceitem block ~3 ~1 ~4 slot.container 10 nether_wart 12
replaceitem block ~3 ~1 ~4 slot.container 11 obsidian 9
replaceitem block ~3 ~1 ~4 slot.container 12 crying_obsidian 6
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~3 ~1 ~4 slot.container 14 golden_carrot 12
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
summon zombie_pigman ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1
