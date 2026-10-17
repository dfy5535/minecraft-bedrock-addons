# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3532/4224 | 主题内编号: b076/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·阶梯高台图腾战阵 (nether_wastes_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~11 ~8 air [] replace fire
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_nether_brick [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 red_nether_brick []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 magma []
setblock ~-3 ~-4 ~-4 soul_lantern []
setblock ~3 ~-4 ~4 soul_lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-2 ~4 slot.container 1 bone 12
replaceitem block ~0 ~-2 ~4 slot.container 2 ender_pearl 7
replaceitem block ~0 ~-2 ~4 slot.container 3 coal 16
replaceitem block ~0 ~-2 ~4 slot.container 4 blaze_rod 11
replaceitem block ~0 ~-2 ~4 slot.container 5 magma_cream 14
replaceitem block ~0 ~-2 ~4 slot.container 9 fire_charge 7
replaceitem block ~0 ~-2 ~4 slot.container 10 soul_lantern 6
replaceitem block ~0 ~-2 ~4 slot.container 11 gold_ingot 13
replaceitem block ~0 ~-2 ~4 slot.container 12 quartz 20
replaceitem block ~0 ~-2 ~4 slot.container 13 nether_wart 17
replaceitem block ~0 ~-2 ~4 slot.container 14 obsidian 14
loot insert ~0 ~-2 ~4 loot "rsf/nether_wastes"
loot insert ~0 ~-2 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 red_nether_brick []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 nether_brick []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 quartz_block []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 red_nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 nether_brick []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 red_nether_brick []
fill ~0 ~14 ~0 ~0 ~14 ~0 magma []
setblock ~0 ~15 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-7 ~0 ~-9 ~-7 ~9 ~-9 nether_brick []
setblock ~-7 ~10 ~-9 magma []
setblock ~-7 ~11 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 3 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 4 blaze_rod 6
replaceitem block ~-4 ~1 ~5 slot.container 5 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 9 golden_carrot 12
replaceitem block ~-4 ~1 ~5 slot.container 10 netherite_scrap 6
replaceitem block ~-4 ~1 ~5 slot.container 11 fire_charge 12
replaceitem block ~-4 ~1 ~5 slot.container 12 soul_lantern 4
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 14 quartz 18
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 1 coal 14
replaceitem block ~4 ~1 ~5 slot.container 2 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 3 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 4 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 5 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 9 golden_carrot 10
replaceitem block ~4 ~1 ~5 slot.container 10 netherite_scrap 4
replaceitem block ~4 ~1 ~5 slot.container 11 fire_charge 10
replaceitem block ~4 ~1 ~5 slot.container 12 soul_lantern 9
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 14 quartz 16
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
