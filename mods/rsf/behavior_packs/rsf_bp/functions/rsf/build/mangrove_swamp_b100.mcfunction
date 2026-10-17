# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1764/4224 | 主题内编号: b100/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·半地下暗堡火力点 (mangrove_swamp_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mud_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mud_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 mud_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 slime_ball 19
replaceitem block ~2 ~-3 ~3 slot.container 1 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 2 arrow 23
replaceitem block ~2 ~-3 ~3 slot.container 3 rotten_flesh 10
replaceitem block ~2 ~-3 ~3 slot.container 4 spider_eye 7
replaceitem block ~2 ~-3 ~3 slot.container 5 gunpowder 8
replaceitem block ~2 ~-3 ~3 slot.container 9 boat 1
replaceitem block ~2 ~-3 ~3 slot.container 10 lantern 4
replaceitem block ~2 ~-3 ~3 slot.container 11 mangrove_log 17
replaceitem block ~2 ~-3 ~3 slot.container 12 mud_bricks 18
replaceitem block ~2 ~-3 ~3 slot.container 13 cooked_salmon 11
replaceitem block ~2 ~-3 ~3 slot.container 14 iron_ingot 10
loot insert ~2 ~-3 ~3 loot "rsf/mangrove_swamp"
loot insert ~2 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mud_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 mangrove_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mangrove_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~-4 ~9 ~5 mud_brick_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-5 ~4 ~9 ~5 mud_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-5 ~3 ~9 ~5 mud_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 mangrove_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mangrove_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~-2 ~-2 ~-7 ~7 ~-2 mangrove_roots []
fill ~7 ~-2 ~-2 ~7 ~7 ~-2 mangrove_roots []
fill ~-7 ~8 ~-2 ~7 ~8 ~-2 mud_brick_slab []
setblock ~0 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 2 prismarine_shard 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_salmon 8
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 6
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 13 lead 6
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_shard 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 slime_ball 17
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_salmon 13
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 4
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 4
replaceitem block ~3 ~1 ~4 slot.container 13 lead 4
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
