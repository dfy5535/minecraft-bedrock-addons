# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3530/4224 | 主题内编号: b074/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·十字四象图腾柱阵 (nether_wastes_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 glowstone []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 ghast_tear 11
replaceitem block ~3 ~-2 ~0 slot.container 1 gold_nugget 16
replaceitem block ~3 ~-2 ~0 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~-2 ~0 slot.container 3 bone 12
replaceitem block ~3 ~-2 ~0 slot.container 4 ender_pearl 7
replaceitem block ~3 ~-2 ~0 slot.container 5 coal 16
replaceitem block ~3 ~-2 ~0 slot.container 9 golden_carrot 8
replaceitem block ~3 ~-2 ~0 slot.container 10 netherite_scrap 2
replaceitem block ~3 ~-2 ~0 slot.container 11 fire_charge 8
replaceitem block ~3 ~-2 ~0 slot.container 12 soul_lantern 7
replaceitem block ~3 ~-2 ~0 slot.container 13 gold_ingot 14
replaceitem block ~3 ~-2 ~0 slot.container 14 quartz 21
loot insert ~3 ~-2 ~0 loot "rsf/nether_wastes"
loot insert ~3 ~-2 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 nether_brick []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 nether_brick []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 nether_brick_fence []
setblock ~5 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 chiseled_nether_bricks []
setblock ~-5 ~10 ~-6 soul_lantern []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 chiseled_nether_bricks []
setblock ~-5 ~10 ~6 soul_lantern []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 chiseled_nether_bricks []
setblock ~5 ~10 ~-6 soul_lantern []
fill ~5 ~7 ~6 ~5 ~9 ~6 chiseled_nether_bricks []
setblock ~5 ~10 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 nether_brick []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~-7 ~-7 ~7 ~-7 nether_brick []
setblock ~-7 ~8 ~-7 magma []
setblock ~-7 ~9 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 16
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 5 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 10 quartz 19
replaceitem block ~-4 ~1 ~5 slot.container 11 nether_wart 16
replaceitem block ~-4 ~1 ~5 slot.container 12 obsidian 13
replaceitem block ~-4 ~1 ~5 slot.container 13 crying_obsidian 10
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 2
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 19
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 3 coal 14
replaceitem block ~4 ~1 ~5 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 5 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 quartz 17
replaceitem block ~4 ~1 ~5 slot.container 11 nether_wart 14
replaceitem block ~4 ~1 ~5 slot.container 12 obsidian 11
replaceitem block ~4 ~1 ~5 slot.container 13 crying_obsidian 8
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~-2 ~0
