# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3489/4224 | 主题内编号: b033/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·太阳金顶高耸方尖碑 (nether_wastes_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~0 ~-6 ~5 ~14 ~6 air [] replace lava
fill ~-5 ~0 ~-6 ~5 ~14 ~6 air [] replace fire
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 quartz_block [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 quartz_block [] replace lava
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_blackstone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 nether_brick []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 nether_brick []
setblock ~0 ~-6 ~0 glowstone []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 gold_nugget 16
replaceitem block ~0 ~-3 ~-2 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 12
replaceitem block ~0 ~-3 ~-2 slot.container 3 ender_pearl 7
replaceitem block ~0 ~-3 ~-2 slot.container 4 coal 16
replaceitem block ~0 ~-3 ~-2 slot.container 5 blaze_rod 11
replaceitem block ~0 ~-3 ~-2 slot.container 9 obsidian 14
replaceitem block ~0 ~-3 ~-2 slot.container 10 crying_obsidian 4
replaceitem block ~0 ~-3 ~-2 slot.container 11 golden_apple 3
replaceitem block ~0 ~-3 ~-2 slot.container 12 golden_carrot 10
replaceitem block ~0 ~-3 ~-2 slot.container 13 netherite_scrap 4
replaceitem block ~0 ~-3 ~-2 slot.container 14 fire_charge 10
loot insert ~0 ~-3 ~-2 loot "rsf/nether_wastes"
loot insert ~0 ~-3 ~-2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 quartz_block []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 nether_brick []
fill ~-1 ~5 ~-2 ~1 ~11 ~2 nether_brick []
fill ~-1 ~1 ~-2 ~1 ~10 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 quartz_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 nether_brick []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 quartz_block []
fill ~0 ~17 ~0 ~0 ~17 ~0 gilded_blackstone []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 5x6x3) ---
fill ~-5 ~0 ~-6 ~-5 ~6 ~-6 nether_brick []
setblock ~-5 ~7 ~-6 magma []
setblock ~-5 ~8 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~0 ~1 ~0 gilded_blackstone []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 magma_cream 9
replaceitem block ~2 ~1 ~3 slot.container 1 ghast_tear 6
replaceitem block ~2 ~1 ~3 slot.container 2 gold_nugget 19
replaceitem block ~2 ~1 ~3 slot.container 3 rotten_flesh 16
replaceitem block ~2 ~1 ~3 slot.container 4 bone 15
replaceitem block ~2 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~2 ~1 ~3 slot.container 9 netherite_scrap 4
replaceitem block ~2 ~1 ~3 slot.container 10 fire_charge 10
replaceitem block ~2 ~1 ~3 slot.container 11 soul_lantern 9
replaceitem block ~2 ~1 ~3 slot.container 12 gold_ingot 16
replaceitem block ~2 ~1 ~3 slot.container 13 quartz 16
replaceitem block ~2 ~1 ~3 slot.container 14 nether_wart 13
loot insert ~2 ~1 ~3 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
