# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1668/4224 | 主题内编号: b004/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双子火盆高台神坛 (mangrove_swamp_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mud_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mud_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 mangrove_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 mud_bricks []
fill ~2 ~1 ~-5 ~6 ~9 ~5 mud_bricks []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mangrove_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 mangrove_log []
setblock ~-6 ~11 ~-5 lantern []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 mangrove_log []
setblock ~-6 ~11 ~5 lantern []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 mangrove_log []
setblock ~6 ~11 ~-5 lantern []
fill ~6 ~8 ~5 ~6 ~10 ~5 mangrove_log []
setblock ~6 ~11 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mangrove_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 mangrove_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 mangrove_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 mud_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~-2 ~2 ~-9 ~6 ~2 mangrove_roots []
fill ~9 ~-2 ~2 ~9 ~6 ~2 mangrove_roots []
fill ~-9 ~7 ~2 ~9 ~7 ~2 mud_brick_slab []
setblock ~0 ~8 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 2 prismarine_shard 10
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 11 lead 6
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 13 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 4
loot insert ~-5 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 prismarine_shard 5
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 slime_ball 17
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 9 gold_ingot 4
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 4
replaceitem block ~5 ~1 ~4 slot.container 11 lead 4
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~5 ~1 ~4 slot.container 13 boat 1
replaceitem block ~5 ~1 ~4 slot.container 14 lantern 9
loot insert ~5 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
