# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1779/4224 | 主题内编号: b115/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·阶梯立体生态种植台 (mangrove_swamp_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mud_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 packed_mud []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 slime_ball 19
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 arrow 23
replaceitem block ~0 ~-4 ~5 slot.container 3 rotten_flesh 10
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 7
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 8
replaceitem block ~0 ~-4 ~5 slot.container 9 gold_ingot 4
replaceitem block ~0 ~-4 ~5 slot.container 10 emerald 4
replaceitem block ~0 ~-4 ~5 slot.container 11 lead 4
replaceitem block ~0 ~-4 ~5 slot.container 12 golden_apple 4
replaceitem block ~0 ~-4 ~5 slot.container 13 boat 1
replaceitem block ~0 ~-4 ~5 slot.container 14 lantern 9
loot insert ~0 ~-4 ~5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 slime_ball 17
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 arrow 21
replaceitem block ~0 ~-4 ~-5 slot.container 3 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 4 spider_eye 13
replaceitem block ~0 ~-4 ~-5 slot.container 5 gunpowder 6
replaceitem block ~0 ~-4 ~-5 slot.container 9 gold_ingot 10
replaceitem block ~0 ~-4 ~-5 slot.container 10 emerald 3
replaceitem block ~0 ~-4 ~-5 slot.container 11 lead 3
replaceitem block ~0 ~-4 ~-5 slot.container 12 golden_apple 3
replaceitem block ~0 ~-4 ~-5 slot.container 13 boat 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 lantern 8
loot insert ~0 ~-4 ~-5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 mossy_stone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 mud_bricks []
fill ~-3 ~5 ~-4 ~3 ~7 ~4 mud_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 mangrove_log []
setblock ~-5 ~10 ~-6 lantern []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 mangrove_log []
setblock ~-5 ~10 ~6 lantern []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 mangrove_log []
setblock ~5 ~10 ~-6 lantern []
fill ~5 ~7 ~6 ~5 ~9 ~6 mangrove_log []
setblock ~5 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 mud_brick_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~-2 ~2 ~-8 ~7 ~2 mangrove_roots []
fill ~8 ~-2 ~2 ~8 ~7 ~2 mangrove_roots []
fill ~-8 ~8 ~2 ~8 ~8 ~2 mud_brick_slab []
setblock ~0 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_shard 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 14
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 10 boat 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 12 mangrove_log 20
replaceitem block ~4 ~1 ~5 slot.container 13 mud_bricks 21
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_salmon 14
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
