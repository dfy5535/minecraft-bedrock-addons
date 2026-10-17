# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1707/4224 | 主题内编号: b043/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·十字四门试炼擂台 (mangrove_swamp_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mud_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~0 ~-4 ~4 slot.container 1 spider_eye 7
replaceitem block ~0 ~-4 ~4 slot.container 2 gunpowder 8
replaceitem block ~0 ~-4 ~4 slot.container 3 prismarine_shard 7
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 slime_ball 19
replaceitem block ~0 ~-4 ~4 slot.container 9 golden_apple 7
replaceitem block ~0 ~-4 ~4 slot.container 10 boat 1
replaceitem block ~0 ~-4 ~4 slot.container 11 lantern 5
replaceitem block ~0 ~-4 ~4 slot.container 12 mangrove_log 18
replaceitem block ~0 ~-4 ~4 slot.container 13 mud_bricks 19
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_salmon 12
loot insert ~0 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~7 ~7 mossy_stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 mossy_stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~6 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 mud_brick_wall []
setblock ~6 ~2 ~0 mud_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 mud_bricks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 mud_brick_wall []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 mangrove_log []
setblock ~-6 ~9 ~-7 lantern []
setblock ~-6 ~8 ~7 mangrove_log []
setblock ~-6 ~9 ~7 lantern []
setblock ~6 ~8 ~-7 mangrove_log []
setblock ~6 ~9 ~-7 lantern []
setblock ~6 ~8 ~7 mangrove_log []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 mud_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-9 ~-2 ~-2 ~-9 ~5 ~-2 mangrove_roots []
fill ~9 ~-2 ~-2 ~9 ~5 ~-2 mangrove_roots []
fill ~-9 ~6 ~-2 ~9 ~6 ~-2 mud_brick_slab []
setblock ~0 ~7 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~6 fletching_table []
setblock ~0 ~1 ~6 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 3 prismarine_shard 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 slime_ball 14
replaceitem block ~5 ~1 ~6 slot.container 9 mud_bricks 22
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_salmon 8
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 7
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 14 lead 6
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
