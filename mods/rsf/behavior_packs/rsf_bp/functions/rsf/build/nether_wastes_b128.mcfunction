# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3584/4224 | 主题内编号: b128/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·U型紫禁朝堂大殿与地底金库 (nether_wastes_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace lava
fill ~-8 ~0 ~-9 ~8 ~11 ~9 air [] replace fire
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_nether_brick [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 red_nether_brick [] replace lava
fill ~-7 ~0 ~-8 ~7 ~0 ~8 red_nether_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 quartz_block []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 red_nether_brick []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~-3 ~5 slot.container 1 bone 12
replaceitem block ~4 ~-3 ~5 slot.container 2 ender_pearl 7
replaceitem block ~4 ~-3 ~5 slot.container 3 coal 16
replaceitem block ~4 ~-3 ~5 slot.container 4 blaze_rod 11
replaceitem block ~4 ~-3 ~5 slot.container 5 magma_cream 14
replaceitem block ~4 ~-3 ~5 slot.container 9 fire_charge 12
replaceitem block ~4 ~-3 ~5 slot.container 10 soul_lantern 4
replaceitem block ~4 ~-3 ~5 slot.container 11 gold_ingot 11
replaceitem block ~4 ~-3 ~5 slot.container 12 quartz 18
replaceitem block ~4 ~-3 ~5 slot.container 13 nether_wart 15
replaceitem block ~4 ~-3 ~5 slot.container 14 obsidian 12
loot insert ~4 ~-3 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~-3 ~5 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 red_nether_brick []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-8 ~7 ~8 ~8 red_nether_brick_slab []
fill ~-5 ~9 ~-6 ~5 ~10 ~6 quartz_block []
fill ~-6 ~11 ~-7 ~6 ~11 ~7 quartz_slab []
setblock ~0 ~12 ~0 magma []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 red_nether_brick []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-8 ~-8 ~6 ~-8 nether_brick []
setblock ~-8 ~7 ~-8 magma []
setblock ~-8 ~8 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~6 blast_furnace []
setblock ~-4 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 blaze_rod 6
replaceitem block ~-5 ~1 ~6 slot.container 1 magma_cream 9
replaceitem block ~-5 ~1 ~6 slot.container 2 ghast_tear 6
replaceitem block ~-5 ~1 ~6 slot.container 3 gold_nugget 19
replaceitem block ~-5 ~1 ~6 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~6 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~6 slot.container 9 nether_wart 12
replaceitem block ~-5 ~1 ~6 slot.container 10 obsidian 9
replaceitem block ~-5 ~1 ~6 slot.container 11 crying_obsidian 6
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~6 slot.container 13 golden_carrot 12
replaceitem block ~-5 ~1 ~6 slot.container 14 netherite_scrap 6
loot insert ~-5 ~1 ~6 loot "rsf/nether_wastes"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ghast_tear 9
replaceitem block ~5 ~1 ~6 slot.container 1 gold_nugget 22
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 19
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~6 slot.container 5 coal 14
replaceitem block ~5 ~1 ~6 slot.container 9 nether_wart 17
replaceitem block ~5 ~1 ~6 slot.container 10 obsidian 14
replaceitem block ~5 ~1 ~6 slot.container 11 crying_obsidian 4
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 13 golden_carrot 10
replaceitem block ~5 ~1 ~6 slot.container 14 netherite_scrap 4
loot insert ~5 ~1 ~6 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~6 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-3 ~0
