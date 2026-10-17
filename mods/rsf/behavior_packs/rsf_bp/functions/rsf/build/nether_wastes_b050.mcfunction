# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3506/4224 | 主题内编号: b050/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·L型探险家补给驿站 (nether_wastes_outpost_l_waystation)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 nether_brick [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 red_nether_brick []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 nether_brick []
fill ~-5 ~1 ~0 ~5 ~5 ~6 polished_blackstone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 nether_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 nether_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 nether_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 nether_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 nether_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 red_nether_brick []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-7 ~0 ~-7 ~-7 ~8 ~-7 nether_brick []
setblock ~-7 ~9 ~-7 magma []
setblock ~-7 ~10 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 gilded_blackstone []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 1 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 16
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 5 coal 19
replaceitem block ~-4 ~1 ~5 slot.container 9 fire_charge 12
replaceitem block ~-4 ~1 ~5 slot.container 10 soul_lantern 4
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 12 quartz 18
replaceitem block ~-4 ~1 ~5 slot.container 13 nether_wart 15
replaceitem block ~-4 ~1 ~5 slot.container 14 obsidian 12
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 19
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 3 coal 14
replaceitem block ~4 ~1 ~5 slot.container 4 blaze_rod 9
replaceitem block ~4 ~1 ~5 slot.container 5 magma_cream 12
replaceitem block ~4 ~1 ~5 slot.container 9 fire_charge 10
replaceitem block ~4 ~1 ~5 slot.container 10 soul_lantern 9
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 16
replaceitem block ~4 ~1 ~5 slot.container 12 quartz 16
replaceitem block ~4 ~1 ~5 slot.container 13 nether_wart 13
replaceitem block ~4 ~1 ~5 slot.container 14 obsidian 10
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon piglin ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon magma_cube ~1 ~1 ~1
summon strider ~0 ~2 ~0
