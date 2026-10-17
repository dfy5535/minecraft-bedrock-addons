# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3543/4224 | 主题内编号: b087/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·十字矿道枢纽补给室 (nether_wastes_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~8 ~8 air [] replace fire
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 blackstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 nether_brick []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 coal 16
replaceitem block ~-2 ~-4 ~3 slot.container 1 blaze_rod 11
replaceitem block ~-2 ~-4 ~3 slot.container 2 magma_cream 14
replaceitem block ~-2 ~-4 ~3 slot.container 3 ghast_tear 11
replaceitem block ~-2 ~-4 ~3 slot.container 4 gold_nugget 16
replaceitem block ~-2 ~-4 ~3 slot.container 5 rotten_flesh 13
replaceitem block ~-2 ~-4 ~3 slot.container 9 soul_lantern 8
replaceitem block ~-2 ~-4 ~3 slot.container 10 gold_ingot 15
replaceitem block ~-2 ~-4 ~3 slot.container 11 quartz 22
replaceitem block ~-2 ~-4 ~3 slot.container 12 nether_wart 12
replaceitem block ~-2 ~-4 ~3 slot.container 13 obsidian 9
replaceitem block ~-2 ~-4 ~3 slot.container 14 crying_obsidian 6
loot insert ~-2 ~-4 ~3 loot "rsf/nether_wastes"
loot insert ~-2 ~-4 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 nether_brick []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 polished_blackstone_wall []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 air []
setblock ~-5 ~6 ~-6 gilded_blackstone []
setblock ~-5 ~7 ~-6 lantern []
setblock ~-5 ~6 ~6 gilded_blackstone []
setblock ~-5 ~7 ~6 lantern []
setblock ~5 ~6 ~-6 gilded_blackstone []
setblock ~5 ~7 ~-6 lantern []
setblock ~5 ~6 ~6 gilded_blackstone []
setblock ~5 ~7 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 nether_brick []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 nether_brick []
setblock ~-7 ~6 ~-8 magma []
setblock ~-7 ~7 ~-8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 blast_furnace []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 coal 19
replaceitem block ~4 ~1 ~5 slot.container 1 blaze_rod 6
replaceitem block ~4 ~1 ~5 slot.container 2 magma_cream 9
replaceitem block ~4 ~1 ~5 slot.container 3 ghast_tear 6
replaceitem block ~4 ~1 ~5 slot.container 4 gold_nugget 19
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 soul_lantern 5
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 11 quartz 19
replaceitem block ~4 ~1 ~5 slot.container 12 nether_wart 16
replaceitem block ~4 ~1 ~5 slot.container 13 obsidian 13
replaceitem block ~4 ~1 ~5 slot.container 14 crying_obsidian 10
loot insert ~4 ~1 ~5 loot "rsf/nether_wastes"
summon wither_skeleton ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
