# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1765/4224 | 主题内编号: b101/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·L型驻军兵营军械所 (mangrove_swamp_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mangrove_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mangrove_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 slime []

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

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~8 ~6 mangrove_planks []
fill ~-5 ~1 ~0 ~5 ~7 ~6 packed_mud []
fill ~-4 ~1 ~-5 ~-1 ~7 ~5 air []
fill ~-1 ~1 ~1 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mud_bricks []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 mud_brick_wall []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 stripped_mangrove_log []
setblock ~-5 ~10 ~-6 torch []
setblock ~-5 ~9 ~6 stripped_mangrove_log []
setblock ~-5 ~10 ~6 torch []
setblock ~5 ~9 ~-6 stripped_mangrove_log []
setblock ~5 ~10 ~-6 torch []
setblock ~5 ~9 ~6 stripped_mangrove_log []
setblock ~5 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 packed_mud []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~-2 ~0 ~-8 ~3 ~0 mangrove_roots []
fill ~8 ~-2 ~0 ~8 ~3 ~0 mangrove_roots []
fill ~-8 ~4 ~0 ~8 ~4 ~0 mud_brick_slab []
setblock ~0 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 1 prismarine_shard 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 slime_ball 14
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 10 lead 4
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 12 boat 1
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 14 mangrove_log 22
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
