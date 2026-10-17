# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1732/4224 | 主题内编号: b068/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·断裂凯旋高架拱廊 (mangrove_swamp_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mud_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mud_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 mangrove_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 mud_bricks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mud_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mangrove_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-9 ~-2 ~1 ~-9 ~5 ~1 mangrove_roots []
fill ~9 ~-2 ~1 ~9 ~5 ~1 mangrove_roots []
fill ~-9 ~6 ~1 ~9 ~6 ~1 mud_brick_slab []
setblock ~0 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 2 prismarine_shard 10
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 lead 5
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 11 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 13 mangrove_log 16
replaceitem block ~-5 ~1 ~4 slot.container 14 mud_bricks 17
loot insert ~-5 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 prismarine_shard 5
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 slime_ball 17
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 9 lead 3
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~5 ~1 ~4 slot.container 11 boat 1
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 8
replaceitem block ~5 ~1 ~4 slot.container 13 mangrove_log 21
replaceitem block ~5 ~1 ~4 slot.container 14 mud_bricks 22
loot insert ~5 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
