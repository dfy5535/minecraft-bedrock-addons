# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1679/4224 | 主题内编号: b015/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·竖井阶梯深渊地牢 (mangrove_swamp_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 6格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 lantern []
setblock ~2 ~-7 ~-3 lantern []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 bone 16
replaceitem block ~2 ~-5 ~3 slot.container 1 arrow 23
replaceitem block ~2 ~-5 ~3 slot.container 2 rotten_flesh 10
replaceitem block ~2 ~-5 ~3 slot.container 3 spider_eye 7
replaceitem block ~2 ~-5 ~3 slot.container 4 gunpowder 8
replaceitem block ~2 ~-5 ~3 slot.container 5 prismarine_shard 7
replaceitem block ~2 ~-5 ~3 slot.container 9 lantern 5
replaceitem block ~2 ~-5 ~3 slot.container 10 mangrove_log 18
replaceitem block ~2 ~-5 ~3 slot.container 11 mud_bricks 19
replaceitem block ~2 ~-5 ~3 slot.container 12 cooked_salmon 12
replaceitem block ~2 ~-5 ~3 slot.container 13 iron_ingot 11
replaceitem block ~2 ~-5 ~3 slot.container 14 gold_ingot 10
loot insert ~2 ~-5 ~3 loot "rsf/mangrove_swamp"
loot insert ~2 ~-5 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mossy_stone_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 mud_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 mud_bricks []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mud_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_stone_bricks []
fill ~0 ~14 ~0 ~0 ~16 ~0 gold_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 mangrove_log []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 mangrove_log []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 mangrove_log []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 mangrove_log []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~-2 ~-2 ~-7 ~7 ~-2 mangrove_roots []
fill ~7 ~-2 ~-2 ~7 ~7 ~-2 mangrove_roots []
fill ~-7 ~8 ~-2 ~7 ~8 ~-2 mud_brick_slab []
setblock ~0 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 slime_ball 14
replaceitem block ~3 ~1 ~4 slot.container 2 bone 11
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 18
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 5 spider_eye 10
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 10 boat 1
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 12 mangrove_log 18
replaceitem block ~3 ~1 ~4 slot.container 13 mud_bricks 19
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_salmon 12
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-5 ~0
