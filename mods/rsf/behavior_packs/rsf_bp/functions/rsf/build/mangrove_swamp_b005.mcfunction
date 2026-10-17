# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1669/4224 | 主题内编号: b005/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·下沉圣泉秘宝祭坛 (mangrove_swamp_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mangrove_planks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mangrove_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mud_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 slime_ball 19
replaceitem block ~3 ~-3 ~0 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~0 slot.container 3 arrow 23
replaceitem block ~3 ~-3 ~0 slot.container 4 rotten_flesh 10
replaceitem block ~3 ~-3 ~0 slot.container 5 spider_eye 7
replaceitem block ~3 ~-3 ~0 slot.container 9 lantern 7
replaceitem block ~3 ~-3 ~0 slot.container 10 mangrove_log 20
replaceitem block ~3 ~-3 ~0 slot.container 11 mud_bricks 21
replaceitem block ~3 ~-3 ~0 slot.container 12 cooked_salmon 14
replaceitem block ~3 ~-3 ~0 slot.container 13 iron_ingot 6
replaceitem block ~3 ~-3 ~0 slot.container 14 gold_ingot 5
loot insert ~3 ~-3 ~0 loot "rsf/mangrove_swamp"
loot insert ~3 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mangrove_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 mud_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mud_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~6 ~-5 ~-4 ~8 ~-5 stripped_mangrove_log []
setblock ~-4 ~9 ~-5 torch []
fill ~-4 ~6 ~5 ~-4 ~8 ~5 stripped_mangrove_log []
setblock ~-4 ~9 ~5 torch []
fill ~4 ~6 ~-5 ~4 ~8 ~-5 stripped_mangrove_log []
setblock ~4 ~9 ~-5 torch []
fill ~4 ~6 ~5 ~4 ~8 ~5 stripped_mangrove_log []
setblock ~4 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mud_brick_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~-2 ~-2 ~-7 ~7 ~-2 mangrove_roots []
fill ~7 ~-2 ~-2 ~7 ~7 ~-2 mangrove_roots []
fill ~-7 ~8 ~-2 ~7 ~8 ~-2 mud_brick_slab []
setblock ~0 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 11
replaceitem block ~3 ~1 ~4 slot.container 1 prismarine_shard 10
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 slime_ball 14
replaceitem block ~3 ~1 ~4 slot.container 4 bone 11
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 18
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 10 boat 1
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 9
replaceitem block ~3 ~1 ~4 slot.container 12 mangrove_log 22
replaceitem block ~3 ~1 ~4 slot.container 13 mud_bricks 16
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_salmon 9
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
