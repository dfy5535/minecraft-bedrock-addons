# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3520/4224 | 主题内编号: b064/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·U型冥庭守墓人陵园 (nether_wastes_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_nether_brick [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 red_nether_brick [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 red_nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 quartz_block []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 magma []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 quartz_block []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 nether_brick []
setblock ~0 ~-6 ~0 gilded_blackstone []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ghast_tear 11
replaceitem block ~0 ~-3 ~-4 slot.container 1 gold_nugget 16
replaceitem block ~0 ~-3 ~-4 slot.container 2 rotten_flesh 13
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 12
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 7
replaceitem block ~0 ~-3 ~-4 slot.container 5 coal 16
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_carrot 10
replaceitem block ~0 ~-3 ~-4 slot.container 10 netherite_scrap 4
replaceitem block ~0 ~-3 ~-4 slot.container 11 fire_charge 10
replaceitem block ~0 ~-3 ~-4 slot.container 12 soul_lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 13 gold_ingot 16
replaceitem block ~0 ~-3 ~-4 slot.container 14 quartz 16
loot insert ~0 ~-3 ~-4 loot "rsf/nether_wastes"
loot insert ~0 ~-3 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 red_nether_brick []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 red_nether_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 red_nether_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 red_nether_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 red_nether_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 red_nether_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 nether_brick []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 red_nether_brick []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~-7 ~0 ~-9 ~-7 ~7 ~-9 nether_brick []
setblock ~-7 ~8 ~-9 magma []
setblock ~-7 ~9 ~-9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 blaze_rod 6
replaceitem block ~-4 ~1 ~5 slot.container 1 magma_cream 9
replaceitem block ~-4 ~1 ~5 slot.container 2 ghast_tear 6
replaceitem block ~-4 ~1 ~5 slot.container 3 gold_nugget 19
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 16
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 16
replaceitem block ~-4 ~1 ~5 slot.container 10 quartz 16
replaceitem block ~-4 ~1 ~5 slot.container 11 nether_wart 13
replaceitem block ~-4 ~1 ~5 slot.container 12 obsidian 10
replaceitem block ~-4 ~1 ~5 slot.container 13 crying_obsidian 7
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~5 loot "rsf/nether_wastes"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ghast_tear 9
replaceitem block ~4 ~1 ~5 slot.container 1 gold_nugget 22
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 19
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 5 coal 14
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 10 quartz 21
replaceitem block ~4 ~1 ~5 slot.container 11 nether_wart 18
replaceitem block ~4 ~1 ~5 slot.container 12 obsidian 8
replaceitem block ~4 ~1 ~5 slot.container 13 crying_obsidian 5
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
loot insert ~4 ~1 ~5 loot "chests/nether_bridge"
summon magma_cube ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
