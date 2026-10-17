# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1755/4224 | 主题内编号: b091/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·跨水拱桥水神小祠 (mangrove_swamp_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mangrove_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mud_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 gunpowder 8
replaceitem block ~-3 ~-3 ~2 slot.container 1 prismarine_shard 7
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 3 slime_ball 19
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 16
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 23
replaceitem block ~-3 ~-3 ~2 slot.container 9 mud_bricks 22
replaceitem block ~-3 ~-3 ~2 slot.container 10 cooked_salmon 8
replaceitem block ~-3 ~-3 ~2 slot.container 11 iron_ingot 7
replaceitem block ~-3 ~-3 ~2 slot.container 12 gold_ingot 6
replaceitem block ~-3 ~-3 ~2 slot.container 13 emerald 6
replaceitem block ~-3 ~-3 ~2 slot.container 14 lead 6
loot insert ~-3 ~-3 ~2 loot "rsf/mangrove_swamp"
loot insert ~-3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mud_brick_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 mud_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 mud_brick_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 mud_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x5x2) ---
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
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~3 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~3 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~3 slot.container 3 prismarine_shard 10
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 slime_ball 14
replaceitem block ~4 ~1 ~3 slot.container 9 emerald 8
replaceitem block ~4 ~1 ~3 slot.container 10 lead 8
replaceitem block ~4 ~1 ~3 slot.container 11 golden_apple 1
replaceitem block ~4 ~1 ~3 slot.container 12 boat 1
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~3 slot.container 14 mangrove_log 19
loot insert ~4 ~1 ~3 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
