# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1720/4224 | 主题内编号: b056/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·隐士半地下避难山居 (mangrove_swamp_outpost_hermit_retreat)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mud_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mud_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mangrove_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 spider_eye 7
replaceitem block ~2 ~-2 ~3 slot.container 1 gunpowder 8
replaceitem block ~2 ~-2 ~3 slot.container 2 prismarine_shard 7
replaceitem block ~2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 4 slime_ball 19
replaceitem block ~2 ~-2 ~3 slot.container 5 bone 16
replaceitem block ~2 ~-2 ~3 slot.container 9 gold_ingot 5
replaceitem block ~2 ~-2 ~3 slot.container 10 emerald 5
replaceitem block ~2 ~-2 ~3 slot.container 11 lead 5
replaceitem block ~2 ~-2 ~3 slot.container 12 golden_apple 5
replaceitem block ~2 ~-2 ~3 slot.container 13 boat 1
replaceitem block ~2 ~-2 ~3 slot.container 14 lantern 10
loot insert ~2 ~-2 ~3 loot "rsf/mangrove_swamp"
loot insert ~2 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mud_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 mangrove_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mangrove_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-6 ~4 ~6 ~6 mud_bricks []
fill ~-3 ~7 ~-5 ~3 ~8 ~5 glass []
fill ~-2 ~7 ~-4 ~2 ~7 ~4 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mossy_stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~-2 ~-1 ~-7 ~3 ~-1 mangrove_roots []
fill ~7 ~-2 ~-1 ~7 ~3 ~-1 mangrove_roots []
fill ~-7 ~4 ~-1 ~7 ~4 ~-1 mud_brick_slab []
setblock ~0 ~5 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~4 crafting_table []
setblock ~-2 ~1 ~4 furnace []
setblock ~3 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 slime_ball 14
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 4 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 9 mangrove_log 21
replaceitem block ~-3 ~1 ~4 slot.container 10 mud_bricks 22
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_salmon 8
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 13 gold_ingot 6
replaceitem block ~-3 ~1 ~4 slot.container 14 emerald 6
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 13
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 6
replaceitem block ~3 ~1 ~4 slot.container 4 prismarine_shard 5
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 mangrove_log 19
replaceitem block ~3 ~1 ~4 slot.container 10 mud_bricks 20
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_salmon 13
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 4
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 4
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
