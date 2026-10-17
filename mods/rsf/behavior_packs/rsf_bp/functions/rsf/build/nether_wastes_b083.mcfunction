# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3539/4224 | 主题内编号: b083/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·铁砧锻造与模具工坊 (nether_wastes_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_blackstone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 coal 16
replaceitem block ~3 ~-3 ~4 slot.container 1 blaze_rod 11
replaceitem block ~3 ~-3 ~4 slot.container 2 magma_cream 14
replaceitem block ~3 ~-3 ~4 slot.container 3 ghast_tear 11
replaceitem block ~3 ~-3 ~4 slot.container 4 gold_nugget 16
replaceitem block ~3 ~-3 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~3 ~-3 ~4 slot.container 9 obsidian 11
replaceitem block ~3 ~-3 ~4 slot.container 10 crying_obsidian 8
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_apple 7
replaceitem block ~3 ~-3 ~4 slot.container 12 golden_carrot 14
replaceitem block ~3 ~-3 ~4 slot.container 13 netherite_scrap 1
replaceitem block ~3 ~-3 ~4 slot.container 14 fire_charge 7
loot insert ~3 ~-3 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 polished_blackstone_bricks []
fill ~-5 ~1 ~0 ~5 ~5 ~6 red_nether_brick []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 polished_blackstone_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 nether_brick []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~-7 ~-7 ~6 ~-7 nether_brick []
setblock ~-7 ~7 ~-7 magma []
setblock ~-7 ~8 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 10
replaceitem block ~4 ~1 ~5 slot.container 4 coal 19
replaceitem block ~4 ~1 ~5 slot.container 5 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 9 netherite_scrap 5
replaceitem block ~4 ~1 ~5 slot.container 10 fire_charge 11
replaceitem block ~4 ~1 ~5 slot.container 11 soul_lantern 10
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 13 quartz 17
replaceitem block ~4 ~1 ~5 slot.container 14 nether_wart 14
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon strider ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
summon piglin ~0 ~-3 ~0
