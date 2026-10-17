# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1677/4224 | 主题内编号: b013/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·地底熔炉苦工地牢 (mangrove_swamp_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mangrove_planks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mangrove_planks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 mangrove_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mossy_stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 mangrove_planks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 bone 16
replaceitem block ~3 ~-4 ~5 slot.container 1 arrow 23
replaceitem block ~3 ~-4 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~3 ~-4 ~5 slot.container 3 spider_eye 7
replaceitem block ~3 ~-4 ~5 slot.container 4 gunpowder 8
replaceitem block ~3 ~-4 ~5 slot.container 5 prismarine_shard 7
replaceitem block ~3 ~-4 ~5 slot.container 9 golden_apple 4
replaceitem block ~3 ~-4 ~5 slot.container 10 boat 1
replaceitem block ~3 ~-4 ~5 slot.container 11 lantern 9
replaceitem block ~3 ~-4 ~5 slot.container 12 mangrove_log 22
replaceitem block ~3 ~-4 ~5 slot.container 13 mud_bricks 16
replaceitem block ~3 ~-4 ~5 slot.container 14 cooked_salmon 9
loot insert ~3 ~-4 ~5 loot "rsf/mangrove_swamp"
loot insert ~3 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~7 ~7 mangrove_planks []
fill ~-4 ~1 ~-6 ~4 ~6 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~7 ~-7 stripped_mangrove_log []
fill ~-5 ~1 ~7 ~-5 ~7 ~7 stripped_mangrove_log []
fill ~5 ~1 ~-7 ~5 ~7 ~-7 stripped_mangrove_log []
fill ~5 ~1 ~7 ~5 ~7 ~7 stripped_mangrove_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 mud_brick_wall []
setblock ~5 ~2 ~0 mud_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 mud_bricks []
fill ~-5 ~8 ~-7 ~5 ~8 ~7 mud_brick_wall []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 air []
setblock ~-5 ~8 ~-7 stripped_mangrove_log []
setblock ~-5 ~9 ~-7 torch []
setblock ~-5 ~8 ~7 stripped_mangrove_log []
setblock ~-5 ~9 ~7 torch []
setblock ~5 ~8 ~-7 stripped_mangrove_log []
setblock ~5 ~9 ~-7 torch []
setblock ~5 ~8 ~7 stripped_mangrove_log []
setblock ~5 ~9 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 packed_mud []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~-2 ~3 ~-8 ~5 ~3 mangrove_roots []
fill ~8 ~-2 ~3 ~8 ~5 ~3 mangrove_roots []
fill ~-8 ~6 ~3 ~8 ~6 ~3 mud_brick_slab []
setblock ~0 ~7 ~3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~6 slot.container 1 prismarine_shard 10
replaceitem block ~4 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~6 slot.container 3 slime_ball 14
replaceitem block ~4 ~1 ~6 slot.container 4 bone 11
replaceitem block ~4 ~1 ~6 slot.container 5 arrow 18
replaceitem block ~4 ~1 ~6 slot.container 9 mud_bricks 20
replaceitem block ~4 ~1 ~6 slot.container 10 cooked_salmon 13
replaceitem block ~4 ~1 ~6 slot.container 11 iron_ingot 12
replaceitem block ~4 ~1 ~6 slot.container 12 gold_ingot 4
replaceitem block ~4 ~1 ~6 slot.container 13 emerald 4
replaceitem block ~4 ~1 ~6 slot.container 14 lead 4
loot insert ~4 ~1 ~6 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
