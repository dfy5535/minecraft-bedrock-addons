# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3544/4224 | 主题内编号: b088/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·矿车铁轨转运仓库 (nether_wastes_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-9 ~6 ~9 ~9 air [] replace lava
fill ~-6 ~0 ~-9 ~6 ~9 ~9 air [] replace fire
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 red_nether_brick [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 red_nether_brick [] replace lava
fill ~-5 ~0 ~-8 ~5 ~0 ~8 red_nether_brick_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 quartz_block []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 nether_brick []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_lantern []
setblock ~4 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 blaze_rod 11
replaceitem block ~0 ~-4 ~5 slot.container 1 magma_cream 14
replaceitem block ~0 ~-4 ~5 slot.container 2 ghast_tear 11
replaceitem block ~0 ~-4 ~5 slot.container 3 gold_nugget 16
replaceitem block ~0 ~-4 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-4 ~5 slot.container 5 bone 12
replaceitem block ~0 ~-4 ~5 slot.container 9 gold_ingot 10
replaceitem block ~0 ~-4 ~5 slot.container 10 quartz 17
replaceitem block ~0 ~-4 ~5 slot.container 11 nether_wart 14
replaceitem block ~0 ~-4 ~5 slot.container 12 obsidian 11
replaceitem block ~0 ~-4 ~5 slot.container 13 crying_obsidian 8
replaceitem block ~0 ~-4 ~5 slot.container 14 golden_apple 7
loot insert ~0 ~-4 ~5 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~5 loot "chests/nether_bridge"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 blaze_rod 9
replaceitem block ~0 ~-4 ~-5 slot.container 1 magma_cream 12
replaceitem block ~0 ~-4 ~-5 slot.container 2 ghast_tear 9
replaceitem block ~0 ~-4 ~-5 slot.container 3 gold_nugget 22
replaceitem block ~0 ~-4 ~-5 slot.container 4 rotten_flesh 19
replaceitem block ~0 ~-4 ~-5 slot.container 5 bone 10
replaceitem block ~0 ~-4 ~-5 slot.container 9 gold_ingot 16
replaceitem block ~0 ~-4 ~-5 slot.container 10 quartz 16
replaceitem block ~0 ~-4 ~-5 slot.container 11 nether_wart 13
replaceitem block ~0 ~-4 ~-5 slot.container 12 obsidian 10
replaceitem block ~0 ~-4 ~-5 slot.container 13 crying_obsidian 7
replaceitem block ~0 ~-4 ~-5 slot.container 14 golden_apple 6
loot insert ~0 ~-4 ~-5 loot "rsf/nether_wastes"
loot insert ~0 ~-4 ~-5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~6 ~7 red_nether_brick []
fill ~-3 ~1 ~-6 ~3 ~5 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 chiseled_nether_bricks []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 chiseled_nether_bricks []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 chiseled_nether_bricks []
fill ~4 ~1 ~7 ~4 ~6 ~7 chiseled_nether_bricks []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 nether_brick_fence []
setblock ~4 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-8 ~-5 ~7 ~8 red_nether_brick_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-8 ~5 ~7 ~8 red_nether_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-7 ~-4 ~8 ~7 red_nether_brick_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-7 ~4 ~8 ~7 red_nether_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-7 ~3 ~8 ~7 red_nether_brick_slab []
fill ~0 ~9 ~-8 ~0 ~9 ~8 nether_brick []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 nether_brick []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 soul_lantern []
setblock ~2 ~4 ~-10 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x10x3) ---
fill ~-6 ~0 ~-10 ~-6 ~6 ~-10 nether_brick []
setblock ~-6 ~7 ~-10 magma []
setblock ~-6 ~8 ~-10 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 blaze_rod 6
replaceitem block ~-3 ~1 ~6 slot.container 1 magma_cream 9
replaceitem block ~-3 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-3 ~1 ~6 slot.container 3 gold_nugget 19
replaceitem block ~-3 ~1 ~6 slot.container 4 rotten_flesh 16
replaceitem block ~-3 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~6 slot.container 9 nether_wart 14
replaceitem block ~-3 ~1 ~6 slot.container 10 obsidian 11
replaceitem block ~-3 ~1 ~6 slot.container 11 crying_obsidian 8
replaceitem block ~-3 ~1 ~6 slot.container 12 golden_apple 7
replaceitem block ~-3 ~1 ~6 slot.container 13 golden_carrot 14
replaceitem block ~-3 ~1 ~6 slot.container 14 netherite_scrap 1
loot insert ~-3 ~1 ~6 loot "rsf/nether_wastes"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~3 ~1 ~6 slot.container 1 gold_nugget 22
replaceitem block ~3 ~1 ~6 slot.container 2 rotten_flesh 19
replaceitem block ~3 ~1 ~6 slot.container 3 bone 10
replaceitem block ~3 ~1 ~6 slot.container 4 ender_pearl 5
replaceitem block ~3 ~1 ~6 slot.container 5 coal 14
replaceitem block ~3 ~1 ~6 slot.container 9 nether_wart 12
replaceitem block ~3 ~1 ~6 slot.container 10 obsidian 9
replaceitem block ~3 ~1 ~6 slot.container 11 crying_obsidian 6
replaceitem block ~3 ~1 ~6 slot.container 12 golden_apple 5
replaceitem block ~3 ~1 ~6 slot.container 13 golden_carrot 12
replaceitem block ~3 ~1 ~6 slot.container 14 netherite_scrap 6
loot insert ~3 ~1 ~6 loot "rsf/nether_wastes"
loot insert ~3 ~1 ~6 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
