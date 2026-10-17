# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3500/4224 | 主题内编号: b044/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双子祭台勇士角斗场 (nether_wastes_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~9 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~9 ~8 air [] replace fire
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 red_nether_brick [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 red_nether_brick [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 red_nether_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 quartz_block []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 quartz_block []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 blaze_rod 11
replaceitem block ~4 ~-2 ~4 slot.container 1 magma_cream 14
replaceitem block ~4 ~-2 ~4 slot.container 2 ghast_tear 11
replaceitem block ~4 ~-2 ~4 slot.container 3 gold_nugget 16
replaceitem block ~4 ~-2 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~-2 ~4 slot.container 5 bone 12
replaceitem block ~4 ~-2 ~4 slot.container 9 crying_obsidian 7
replaceitem block ~4 ~-2 ~4 slot.container 10 golden_apple 6
replaceitem block ~4 ~-2 ~4 slot.container 11 golden_carrot 13
replaceitem block ~4 ~-2 ~4 slot.container 12 netherite_scrap 7
replaceitem block ~4 ~-2 ~4 slot.container 13 fire_charge 6
replaceitem block ~4 ~-2 ~4 slot.container 14 soul_lantern 5
loot insert ~4 ~-2 ~4 loot "rsf/nether_wastes"
loot insert ~4 ~-2 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~7 ~6 red_nether_brick []
fill ~2 ~1 ~-6 ~6 ~7 ~6 red_nether_brick []
fill ~-5 ~1 ~-5 ~-3 ~6 ~5 air []
fill ~3 ~1 ~-5 ~5 ~6 ~5 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 nether_brick []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-6 ~-6 ~8 ~-6 chiseled_nether_bricks []
setblock ~-6 ~9 ~-6 soul_lantern []
fill ~-6 ~6 ~6 ~-6 ~8 ~6 chiseled_nether_bricks []
setblock ~-6 ~9 ~6 soul_lantern []
fill ~6 ~6 ~-6 ~6 ~8 ~-6 chiseled_nether_bricks []
setblock ~6 ~9 ~-6 soul_lantern []
fill ~6 ~6 ~6 ~6 ~8 ~6 chiseled_nether_bricks []
setblock ~6 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 nether_brick []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-7 ~-8 ~7 ~-7 nether_brick []
setblock ~-8 ~8 ~-7 magma []
setblock ~-8 ~9 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 glowstone []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 10
replaceitem block ~-5 ~1 ~5 slot.container 3 coal 19
replaceitem block ~-5 ~1 ~5 slot.container 4 blaze_rod 6
replaceitem block ~-5 ~1 ~5 slot.container 5 magma_cream 9
replaceitem block ~-5 ~1 ~5 slot.container 9 gold_ingot 10
replaceitem block ~-5 ~1 ~5 slot.container 10 quartz 17
replaceitem block ~-5 ~1 ~5 slot.container 11 nether_wart 14
replaceitem block ~-5 ~1 ~5 slot.container 12 obsidian 11
replaceitem block ~-5 ~1 ~5 slot.container 13 crying_obsidian 8
replaceitem block ~-5 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~-5 ~1 ~5 loot "rsf/nether_wastes"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~5 ~1 ~5 slot.container 1 coal 14
replaceitem block ~5 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~5 ~1 ~5 slot.container 3 magma_cream 12
replaceitem block ~5 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~5 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~5 ~1 ~5 slot.container 9 gold_ingot 15
replaceitem block ~5 ~1 ~5 slot.container 10 quartz 22
replaceitem block ~5 ~1 ~5 slot.container 11 nether_wart 12
replaceitem block ~5 ~1 ~5 slot.container 12 obsidian 9
replaceitem block ~5 ~1 ~5 slot.container 13 crying_obsidian 6
replaceitem block ~5 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~5 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~5 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-2 ~0
