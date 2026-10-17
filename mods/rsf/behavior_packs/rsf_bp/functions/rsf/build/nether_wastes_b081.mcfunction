# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3537/4224 | 主题内编号: b081/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双高炉重工冶炼密室 (nether_wastes_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-8 ~6 ~9 ~8 air [] replace lava
fill ~-6 ~0 ~-8 ~6 ~9 ~8 air [] replace fire
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 quartz_block [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 quartz_block [] replace lava
fill ~-5 ~0 ~-7 ~5 ~0 ~7 quartz_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 polished_blackstone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 quartz_block []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
setblock ~-2 ~-6 ~0 blast_furnace []
setblock ~2 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-4 ~4 slot.container 0 bone 12
replaceitem block ~2 ~-4 ~4 slot.container 1 ender_pearl 7
replaceitem block ~2 ~-4 ~4 slot.container 2 coal 16
replaceitem block ~2 ~-4 ~4 slot.container 3 blaze_rod 11
replaceitem block ~2 ~-4 ~4 slot.container 4 magma_cream 14
replaceitem block ~2 ~-4 ~4 slot.container 5 ghast_tear 11
replaceitem block ~2 ~-4 ~4 slot.container 9 netherite_scrap 2
replaceitem block ~2 ~-4 ~4 slot.container 10 fire_charge 8
replaceitem block ~2 ~-4 ~4 slot.container 11 soul_lantern 7
replaceitem block ~2 ~-4 ~4 slot.container 12 gold_ingot 14
replaceitem block ~2 ~-4 ~4 slot.container 13 quartz 21
replaceitem block ~2 ~-4 ~4 slot.container 14 nether_wart 18
loot insert ~2 ~-4 ~4 loot "rsf/nether_wastes"
loot insert ~2 ~-4 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-4 ~1 ~-6 ~4 ~6 ~6 quartz_block []
fill ~-3 ~1 ~-5 ~3 ~5 ~5 air []
fill ~-4 ~1 ~6 ~-5 ~9 ~6 nether_brick []
setblock ~-4 ~10 ~6 soul_lantern []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-7 ~-5 ~7 ~7 quartz_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-7 ~5 ~7 ~7 quartz_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~-4 ~8 ~6 quartz_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-6 ~4 ~8 ~6 quartz_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-6 ~3 ~8 ~6 quartz_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 nether_brick []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~-6 ~0 ~-8 ~-6 ~9 ~-8 nether_brick []
setblock ~-6 ~10 ~-8 magma []
setblock ~-6 ~11 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-3 ~1 ~5 blast_furnace []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 magma_cream 9
replaceitem block ~3 ~1 ~5 slot.container 1 ghast_tear 6
replaceitem block ~3 ~1 ~5 slot.container 2 gold_nugget 19
replaceitem block ~3 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~5 slot.container 4 bone 15
replaceitem block ~3 ~1 ~5 slot.container 5 ender_pearl 10
replaceitem block ~3 ~1 ~5 slot.container 9 quartz 18
replaceitem block ~3 ~1 ~5 slot.container 10 nether_wart 15
replaceitem block ~3 ~1 ~5 slot.container 11 obsidian 12
replaceitem block ~3 ~1 ~5 slot.container 12 crying_obsidian 9
replaceitem block ~3 ~1 ~5 slot.container 13 golden_apple 8
replaceitem block ~3 ~1 ~5 slot.container 14 golden_carrot 8
loot insert ~3 ~1 ~5 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
