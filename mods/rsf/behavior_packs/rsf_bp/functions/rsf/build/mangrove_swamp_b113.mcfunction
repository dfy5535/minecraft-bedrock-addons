# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1777/4224 | 主题内编号: b113/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·八角全采光生态温室 (mangrove_swamp_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mangrove_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mangrove_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 mud_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-3 ~3 slot.container 0 rotten_flesh 10
replaceitem block ~-2 ~-3 ~3 slot.container 1 spider_eye 7
replaceitem block ~-2 ~-3 ~3 slot.container 2 gunpowder 8
replaceitem block ~-2 ~-3 ~3 slot.container 3 prismarine_shard 7
replaceitem block ~-2 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~-2 ~-3 ~3 slot.container 5 slime_ball 19
replaceitem block ~-2 ~-3 ~3 slot.container 9 golden_apple 1
replaceitem block ~-2 ~-3 ~3 slot.container 10 boat 1
replaceitem block ~-2 ~-3 ~3 slot.container 11 lantern 6
replaceitem block ~-2 ~-3 ~3 slot.container 12 mangrove_log 19
replaceitem block ~-2 ~-3 ~3 slot.container 13 mud_bricks 20
replaceitem block ~-2 ~-3 ~3 slot.container 14 cooked_salmon 13
loot insert ~-2 ~-3 ~3 loot "rsf/mangrove_swamp"
loot insert ~-2 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 mangrove_planks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 stripped_mangrove_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 stripped_mangrove_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 stripped_mangrove_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 stripped_mangrove_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 mud_bricks []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mud_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_mangrove_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_mangrove_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 mangrove_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~-2 ~1 ~-7 ~5 ~1 mangrove_roots []
fill ~7 ~-2 ~1 ~7 ~5 ~1 mangrove_roots []
fill ~-7 ~6 ~1 ~7 ~6 ~1 mud_brick_slab []
setblock ~0 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 11
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 18
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 10
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 11
replaceitem block ~3 ~1 ~4 slot.container 5 prismarine_shard 10
replaceitem block ~3 ~1 ~4 slot.container 9 mud_bricks 22
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_salmon 8
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 14 lead 6
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
