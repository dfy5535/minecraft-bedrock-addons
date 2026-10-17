# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1673/4224 | 主题内编号: b009/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·铁栏双室地下死牢 (mangrove_swamp_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mangrove_planks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mangrove_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mangrove_planks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 torch []
setblock ~3 ~-6 ~-4 torch []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~3 ~-4 ~4 slot.container 1 spider_eye 7
replaceitem block ~3 ~-4 ~4 slot.container 2 gunpowder 8
replaceitem block ~3 ~-4 ~4 slot.container 3 prismarine_shard 7
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 slime_ball 19
replaceitem block ~3 ~-4 ~4 slot.container 9 mud_bricks 18
replaceitem block ~3 ~-4 ~4 slot.container 10 cooked_salmon 11
replaceitem block ~3 ~-4 ~4 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-4 ~4 slot.container 12 gold_ingot 9
replaceitem block ~3 ~-4 ~4 slot.container 13 emerald 9
replaceitem block ~3 ~-4 ~4 slot.container 14 lead 2
loot insert ~3 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 mangrove_planks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mud_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mud_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mud_bricks []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 mud_brick_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 stripped_mangrove_log []
setblock ~-5 ~8 ~-6 torch []
setblock ~-5 ~7 ~6 stripped_mangrove_log []
setblock ~-5 ~8 ~6 torch []
setblock ~5 ~7 ~-6 stripped_mangrove_log []
setblock ~5 ~8 ~-6 torch []
setblock ~5 ~7 ~6 stripped_mangrove_log []
setblock ~5 ~8 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mud_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_mangrove_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_mangrove_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 mangrove_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-8 ~-2 ~-2 ~-8 ~6 ~-2 mangrove_roots []
fill ~8 ~-2 ~-2 ~8 ~6 ~-2 mangrove_roots []
fill ~-8 ~7 ~-2 ~8 ~7 ~-2 mud_brick_slab []
setblock ~0 ~8 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 5 prismarine_shard 10
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 4
replaceitem block ~4 ~1 ~5 slot.container 10 mangrove_log 17
replaceitem block ~4 ~1 ~5 slot.container 11 mud_bricks 18
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_salmon 11
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 9
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-4 ~0
