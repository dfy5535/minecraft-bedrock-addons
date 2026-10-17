# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1729/4224 | 主题内编号: b065/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·断柱露天古神庙废墟 (mangrove_swamp_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log2
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 mangrove_planks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 mangrove_planks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 mangrove_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mossy_stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 packed_mud []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 gunpowder 8
replaceitem block ~3 ~-3 ~5 slot.container 1 prismarine_shard 7
replaceitem block ~3 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~5 slot.container 3 slime_ball 19
replaceitem block ~3 ~-3 ~5 slot.container 4 bone 16
replaceitem block ~3 ~-3 ~5 slot.container 5 arrow 23
replaceitem block ~3 ~-3 ~5 slot.container 9 mud_bricks 19
replaceitem block ~3 ~-3 ~5 slot.container 10 cooked_salmon 12
replaceitem block ~3 ~-3 ~5 slot.container 11 iron_ingot 11
replaceitem block ~3 ~-3 ~5 slot.container 12 gold_ingot 10
replaceitem block ~3 ~-3 ~5 slot.container 13 emerald 3
replaceitem block ~3 ~-3 ~5 slot.container 14 lead 3
loot insert ~3 ~-3 ~5 loot "rsf/mangrove_swamp"
loot insert ~3 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 mud_bricks []
fill ~-5 ~1 ~-7 ~-5 ~6 ~-7 stripped_mangrove_log []
fill ~-5 ~1 ~7 ~-5 ~6 ~7 stripped_mangrove_log []
fill ~-3 ~1 ~-7 ~-3 ~6 ~-7 stripped_mangrove_log []
fill ~-3 ~1 ~7 ~-3 ~6 ~7 stripped_mangrove_log []
fill ~-1 ~1 ~-7 ~-1 ~6 ~-7 stripped_mangrove_log []
fill ~-1 ~1 ~7 ~-1 ~6 ~7 stripped_mangrove_log []
fill ~1 ~1 ~-7 ~1 ~6 ~-7 stripped_mangrove_log []
fill ~1 ~1 ~7 ~1 ~6 ~7 stripped_mangrove_log []
fill ~3 ~1 ~-7 ~3 ~6 ~-7 stripped_mangrove_log []
fill ~3 ~1 ~7 ~3 ~6 ~7 stripped_mangrove_log []
fill ~5 ~1 ~-7 ~5 ~6 ~-7 stripped_mangrove_log []
fill ~5 ~1 ~7 ~5 ~6 ~7 stripped_mangrove_log []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 stripped_mangrove_log []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 stripped_mangrove_log []
fill ~-5 ~1 ~-3 ~-5 ~6 ~-3 stripped_mangrove_log []
fill ~5 ~1 ~-3 ~5 ~6 ~-3 stripped_mangrove_log []
fill ~-5 ~1 ~-1 ~-5 ~6 ~-1 stripped_mangrove_log []
fill ~5 ~1 ~-1 ~5 ~6 ~-1 stripped_mangrove_log []
fill ~-5 ~1 ~1 ~-5 ~6 ~1 stripped_mangrove_log []
fill ~5 ~1 ~1 ~5 ~6 ~1 stripped_mangrove_log []
fill ~-5 ~1 ~3 ~-5 ~6 ~3 stripped_mangrove_log []
fill ~5 ~1 ~3 ~5 ~6 ~3 stripped_mangrove_log []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 stripped_mangrove_log []
fill ~5 ~1 ~5 ~5 ~6 ~5 stripped_mangrove_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 mangrove_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 stripped_mangrove_log []
setblock ~-7 ~6 ~-9 torch []
fill ~-7 ~0 ~9 ~-7 ~5 ~9 stripped_mangrove_log []
setblock ~-7 ~6 ~9 torch []
fill ~7 ~0 ~-9 ~7 ~5 ~-9 stripped_mangrove_log []
setblock ~7 ~6 ~-9 torch []
fill ~7 ~0 ~9 ~7 ~5 ~9 stripped_mangrove_log []
setblock ~7 ~6 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-8 ~-2 ~-1 ~-8 ~7 ~-1 mangrove_roots []
fill ~8 ~-2 ~-1 ~8 ~7 ~-1 mangrove_roots []
fill ~-8 ~8 ~-1 ~8 ~8 ~-1 mud_brick_slab []
setblock ~0 ~9 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 11
replaceitem block ~4 ~1 ~6 slot.container 1 arrow 18
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~6 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~6 slot.container 4 gunpowder 11
replaceitem block ~4 ~1 ~6 slot.container 5 prismarine_shard 10
replaceitem block ~4 ~1 ~6 slot.container 9 golden_apple 1
replaceitem block ~4 ~1 ~6 slot.container 10 boat 1
replaceitem block ~4 ~1 ~6 slot.container 11 lantern 6
replaceitem block ~4 ~1 ~6 slot.container 12 mangrove_log 19
replaceitem block ~4 ~1 ~6 slot.container 13 mud_bricks 20
replaceitem block ~4 ~1 ~6 slot.container 14 cooked_salmon 13
loot insert ~4 ~1 ~6 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
