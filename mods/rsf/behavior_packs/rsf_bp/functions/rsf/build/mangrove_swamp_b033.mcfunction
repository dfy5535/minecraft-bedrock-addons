# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1697/4224 | 主题内编号: b033/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·太阳金顶高耸方尖碑 (mangrove_swamp_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mangrove_planks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mangrove_planks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 packed_mud []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mud_bricks []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 10
replaceitem block ~0 ~-3 ~-2 slot.container 1 spider_eye 7
replaceitem block ~0 ~-3 ~-2 slot.container 2 gunpowder 8
replaceitem block ~0 ~-3 ~-2 slot.container 3 prismarine_shard 7
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 slime_ball 19
replaceitem block ~0 ~-3 ~-2 slot.container 9 golden_apple 7
replaceitem block ~0 ~-3 ~-2 slot.container 10 boat 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 lantern 5
replaceitem block ~0 ~-3 ~-2 slot.container 12 mangrove_log 18
replaceitem block ~0 ~-3 ~-2 slot.container 13 mud_bricks 19
replaceitem block ~0 ~-3 ~-2 slot.container 14 cooked_salmon 12
loot insert ~0 ~-3 ~-2 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 mangrove_planks []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 mud_bricks []
fill ~-1 ~5 ~-2 ~1 ~12 ~2 packed_mud []
fill ~-1 ~1 ~-2 ~1 ~11 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 mangrove_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 mud_bricks []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 mangrove_planks []
fill ~0 ~18 ~0 ~0 ~20 ~0 slime []
setblock ~0 ~21 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~5 ~-6 stripped_mangrove_log []
setblock ~-5 ~6 ~-6 torch []
fill ~-5 ~0 ~6 ~-5 ~5 ~6 stripped_mangrove_log []
setblock ~-5 ~6 ~6 torch []
fill ~5 ~0 ~-6 ~5 ~5 ~-6 stripped_mangrove_log []
setblock ~5 ~6 ~-6 torch []
fill ~5 ~0 ~6 ~5 ~5 ~6 stripped_mangrove_log []
setblock ~5 ~6 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-6 ~-2 ~1 ~-6 ~5 ~1 mangrove_roots []
fill ~6 ~-2 ~1 ~6 ~5 ~1 mangrove_roots []
fill ~-6 ~6 ~1 ~6 ~6 ~1 mud_brick_slab []
setblock ~0 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 arrow 18
replaceitem block ~2 ~1 ~3 slot.container 2 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 3 spider_eye 10
replaceitem block ~2 ~1 ~3 slot.container 4 gunpowder 11
replaceitem block ~2 ~1 ~3 slot.container 5 prismarine_shard 10
replaceitem block ~2 ~1 ~3 slot.container 9 mud_bricks 19
replaceitem block ~2 ~1 ~3 slot.container 10 cooked_salmon 12
replaceitem block ~2 ~1 ~3 slot.container 11 iron_ingot 11
replaceitem block ~2 ~1 ~3 slot.container 12 gold_ingot 10
replaceitem block ~2 ~1 ~3 slot.container 13 emerald 3
replaceitem block ~2 ~1 ~3 slot.container 14 lead 3
loot insert ~2 ~1 ~3 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-3 ~0
