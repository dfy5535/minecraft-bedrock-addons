# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1712/4224 | 主题内编号: b048/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·阶梯王座巅峰试炼台 (mangrove_swamp_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 mud_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 mud_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mud_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 packed_mud []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mud_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~4 slot.container 0 gunpowder 8
replaceitem block ~-3 ~-3 ~4 slot.container 1 prismarine_shard 7
replaceitem block ~-3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~4 slot.container 3 slime_ball 19
replaceitem block ~-3 ~-3 ~4 slot.container 4 bone 16
replaceitem block ~-3 ~-3 ~4 slot.container 5 arrow 23
replaceitem block ~-3 ~-3 ~4 slot.container 9 iron_ingot 8
replaceitem block ~-3 ~-3 ~4 slot.container 10 gold_ingot 7
replaceitem block ~-3 ~-3 ~4 slot.container 11 emerald 7
replaceitem block ~-3 ~-3 ~4 slot.container 12 lead 7
replaceitem block ~-3 ~-3 ~4 slot.container 13 golden_apple 7
replaceitem block ~-3 ~-3 ~4 slot.container 14 boat 1
loot insert ~-3 ~-3 ~4 loot "rsf/mangrove_swamp"
loot insert ~-3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mud_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 mangrove_planks []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 mangrove_planks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 mud_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 mangrove_log []
setblock ~-6 ~11 ~-7 lantern []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 mangrove_log []
setblock ~-6 ~11 ~7 lantern []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 mangrove_log []
setblock ~6 ~11 ~-7 lantern []
fill ~6 ~8 ~7 ~6 ~10 ~7 mangrove_log []
setblock ~6 ~11 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 mangrove_log []
setblock ~0 ~4 ~-9 slime []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 mangrove_log []
setblock ~0 ~4 ~9 slime []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 mangrove_log []
setblock ~-8 ~4 ~0 slime []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 mangrove_log []
setblock ~8 ~4 ~0 slime []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x10x4) ---
fill ~-9 ~-2 ~3 ~-9 ~5 ~3 mangrove_roots []
fill ~9 ~-2 ~3 ~9 ~5 ~3 mangrove_roots []
fill ~-9 ~6 ~3 ~9 ~6 ~3 mud_brick_slab []
setblock ~0 ~7 ~3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 slime_ball 14
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~6 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 9 lead 6
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~6 slot.container 11 boat 1
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 4
replaceitem block ~-5 ~1 ~6 slot.container 13 mangrove_log 17
replaceitem block ~-5 ~1 ~6 slot.container 14 mud_bricks 18
loot insert ~-5 ~1 ~6 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 13
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 6
replaceitem block ~5 ~1 ~6 slot.container 4 prismarine_shard 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 lead 4
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 11 boat 1
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 9
replaceitem block ~5 ~1 ~6 slot.container 13 mangrove_log 22
replaceitem block ~5 ~1 ~6 slot.container 14 mud_bricks 16
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon frog ~0 ~-2 ~0
