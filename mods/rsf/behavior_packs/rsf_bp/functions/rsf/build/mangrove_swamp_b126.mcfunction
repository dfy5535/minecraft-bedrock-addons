# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1790/4224 | 主题内编号: b126/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双子主塔天桥宫殿与暗牢 (mangrove_swamp_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 packed_mud [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 packed_mud [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 mangrove_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mangrove_planks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 packed_mud []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 campfire []
setblock ~4 ~-5 ~-4 campfire []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 slime_ball 19
replaceitem block ~4 ~-3 ~4 slot.container 1 bone 16
replaceitem block ~4 ~-3 ~4 slot.container 2 arrow 23
replaceitem block ~4 ~-3 ~4 slot.container 3 rotten_flesh 10
replaceitem block ~4 ~-3 ~4 slot.container 4 spider_eye 7
replaceitem block ~4 ~-3 ~4 slot.container 5 gunpowder 8
replaceitem block ~4 ~-3 ~4 slot.container 9 cooked_salmon 8
replaceitem block ~4 ~-3 ~4 slot.container 10 iron_ingot 7
replaceitem block ~4 ~-3 ~4 slot.container 11 gold_ingot 6
replaceitem block ~4 ~-3 ~4 slot.container 12 emerald 6
replaceitem block ~4 ~-3 ~4 slot.container 13 lead 6
replaceitem block ~4 ~-3 ~4 slot.container 14 golden_apple 6
loot insert ~4 ~-3 ~4 loot "rsf/mangrove_swamp"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~11 ~6 packed_mud []
fill ~2 ~1 ~-6 ~6 ~11 ~6 packed_mud []
fill ~-5 ~1 ~-5 ~-3 ~10 ~5 air []
fill ~3 ~1 ~-5 ~5 ~10 ~5 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 mud_bricks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mud_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 packed_mud []
fill ~0 ~16 ~0 ~0 ~18 ~0 sea_lantern []
setblock ~0 ~19 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 mud_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~-9 ~-2 ~1 ~-9 ~3 ~1 mangrove_roots []
fill ~9 ~-2 ~1 ~9 ~3 ~1 mangrove_roots []
fill ~-9 ~4 ~1 ~9 ~4 ~1 mud_brick_slab []
setblock ~0 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 prismarine_shard 10
replaceitem block ~-5 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 2 slime_ball 14
replaceitem block ~-5 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 4 arrow 18
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~5 slot.container 9 mangrove_log 21
replaceitem block ~-5 ~1 ~5 slot.container 10 mud_bricks 22
replaceitem block ~-5 ~1 ~5 slot.container 11 cooked_salmon 8
replaceitem block ~-5 ~1 ~5 slot.container 12 iron_ingot 7
replaceitem block ~-5 ~1 ~5 slot.container 13 gold_ingot 6
replaceitem block ~-5 ~1 ~5 slot.container 14 emerald 6
loot insert ~-5 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 slime_ball 17
replaceitem block ~5 ~1 ~5 slot.container 1 bone 14
replaceitem block ~5 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~5 slot.container 4 spider_eye 13
replaceitem block ~5 ~1 ~5 slot.container 5 gunpowder 6
replaceitem block ~5 ~1 ~5 slot.container 9 mangrove_log 19
replaceitem block ~5 ~1 ~5 slot.container 10 mud_bricks 20
replaceitem block ~5 ~1 ~5 slot.container 11 cooked_salmon 13
replaceitem block ~5 ~1 ~5 slot.container 12 iron_ingot 12
replaceitem block ~5 ~1 ~5 slot.container 13 gold_ingot 4
replaceitem block ~5 ~1 ~5 slot.container 14 emerald 4
loot insert ~5 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon frog ~0 ~-3 ~0
