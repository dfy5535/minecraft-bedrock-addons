# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1714/4224 | 主题内编号: b050/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·L型探险家补给驿站 (mangrove_swamp_outpost_l_waystation)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 packed_mud [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 packed_mud [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 mud_bricks []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 packed_mud []
fill ~-5 ~1 ~0 ~5 ~6 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 mangrove_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mud_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mangrove_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~-2 ~-3 ~-8 ~7 ~-3 mangrove_roots []
fill ~8 ~-2 ~-3 ~8 ~7 ~-3 mangrove_roots []
fill ~-8 ~8 ~-3 ~8 ~8 ~-3 mud_brick_slab []
setblock ~0 ~9 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 cooked_salmon 14
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 5
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 5
replaceitem block ~-4 ~1 ~5 slot.container 13 lead 5
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 13
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 6
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 slime_ball 17
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_salmon 12
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 13 lead 3
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
