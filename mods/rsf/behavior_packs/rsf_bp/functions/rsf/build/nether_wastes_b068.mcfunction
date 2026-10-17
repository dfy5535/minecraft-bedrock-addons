# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3524/4224 | 主题内编号: b068/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·断裂凯旋高架拱廊 (nether_wastes_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 red_nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 nether_brick []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 red_nether_brick []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 red_nether_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 gilded_blackstone []
setblock ~-8 ~5 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 gilded_blackstone []
setblock ~-8 ~5 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 gilded_blackstone []
setblock ~8 ~5 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~4 ~7 gilded_blackstone []
setblock ~8 ~5 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-8 ~0 ~-6 ~-8 ~6 ~-6 nether_brick []
setblock ~-8 ~7 ~-6 magma []
setblock ~-8 ~8 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 10
replaceitem block ~-5 ~1 ~4 slot.container 3 coal 19
replaceitem block ~-5 ~1 ~4 slot.container 4 blaze_rod 6
replaceitem block ~-5 ~1 ~4 slot.container 5 magma_cream 9
replaceitem block ~-5 ~1 ~4 slot.container 9 nether_wart 15
replaceitem block ~-5 ~1 ~4 slot.container 10 obsidian 12
replaceitem block ~-5 ~1 ~4 slot.container 11 crying_obsidian 9
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_carrot 8
replaceitem block ~-5 ~1 ~4 slot.container 14 netherite_scrap 2
loot insert ~-5 ~1 ~4 loot "rsf/nether_wastes"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~5 ~1 ~4 slot.container 1 coal 14
replaceitem block ~5 ~1 ~4 slot.container 2 blaze_rod 9
replaceitem block ~5 ~1 ~4 slot.container 3 magma_cream 12
replaceitem block ~5 ~1 ~4 slot.container 4 ghast_tear 9
replaceitem block ~5 ~1 ~4 slot.container 5 gold_nugget 22
replaceitem block ~5 ~1 ~4 slot.container 9 nether_wart 13
replaceitem block ~5 ~1 ~4 slot.container 10 obsidian 10
replaceitem block ~5 ~1 ~4 slot.container 11 crying_obsidian 7
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~4 slot.container 13 golden_carrot 13
replaceitem block ~5 ~1 ~4 slot.container 14 netherite_scrap 7
loot insert ~5 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~5 ~1 ~4 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~2 ~0
