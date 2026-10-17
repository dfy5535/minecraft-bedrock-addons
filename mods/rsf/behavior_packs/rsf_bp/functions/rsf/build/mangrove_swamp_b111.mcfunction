# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1775/4224 | 主题内编号: b111/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·地下禁忌书库与炼药室 (mangrove_swamp_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mud_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 lantern []
setblock ~3 ~-6 ~0 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 gunpowder 8
replaceitem block ~0 ~-4 ~4 slot.container 1 prismarine_shard 7
replaceitem block ~0 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 3 slime_ball 19
replaceitem block ~0 ~-4 ~4 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~4 slot.container 5 arrow 23
replaceitem block ~0 ~-4 ~4 slot.container 9 golden_apple 4
replaceitem block ~0 ~-4 ~4 slot.container 10 boat 1
replaceitem block ~0 ~-4 ~4 slot.container 11 lantern 9
replaceitem block ~0 ~-4 ~4 slot.container 12 mangrove_log 22
replaceitem block ~0 ~-4 ~4 slot.container 13 mud_bricks 16
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_salmon 9
loot insert ~0 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 gunpowder 6
replaceitem block ~0 ~-4 ~-4 slot.container 1 prismarine_shard 5
replaceitem block ~0 ~-4 ~-4 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 3 slime_ball 17
replaceitem block ~0 ~-4 ~-4 slot.container 4 bone 14
replaceitem block ~0 ~-4 ~-4 slot.container 5 arrow 21
replaceitem block ~0 ~-4 ~-4 slot.container 9 golden_apple 3
replaceitem block ~0 ~-4 ~-4 slot.container 10 boat 1
replaceitem block ~0 ~-4 ~-4 slot.container 11 lantern 8
replaceitem block ~0 ~-4 ~-4 slot.container 12 mangrove_log 21
replaceitem block ~0 ~-4 ~-4 slot.container 13 mud_bricks 22
replaceitem block ~0 ~-4 ~-4 slot.container 14 cooked_salmon 8
loot insert ~0 ~-4 ~-4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mud_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mud_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mud_bricks []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 mud_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 mud_brick_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~-2 ~-2 ~-8 ~3 ~-2 mangrove_roots []
fill ~8 ~-2 ~-2 ~8 ~3 ~-2 mangrove_roots []
fill ~-8 ~4 ~-2 ~8 ~4 ~-2 mud_brick_slab []
setblock ~0 ~5 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 slime_ball 14
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 7
replaceitem block ~4 ~1 ~5 slot.container 10 lead 7
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 12 boat 1
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 5
replaceitem block ~4 ~1 ~5 slot.container 14 mangrove_log 18
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-4 ~0
