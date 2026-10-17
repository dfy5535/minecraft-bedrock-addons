# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1762/4224 | 主题内编号: b098/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·四角炮楼重装要塞 (mangrove_swamp_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 packed_mud [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 packed_mud [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mangrove_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 mud_bricks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 slime_ball 19
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 arrow 23
replaceitem block ~-2 ~-4 ~3 slot.container 4 rotten_flesh 10
replaceitem block ~-2 ~-4 ~3 slot.container 5 spider_eye 7
replaceitem block ~-2 ~-4 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-2 ~-4 ~3 slot.container 10 gold_ingot 9
replaceitem block ~-2 ~-4 ~3 slot.container 11 emerald 9
replaceitem block ~-2 ~-4 ~3 slot.container 12 lead 2
replaceitem block ~-2 ~-4 ~3 slot.container 13 golden_apple 2
replaceitem block ~-2 ~-4 ~3 slot.container 14 boat 1
loot insert ~-2 ~-4 ~3 loot "rsf/mangrove_swamp"
loot insert ~-2 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 packed_mud []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~10 ~-6 mud_bricks []
setblock ~-6 ~11 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~10 ~7 mud_bricks []
setblock ~-6 ~11 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~10 ~-6 mud_bricks []
setblock ~5 ~11 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~10 ~7 mud_bricks []
setblock ~5 ~11 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 mud_bricks []
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mangrove_fence []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 air []
setblock ~-6 ~9 ~-7 mangrove_log []
setblock ~-6 ~10 ~-7 campfire []
setblock ~-6 ~9 ~7 mangrove_log []
setblock ~-6 ~10 ~7 campfire []
setblock ~6 ~9 ~-7 mangrove_log []
setblock ~6 ~10 ~-7 campfire []
setblock ~6 ~9 ~7 mangrove_log []
setblock ~6 ~10 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 mangrove_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-9 ~-2 ~-3 ~-9 ~5 ~-3 mangrove_roots []
fill ~9 ~-2 ~-3 ~9 ~5 ~-3 mangrove_roots []
fill ~-9 ~6 ~-3 ~9 ~6 ~-3 mud_brick_slab []
setblock ~0 ~7 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~6 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 4 prismarine_shard 10
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 lead 7
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~6 slot.container 11 boat 1
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 5
replaceitem block ~-5 ~1 ~6 slot.container 13 mangrove_log 18
replaceitem block ~-5 ~1 ~6 slot.container 14 mud_bricks 19
loot insert ~-5 ~1 ~6 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 13
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 6
replaceitem block ~5 ~1 ~6 slot.container 2 prismarine_shard 5
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 slime_ball 17
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 lead 5
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 11 boat 1
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 13 mangrove_log 16
replaceitem block ~5 ~1 ~6 slot.container 14 mud_bricks 17
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
