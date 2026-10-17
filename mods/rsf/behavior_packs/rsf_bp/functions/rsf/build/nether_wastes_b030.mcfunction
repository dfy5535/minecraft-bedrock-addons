# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3486/4224 | 主题内编号: b030/128
# 地形主题 #28: 下界荒地与要塞残骸 (nether_wastes) —— 带下界砖熔岩引流槽与烈焰人烽火台
# 建筑名称: 下界要塞系·双坡顶驻军卫戍塔 (nether_wastes_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: hell
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace lava
fill ~-6 ~0 ~-7 ~6 ~12 ~7 air [] replace fire
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 nether_brick [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 nether_brick [] replace lava
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 glowstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 nether_brick []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 soul_lantern []
setblock ~2 ~-4 ~-3 soul_lantern []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 blaze_rod 11
replaceitem block ~2 ~-2 ~3 slot.container 1 magma_cream 14
replaceitem block ~2 ~-2 ~3 slot.container 2 ghast_tear 11
replaceitem block ~2 ~-2 ~3 slot.container 3 gold_nugget 16
replaceitem block ~2 ~-2 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~2 ~-2 ~3 slot.container 5 bone 12
replaceitem block ~2 ~-2 ~3 slot.container 9 gold_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 10 quartz 19
replaceitem block ~2 ~-2 ~3 slot.container 11 nether_wart 16
replaceitem block ~2 ~-2 ~3 slot.container 12 obsidian 13
replaceitem block ~2 ~-2 ~3 slot.container 13 crying_obsidian 10
replaceitem block ~2 ~-2 ~3 slot.container 14 golden_apple 2
loot insert ~2 ~-2 ~3 loot "rsf/nether_wastes"
loot insert ~2 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~9 ~5 nether_brick []
fill ~-4 ~1 ~0 ~4 ~8 ~5 polished_blackstone_bricks []
fill ~-3 ~1 ~-4 ~-1 ~8 ~4 air []
fill ~-1 ~1 ~1 ~3 ~7 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~10 ~-6 ~-5 ~10 ~6 nether_brick_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-6 ~5 ~10 ~6 nether_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~11 ~-5 ~-4 ~11 ~5 nether_brick_stairs ["weirdo_direction"=0]
fill ~4 ~11 ~-5 ~4 ~11 ~5 nether_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~11 ~-5 ~3 ~11 ~5 nether_brick_slab []
fill ~0 ~12 ~-6 ~0 ~12 ~6 red_nether_brick []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 nether_brick []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (nether_wastes 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-6 ~0 ~-7 ~-6 ~8 ~-7 nether_brick []
setblock ~-6 ~9 ~-7 magma []
setblock ~-6 ~10 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-3 ~1 ~4 slot.container 1 coal 19
replaceitem block ~-3 ~1 ~4 slot.container 2 blaze_rod 6
replaceitem block ~-3 ~1 ~4 slot.container 3 magma_cream 9
replaceitem block ~-3 ~1 ~4 slot.container 4 ghast_tear 6
replaceitem block ~-3 ~1 ~4 slot.container 5 gold_nugget 19
replaceitem block ~-3 ~1 ~4 slot.container 9 fire_charge 6
replaceitem block ~-3 ~1 ~4 slot.container 10 soul_lantern 5
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 12 quartz 19
replaceitem block ~-3 ~1 ~4 slot.container 13 nether_wart 16
replaceitem block ~-3 ~1 ~4 slot.container 14 obsidian 13
loot insert ~-3 ~1 ~4 loot "rsf/nether_wastes"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 blaze_rod 9
replaceitem block ~3 ~1 ~4 slot.container 1 magma_cream 12
replaceitem block ~3 ~1 ~4 slot.container 2 ghast_tear 9
replaceitem block ~3 ~1 ~4 slot.container 3 gold_nugget 22
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 19
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 fire_charge 11
replaceitem block ~3 ~1 ~4 slot.container 10 soul_lantern 10
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 12 quartz 17
replaceitem block ~3 ~1 ~4 slot.container 13 nether_wart 14
replaceitem block ~3 ~1 ~4 slot.container 14 obsidian 11
loot insert ~3 ~1 ~4 loot "rsf/nether_wastes"
loot insert ~3 ~1 ~4 loot "chests/nether_bridge"
summon blaze ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
