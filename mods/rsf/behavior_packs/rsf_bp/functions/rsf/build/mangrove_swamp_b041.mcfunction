# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1705/4224 | 主题内编号: b041/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·八角看台古罗马斗技场 (mangrove_swamp_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mangrove_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mangrove_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mangrove_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mangrove_planks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 slime []
setblock ~-4 ~-5 ~-5 torch []
setblock ~4 ~-5 ~5 torch []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 1 arrow 23
replaceitem block ~0 ~-3 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~0 ~-3 ~5 slot.container 3 spider_eye 7
replaceitem block ~0 ~-3 ~5 slot.container 4 gunpowder 8
replaceitem block ~0 ~-3 ~5 slot.container 5 prismarine_shard 7
replaceitem block ~0 ~-3 ~5 slot.container 9 golden_apple 2
replaceitem block ~0 ~-3 ~5 slot.container 10 boat 1
replaceitem block ~0 ~-3 ~5 slot.container 11 lantern 7
replaceitem block ~0 ~-3 ~5 slot.container 12 mangrove_log 20
replaceitem block ~0 ~-3 ~5 slot.container 13 mud_bricks 21
replaceitem block ~0 ~-3 ~5 slot.container 14 cooked_salmon 14
loot insert ~0 ~-3 ~5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 mangrove_planks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~8 ~7 air []
fill ~6 ~1 ~7 ~6 ~8 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 stripped_mangrove_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 stripped_mangrove_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 stripped_mangrove_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 stripped_mangrove_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 stripped_mangrove_log []
setblock ~-6 ~10 ~-7 torch []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 stripped_mangrove_log []
setblock ~-6 ~10 ~7 torch []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 stripped_mangrove_log []
setblock ~6 ~10 ~-7 torch []
fill ~6 ~7 ~7 ~6 ~9 ~7 stripped_mangrove_log []
setblock ~6 ~10 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 stripped_mangrove_log []
setblock ~-8 ~6 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 stripped_mangrove_log []
setblock ~-8 ~6 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 stripped_mangrove_log []
setblock ~8 ~6 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~5 ~9 stripped_mangrove_log []
setblock ~8 ~6 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~-9 ~-2 ~3 ~-9 ~3 ~3 mangrove_roots []
fill ~9 ~-2 ~3 ~9 ~3 ~3 mangrove_roots []
fill ~-9 ~4 ~3 ~9 ~4 ~3 mud_brick_slab []
setblock ~0 ~5 ~3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 18
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 5 prismarine_shard 10
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 7
replaceitem block ~5 ~1 ~6 slot.container 10 lead 7
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 7
replaceitem block ~5 ~1 ~6 slot.container 12 boat 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 5
replaceitem block ~5 ~1 ~6 slot.container 14 mangrove_log 18
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
