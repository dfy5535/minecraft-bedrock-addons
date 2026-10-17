# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1783/4224 | 主题内编号: b119/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·半地下恒温洞穴苗圃 (mangrove_swamp_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~10 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mud_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mangrove_planks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 mud_bricks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 bone 16
replaceitem block ~-2 ~-4 ~4 slot.container 1 arrow 23
replaceitem block ~-2 ~-4 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-2 ~-4 ~4 slot.container 3 spider_eye 7
replaceitem block ~-2 ~-4 ~4 slot.container 4 gunpowder 8
replaceitem block ~-2 ~-4 ~4 slot.container 5 prismarine_shard 7
replaceitem block ~-2 ~-4 ~4 slot.container 9 emerald 9
replaceitem block ~-2 ~-4 ~4 slot.container 10 lead 2
replaceitem block ~-2 ~-4 ~4 slot.container 11 golden_apple 2
replaceitem block ~-2 ~-4 ~4 slot.container 12 boat 1
replaceitem block ~-2 ~-4 ~4 slot.container 13 lantern 7
replaceitem block ~-2 ~-4 ~4 slot.container 14 mangrove_log 20
loot insert ~-2 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~-2 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 mossy_stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 mud_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mud_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-6 ~4 ~6 ~6 mud_bricks []
fill ~-3 ~7 ~-5 ~3 ~8 ~5 glass []
fill ~-2 ~7 ~-4 ~2 ~7 ~4 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 mud_brick_wall []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~-2 ~0 ~-7 ~6 ~0 mangrove_roots []
fill ~7 ~-2 ~0 ~7 ~6 ~0 mangrove_roots []
fill ~-7 ~7 ~0 ~7 ~7 ~0 mud_brick_slab []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 slime_ball 14
replaceitem block ~3 ~1 ~5 slot.container 2 bone 11
replaceitem block ~3 ~1 ~5 slot.container 3 arrow 18
replaceitem block ~3 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~1 ~5 slot.container 5 spider_eye 10
replaceitem block ~3 ~1 ~5 slot.container 9 lantern 9
replaceitem block ~3 ~1 ~5 slot.container 10 mangrove_log 22
replaceitem block ~3 ~1 ~5 slot.container 11 mud_bricks 16
replaceitem block ~3 ~1 ~5 slot.container 12 cooked_salmon 9
replaceitem block ~3 ~1 ~5 slot.container 13 iron_ingot 8
replaceitem block ~3 ~1 ~5 slot.container 14 gold_ingot 7
loot insert ~3 ~1 ~5 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
