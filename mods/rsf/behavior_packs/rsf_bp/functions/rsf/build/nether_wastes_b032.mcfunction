# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3488/4224 | 主题内编号: b032/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·断顶残垣古哨塔 (nether_wastes_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-7 ~5 ~12 ~7 air [] replace lava
fill ~-5 ~0 ~-7 ~5 ~12 ~7 air [] replace fire
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 red_nether_brick [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 red_nether_brick [] replace lava
fill ~-4 ~0 ~-6 ~4 ~0 ~6 red_nether_brick_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 quartz_block []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 quartz_block []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 nether_brick []
setblock ~0 ~-5 ~0 gilded_blackstone []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ghast_tear 11
replaceitem block ~0 ~-2 ~-3 slot.container 1 gold_nugget 16
replaceitem block ~0 ~-2 ~-3 slot.container 2 rotten_flesh 13
replaceitem block ~0 ~-2 ~-3 slot.container 3 bone 12
replaceitem block ~0 ~-2 ~-3 slot.container 4 ender_pearl 7
replaceitem block ~0 ~-2 ~-3 slot.container 5 coal 16
replaceitem block ~0 ~-2 ~-3 slot.container 9 gold_ingot 15
replaceitem block ~0 ~-2 ~-3 slot.container 10 quartz 22
replaceitem block ~0 ~-2 ~-3 slot.container 11 nether_wart 12
replaceitem block ~0 ~-2 ~-3 slot.container 12 obsidian 9
replaceitem block ~0 ~-2 ~-3 slot.container 13 crying_obsidian 6
replaceitem block ~0 ~-2 ~-3 slot.container 14 golden_apple 5
loot insert ~0 ~-2 ~-3 loot "rsf/nether_wastes"
loot insert ~0 ~-2 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~9 ~5 red_nether_brick []
fill ~-2 ~1 ~-4 ~2 ~8 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~9 ~-5 chiseled_nether_bricks []
fill ~-3 ~1 ~5 ~-3 ~9 ~5 chiseled_nether_bricks []
fill ~3 ~1 ~-5 ~3 ~9 ~-5 chiseled_nether_bricks []
fill ~3 ~1 ~5 ~3 ~9 ~5 chiseled_nether_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 nether_brick_fence []
setblock ~3 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~9 ~-5 ~3 ~9 ~5 red_nether_brick_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-3 ~8 ~-1 ~-3 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 nether_brick []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 soul_lantern []
setblock ~2 ~4 ~-10 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 5x6x2) ---
fill ~-5 ~0 ~-6 ~-5 ~5 ~-6 nether_brick []
setblock ~-5 ~6 ~-6 magma []
setblock ~-5 ~7 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-2 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 blaze_rod 6
replaceitem block ~-2 ~1 ~4 slot.container 1 magma_cream 9
replaceitem block ~-2 ~1 ~4 slot.container 2 ghast_tear 6
replaceitem block ~-2 ~1 ~4 slot.container 3 gold_nugget 19
replaceitem block ~-2 ~1 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~-2 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-2 ~1 ~4 slot.container 9 crying_obsidian 6
replaceitem block ~-2 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-2 ~1 ~4 slot.container 11 golden_carrot 12
replaceitem block ~-2 ~1 ~4 slot.container 12 netherite_scrap 6
replaceitem block ~-2 ~1 ~4 slot.container 13 fire_charge 12
replaceitem block ~-2 ~1 ~4 slot.container 14 soul_lantern 4
loot insert ~-2 ~1 ~4 loot "rsf/nether_wastes"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 ghast_tear 9
replaceitem block ~2 ~1 ~4 slot.container 1 gold_nugget 22
replaceitem block ~2 ~1 ~4 slot.container 2 rotten_flesh 19
replaceitem block ~2 ~1 ~4 slot.container 3 bone 10
replaceitem block ~2 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~2 ~1 ~4 slot.container 5 coal 14
replaceitem block ~2 ~1 ~4 slot.container 9 crying_obsidian 4
replaceitem block ~2 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~2 ~1 ~4 slot.container 11 golden_carrot 10
replaceitem block ~2 ~1 ~4 slot.container 12 netherite_scrap 4
replaceitem block ~2 ~1 ~4 slot.container 13 fire_charge 10
replaceitem block ~2 ~1 ~4 slot.container 14 soul_lantern 9
loot insert ~2 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~2 ~1 ~4 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-2 ~0
