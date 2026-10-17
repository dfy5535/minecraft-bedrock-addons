# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1665/4224 | 主题内编号: b001/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·三层阶梯圣火祭坛 (mangrove_swamp_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mangrove_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mangrove_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 packed_mud []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 gunpowder 8
replaceitem block ~2 ~-3 ~3 slot.container 1 prismarine_shard 7
replaceitem block ~2 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 3 slime_ball 19
replaceitem block ~2 ~-3 ~3 slot.container 4 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 5 arrow 23
replaceitem block ~2 ~-3 ~3 slot.container 9 lantern 6
replaceitem block ~2 ~-3 ~3 slot.container 10 mangrove_log 19
replaceitem block ~2 ~-3 ~3 slot.container 11 mud_bricks 20
replaceitem block ~2 ~-3 ~3 slot.container 12 cooked_salmon 13
replaceitem block ~2 ~-3 ~3 slot.container 13 iron_ingot 12
replaceitem block ~2 ~-3 ~3 slot.container 14 gold_ingot 4
loot insert ~2 ~-3 ~3 loot "rsf/mangrove_swamp"
loot insert ~2 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mangrove_planks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 mud_bricks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 packed_mud []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 mangrove_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 mud_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 mangrove_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 stripped_mangrove_log []
setblock ~-6 ~6 ~-7 torch []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 stripped_mangrove_log []
setblock ~-6 ~6 ~7 torch []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 stripped_mangrove_log []
setblock ~6 ~6 ~-7 torch []
fill ~6 ~0 ~7 ~6 ~5 ~7 stripped_mangrove_log []
setblock ~6 ~6 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~-2 ~-1 ~-7 ~3 ~-1 mangrove_roots []
fill ~7 ~-2 ~-1 ~7 ~3 ~-1 mangrove_roots []
fill ~-7 ~4 ~-1 ~7 ~4 ~-1 mud_brick_slab []
setblock ~0 ~5 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 slime []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 11
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 18
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 10
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 11
replaceitem block ~3 ~1 ~4 slot.container 5 prismarine_shard 10
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 10 lead 2
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 2
replaceitem block ~3 ~1 ~4 slot.container 12 boat 1
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 14 mangrove_log 20
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
