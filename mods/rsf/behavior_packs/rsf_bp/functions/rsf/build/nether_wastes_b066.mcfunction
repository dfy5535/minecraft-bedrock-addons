# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3522/4224 | 主题内编号: b066/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·崩塌角楼古堡残垣 (nether_wastes_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
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

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 nether_brick []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 soul_lantern []
setblock ~3 ~-4 ~-4 soul_lantern []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~-2 ~4 slot.container 1 bone 12
replaceitem block ~3 ~-2 ~4 slot.container 2 ender_pearl 7
replaceitem block ~3 ~-2 ~4 slot.container 3 coal 16
replaceitem block ~3 ~-2 ~4 slot.container 4 blaze_rod 11
replaceitem block ~3 ~-2 ~4 slot.container 5 magma_cream 14
replaceitem block ~3 ~-2 ~4 slot.container 9 fire_charge 9
replaceitem block ~3 ~-2 ~4 slot.container 10 soul_lantern 8
replaceitem block ~3 ~-2 ~4 slot.container 11 gold_ingot 15
replaceitem block ~3 ~-2 ~4 slot.container 12 quartz 22
replaceitem block ~3 ~-2 ~4 slot.container 13 nether_wart 12
replaceitem block ~3 ~-2 ~4 slot.container 14 obsidian 9
loot insert ~3 ~-2 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-2 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 nether_brick []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 red_nether_brick []
setblock ~-5 ~10 ~-6 soul_lantern []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 red_nether_brick []
setblock ~-5 ~10 ~5 soul_lantern []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 red_nether_brick []
setblock ~4 ~10 ~-6 soul_lantern []
fill ~4 ~1 ~5 ~5 ~9 ~6 red_nether_brick []
setblock ~4 ~10 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 nether_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~0 ~-8 ~-7 ~9 ~-8 nether_brick []
setblock ~-7 ~10 ~-8 magma []
setblock ~-7 ~11 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 16
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 5 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 9 golden_carrot 9
replaceitem block ~-4 ~1 ~5 slot.container 10 netherite_scrap 3
replaceitem block ~-4 ~1 ~5 slot.container 11 fire_charge 9
replaceitem block ~-4 ~1 ~5 slot.container 12 soul_lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 15
replaceitem block ~-4 ~1 ~5 slot.container 14 quartz 22
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 19
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 3 coal 14
replaceitem block ~4 ~1 ~5 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 5 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 9 golden_carrot 14
replaceitem block ~4 ~1 ~5 slot.container 10 netherite_scrap 1
replaceitem block ~4 ~1 ~5 slot.container 11 fire_charge 7
replaceitem block ~4 ~1 ~5 slot.container 12 soul_lantern 6
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 14 quartz 20
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
