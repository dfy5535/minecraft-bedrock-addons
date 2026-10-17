# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1739/4224 | 主题内编号: b075/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·远古巨石环廊法阵 (mangrove_swamp_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mud_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mud_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mud_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 gunpowder 8
replaceitem block ~0 ~-3 ~-5 slot.container 1 prismarine_shard 7
replaceitem block ~0 ~-3 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 3 slime_ball 19
replaceitem block ~0 ~-3 ~-5 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-5 slot.container 5 arrow 23
replaceitem block ~0 ~-3 ~-5 slot.container 9 iron_ingot 12
replaceitem block ~0 ~-3 ~-5 slot.container 10 gold_ingot 4
replaceitem block ~0 ~-3 ~-5 slot.container 11 emerald 4
replaceitem block ~0 ~-3 ~-5 slot.container 12 lead 4
replaceitem block ~0 ~-3 ~-5 slot.container 13 golden_apple 4
replaceitem block ~0 ~-3 ~-5 slot.container 14 boat 1
loot insert ~0 ~-3 ~-5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 mud_bricks []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 mangrove_log []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 mangrove_log []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 mangrove_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 mangrove_log []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 mangrove_log []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 mangrove_log []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 mangrove_log []
fill ~0 ~1 ~7 ~0 ~7 ~7 mangrove_log []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 mangrove_log []
fill ~2 ~1 ~7 ~2 ~7 ~7 mangrove_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 mangrove_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 mangrove_log []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 mangrove_log []
fill ~6 ~1 ~7 ~6 ~7 ~7 mangrove_log []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 mangrove_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 mangrove_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 mangrove_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 mangrove_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 mangrove_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 mangrove_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 mangrove_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 mangrove_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 mangrove_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 mangrove_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 mangrove_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 mangrove_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 mangrove_log []
setblock ~-6 ~11 ~-7 lantern []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 mangrove_log []
setblock ~-6 ~11 ~7 lantern []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 mangrove_log []
setblock ~6 ~11 ~-7 lantern []
fill ~6 ~8 ~7 ~6 ~10 ~7 mangrove_log []
setblock ~6 ~11 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 packed_mud []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x10x6) ---
fill ~-9 ~-2 ~2 ~-9 ~7 ~2 mangrove_roots []
fill ~9 ~-2 ~2 ~9 ~7 ~2 mangrove_roots []
fill ~-9 ~8 ~2 ~9 ~8 ~2 mud_brick_slab []
setblock ~0 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 3 prismarine_shard 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 slime_ball 14
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 10 boat 1
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 9
replaceitem block ~5 ~1 ~6 slot.container 12 mangrove_log 22
replaceitem block ~5 ~1 ~6 slot.container 13 mud_bricks 16
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_salmon 9
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-3 ~0
