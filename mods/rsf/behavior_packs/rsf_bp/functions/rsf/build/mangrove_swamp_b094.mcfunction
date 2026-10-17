# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1758/4224 | 主题内编号: b094/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·圆形圣泉祈祷亭 (mangrove_swamp_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 packed_mud [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 packed_mud [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mud_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 slime_ball 19
replaceitem block ~-2 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~-2 ~-2 ~3 slot.container 2 arrow 23
replaceitem block ~-2 ~-2 ~3 slot.container 3 rotten_flesh 10
replaceitem block ~-2 ~-2 ~3 slot.container 4 spider_eye 7
replaceitem block ~-2 ~-2 ~3 slot.container 5 gunpowder 8
replaceitem block ~-2 ~-2 ~3 slot.container 9 mangrove_log 18
replaceitem block ~-2 ~-2 ~3 slot.container 10 mud_bricks 19
replaceitem block ~-2 ~-2 ~3 slot.container 11 cooked_salmon 12
replaceitem block ~-2 ~-2 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-2 ~-2 ~3 slot.container 13 gold_ingot 10
replaceitem block ~-2 ~-2 ~3 slot.container 14 emerald 3
loot insert ~-2 ~-2 ~3 loot "rsf/mangrove_swamp"
loot insert ~-2 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 mud_bricks []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 mangrove_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 mangrove_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 mangrove_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 mangrove_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 mangrove_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 mangrove_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 mangrove_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 mangrove_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 mangrove_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 mangrove_log []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 mangrove_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 mangrove_log []
fill ~-4 ~1 ~-1 ~-4 ~7 ~-1 mangrove_log []
fill ~4 ~1 ~-1 ~4 ~7 ~-1 mangrove_log []
fill ~-4 ~1 ~1 ~-4 ~7 ~1 mangrove_log []
fill ~4 ~1 ~1 ~4 ~7 ~1 mangrove_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 mangrove_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 mangrove_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 mud_bricks []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 mangrove_log []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 mangrove_log []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 campfire []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 mangrove_log []
setblock ~-6 ~4 ~0 gold_block []
setblock ~-6 ~5 ~0 campfire []
fill ~6 ~0 ~0 ~6 ~3 ~0 mangrove_log []
setblock ~6 ~4 ~0 gold_block []
setblock ~6 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~-2 ~2 ~-7 ~6 ~2 mangrove_roots []
fill ~7 ~-2 ~2 ~7 ~6 ~2 mangrove_roots []
fill ~-7 ~7 ~2 ~7 ~7 ~2 mud_brick_slab []
setblock ~0 ~8 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 prismarine_shard 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 slime_ball 14
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 5
replaceitem block ~-3 ~1 ~4 slot.container 10 emerald 5
replaceitem block ~-3 ~1 ~4 slot.container 11 lead 5
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~-3 ~1 ~4 slot.container 13 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 10
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 17
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 6
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 3
replaceitem block ~3 ~1 ~4 slot.container 11 lead 3
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 13 boat 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 8
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
