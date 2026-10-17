# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1735/4224 | 主题内编号: b071/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·残破双子哨所遗迹 (mangrove_swamp_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mud_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mangrove_planks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 mud_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~9 ~5 mossy_stone_bricks []
fill ~2 ~1 ~-5 ~5 ~9 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~4 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mud_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 mud_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 packed_mud []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~-2 ~-1 ~-8 ~3 ~-1 mangrove_roots []
fill ~8 ~-2 ~-1 ~8 ~3 ~-1 mangrove_roots []
fill ~-8 ~4 ~-1 ~8 ~4 ~-1 mud_brick_slab []
setblock ~0 ~5 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 1 slime_ball 14
replaceitem block ~4 ~1 ~4 slot.container 2 bone 11
replaceitem block ~4 ~1 ~4 slot.container 3 arrow 18
replaceitem block ~4 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~4 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~4 slot.container 9 emerald 9
replaceitem block ~4 ~1 ~4 slot.container 10 lead 2
replaceitem block ~4 ~1 ~4 slot.container 11 golden_apple 2
replaceitem block ~4 ~1 ~4 slot.container 12 boat 1
replaceitem block ~4 ~1 ~4 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~4 slot.container 14 mangrove_log 20
loot insert ~4 ~1 ~4 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
