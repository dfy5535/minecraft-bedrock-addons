# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3526/4224 | 主题内编号: b070/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·风化坍塌阶梯祭台 (nether_wastes_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 ghast_tear 11
replaceitem block ~3 ~-2 ~4 slot.container 1 gold_nugget 16
replaceitem block ~3 ~-2 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~-2 ~4 slot.container 3 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 4 ender_pearl 7
replaceitem block ~3 ~-2 ~4 slot.container 5 coal 16
replaceitem block ~3 ~-2 ~4 slot.container 9 nether_wart 13
replaceitem block ~3 ~-2 ~4 slot.container 10 obsidian 10
replaceitem block ~3 ~-2 ~4 slot.container 11 crying_obsidian 7
replaceitem block ~3 ~-2 ~4 slot.container 12 golden_apple 6
replaceitem block ~3 ~-2 ~4 slot.container 13 golden_carrot 13
replaceitem block ~3 ~-2 ~4 slot.container 14 netherite_scrap 7
loot insert ~3 ~-2 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-2 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 nether_brick []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 red_nether_brick []
fill ~-3 ~5 ~-4 ~3 ~6 ~4 polished_blackstone_bricks []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 nether_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-7 ~0 ~-9 ~-7 ~8 ~-9 nether_brick []
setblock ~-7 ~9 ~-9 magma []
setblock ~-7 ~10 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~5 smoker []
setblock ~4 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 1 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 2 blaze_rod 6
replaceitem block ~-4 ~1 ~5 slot.container 3 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 4 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 5 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 9 fire_charge 11
replaceitem block ~-4 ~1 ~5 slot.container 10 soul_lantern 10
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 12 quartz 17
replaceitem block ~-4 ~1 ~5 slot.container 13 nether_wart 14
replaceitem block ~-4 ~1 ~5 slot.container 14 obsidian 11
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 1 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 2 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 3 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 19
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 fire_charge 9
replaceitem block ~4 ~1 ~5 slot.container 10 soul_lantern 8
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 15
replaceitem block ~4 ~1 ~5 slot.container 12 quartz 22
replaceitem block ~4 ~1 ~5 slot.container 13 nether_wart 12
replaceitem block ~4 ~1 ~5 slot.container 14 obsidian 9
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
