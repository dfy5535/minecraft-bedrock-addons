# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1689/4224 | 主题内编号: b025/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·雉堞女墙四方哨塔 (mangrove_swamp_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mangrove_planks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mangrove_planks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mud_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 mangrove_planks []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 stripped_mangrove_log []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 stripped_mangrove_log []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 stripped_mangrove_log []
fill ~3 ~1 ~4 ~3 ~11 ~4 stripped_mangrove_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 mud_brick_wall []
setblock ~3 ~2 ~0 mud_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~11 ~-4 ~3 ~11 ~4 mud_bricks []
fill ~-3 ~12 ~-4 ~3 ~12 ~4 mud_brick_wall []
fill ~-2 ~12 ~-3 ~2 ~12 ~3 air []
setblock ~-3 ~12 ~-4 stripped_mangrove_log []
setblock ~-3 ~13 ~-4 torch []
setblock ~-3 ~12 ~4 stripped_mangrove_log []
setblock ~-3 ~13 ~4 torch []
setblock ~3 ~12 ~-4 stripped_mangrove_log []
setblock ~3 ~13 ~-4 torch []
setblock ~3 ~12 ~4 stripped_mangrove_log []
setblock ~3 ~13 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 mud_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 stripped_mangrove_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 stripped_mangrove_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 mangrove_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~-6 ~-2 ~1 ~-6 ~7 ~1 mangrove_roots []
fill ~6 ~-2 ~1 ~6 ~7 ~1 mangrove_roots []
fill ~-6 ~8 ~1 ~6 ~8 ~1 mud_brick_slab []
setblock ~0 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 arrow 18
replaceitem block ~2 ~1 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 3 spider_eye 10
replaceitem block ~2 ~1 ~3 slot.container 4 gunpowder 11
replaceitem block ~2 ~1 ~3 slot.container 5 prismarine_shard 10
replaceitem block ~2 ~1 ~3 slot.container 9 golden_apple 3
replaceitem block ~2 ~1 ~3 slot.container 10 boat 1
replaceitem block ~2 ~1 ~3 slot.container 11 lantern 8
replaceitem block ~2 ~1 ~3 slot.container 12 mangrove_log 21
replaceitem block ~2 ~1 ~3 slot.container 13 mud_bricks 22
replaceitem block ~2 ~1 ~3 slot.container 14 cooked_salmon 8
loot insert ~2 ~1 ~3 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
