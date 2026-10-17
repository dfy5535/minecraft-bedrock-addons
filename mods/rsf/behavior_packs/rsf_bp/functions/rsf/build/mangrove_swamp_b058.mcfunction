# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1722/4224 | 主题内编号: b058/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·十字拱顶家族陵墓 (mangrove_swamp_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 packed_mud [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 packed_mud [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 packed_mud []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 campfire []
setblock ~3 ~-5 ~0 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 slime_ball 19
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 16
replaceitem block ~0 ~-3 ~4 slot.container 2 arrow 23
replaceitem block ~0 ~-3 ~4 slot.container 3 rotten_flesh 10
replaceitem block ~0 ~-3 ~4 slot.container 4 spider_eye 7
replaceitem block ~0 ~-3 ~4 slot.container 5 gunpowder 8
replaceitem block ~0 ~-3 ~4 slot.container 9 boat 1
replaceitem block ~0 ~-3 ~4 slot.container 10 lantern 4
replaceitem block ~0 ~-3 ~4 slot.container 11 mangrove_log 17
replaceitem block ~0 ~-3 ~4 slot.container 12 mud_bricks 18
replaceitem block ~0 ~-3 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~0 ~-3 ~4 slot.container 14 iron_ingot 10
loot insert ~0 ~-3 ~4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 slime_ball 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 21
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 16
replaceitem block ~0 ~-3 ~-4 slot.container 4 spider_eye 13
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 boat 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 mangrove_log 16
replaceitem block ~0 ~-3 ~-4 slot.container 12 mud_bricks 17
replaceitem block ~0 ~-3 ~-4 slot.container 13 cooked_salmon 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_ingot 9
loot insert ~0 ~-3 ~-4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 packed_mud []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 packed_mud []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 mangrove_fence []
setblock ~5 ~2 ~0 mangrove_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 mangrove_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mud_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 mangrove_log []
setblock ~0 ~4 ~-8 slime []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 mangrove_log []
setblock ~0 ~4 ~8 slime []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 mangrove_log []
setblock ~-7 ~4 ~0 slime []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 mangrove_log []
setblock ~7 ~4 ~0 slime []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~-2 ~-1 ~-8 ~5 ~-1 mangrove_roots []
fill ~8 ~-2 ~-1 ~8 ~5 ~-1 mangrove_roots []
fill ~-8 ~6 ~-1 ~8 ~6 ~-1 mud_brick_slab []
setblock ~0 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 lead 2
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 11 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 7
replaceitem block ~-4 ~1 ~5 slot.container 13 mangrove_log 20
replaceitem block ~-4 ~1 ~5 slot.container 14 mud_bricks 21
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 13
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 6
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 slime_ball 17
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 lead 7
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 11 boat 1
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 5
replaceitem block ~4 ~1 ~5 slot.container 13 mangrove_log 18
replaceitem block ~4 ~1 ~5 slot.container 14 mud_bricks 19
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
