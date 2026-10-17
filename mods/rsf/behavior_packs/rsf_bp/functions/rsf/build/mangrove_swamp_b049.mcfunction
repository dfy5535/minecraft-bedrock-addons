# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1713/4224 | 主题内编号: b049/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双坡顶林间猎人木屋 (mangrove_swamp_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace log2
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 mangrove_planks [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 mangrove_planks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mangrove_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mangrove_planks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 torch []
setblock ~3 ~-6 ~-4 torch []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~3 ~-4 ~4 slot.container 1 spider_eye 7
replaceitem block ~3 ~-4 ~4 slot.container 2 gunpowder 8
replaceitem block ~3 ~-4 ~4 slot.container 3 prismarine_shard 7
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 slime_ball 19
replaceitem block ~3 ~-4 ~4 slot.container 9 mud_bricks 18
replaceitem block ~3 ~-4 ~4 slot.container 10 cooked_salmon 11
replaceitem block ~3 ~-4 ~4 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-4 ~4 slot.container 12 gold_ingot 9
replaceitem block ~3 ~-4 ~4 slot.container 13 emerald 9
replaceitem block ~3 ~-4 ~4 slot.container 14 lead 2
loot insert ~3 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~7 ~6 mangrove_planks []
fill ~-3 ~1 ~-5 ~3 ~6 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~7 ~-6 stripped_mangrove_log []
fill ~-4 ~1 ~6 ~-4 ~7 ~6 stripped_mangrove_log []
fill ~4 ~1 ~-6 ~4 ~7 ~-6 stripped_mangrove_log []
fill ~4 ~1 ~6 ~4 ~7 ~6 stripped_mangrove_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 mud_brick_wall []
setblock ~4 ~2 ~0 mud_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-7 ~-5 ~8 ~7 mangrove_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-7 ~5 ~8 ~7 mangrove_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~-4 ~9 ~6 mangrove_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-6 ~4 ~9 ~6 mangrove_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-6 ~3 ~9 ~6 mangrove_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mud_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 mangrove_planks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-7 ~-2 ~2 ~-7 ~6 ~2 mangrove_roots []
fill ~7 ~-2 ~2 ~7 ~6 ~2 mangrove_roots []
fill ~-7 ~7 ~2 ~7 ~7 ~2 mud_brick_slab []
setblock ~0 ~8 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 11
replaceitem block ~3 ~1 ~5 slot.container 1 arrow 18
replaceitem block ~3 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~5 slot.container 3 spider_eye 10
replaceitem block ~3 ~1 ~5 slot.container 4 gunpowder 11
replaceitem block ~3 ~1 ~5 slot.container 5 prismarine_shard 10
replaceitem block ~3 ~1 ~5 slot.container 9 lantern 9
replaceitem block ~3 ~1 ~5 slot.container 10 mangrove_log 22
replaceitem block ~3 ~1 ~5 slot.container 11 mud_bricks 16
replaceitem block ~3 ~1 ~5 slot.container 12 cooked_salmon 9
replaceitem block ~3 ~1 ~5 slot.container 13 iron_ingot 8
replaceitem block ~3 ~1 ~5 slot.container 14 gold_ingot 7
loot insert ~3 ~1 ~5 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
