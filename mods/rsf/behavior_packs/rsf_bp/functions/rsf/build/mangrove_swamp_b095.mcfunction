# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1759/4224 | 主题内编号: b095/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双子灯笼守卫神龛 (mangrove_swamp_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mangrove_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mud_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 slime_ball 19
replaceitem block ~3 ~-3 ~0 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~0 slot.container 3 arrow 23
replaceitem block ~3 ~-3 ~0 slot.container 4 rotten_flesh 10
replaceitem block ~3 ~-3 ~0 slot.container 5 spider_eye 7
replaceitem block ~3 ~-3 ~0 slot.container 9 lantern 7
replaceitem block ~3 ~-3 ~0 slot.container 10 mangrove_log 20
replaceitem block ~3 ~-3 ~0 slot.container 11 mud_bricks 21
replaceitem block ~3 ~-3 ~0 slot.container 12 cooked_salmon 14
replaceitem block ~3 ~-3 ~0 slot.container 13 iron_ingot 6
replaceitem block ~3 ~-3 ~0 slot.container 14 gold_ingot 5
loot insert ~3 ~-3 ~0 loot "rsf/mangrove_swamp"
loot insert ~3 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~9 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~5 ~9 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mud_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mud_brick_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 mud_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 mud_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 mangrove_log []
setblock ~-7 ~6 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 mangrove_log []
setblock ~-7 ~6 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 mangrove_log []
setblock ~7 ~6 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 mangrove_log []
setblock ~7 ~6 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~-2 ~-1 ~-8 ~7 ~-1 mangrove_roots []
fill ~8 ~-2 ~-1 ~8 ~7 ~-1 mangrove_roots []
fill ~-8 ~8 ~-1 ~8 ~8 ~-1 mud_brick_slab []
setblock ~0 ~9 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 slime_ball 14
replaceitem block ~4 ~1 ~3 slot.container 2 bone 11
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 18
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~3 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~3 slot.container 9 golden_apple 3
replaceitem block ~4 ~1 ~3 slot.container 10 boat 1
replaceitem block ~4 ~1 ~3 slot.container 11 lantern 8
replaceitem block ~4 ~1 ~3 slot.container 12 mangrove_log 21
replaceitem block ~4 ~1 ~3 slot.container 13 mud_bricks 22
replaceitem block ~4 ~1 ~3 slot.container 14 cooked_salmon 8
loot insert ~4 ~1 ~3 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
