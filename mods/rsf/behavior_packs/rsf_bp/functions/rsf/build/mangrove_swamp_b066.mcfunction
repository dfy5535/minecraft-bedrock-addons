# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1730/4224 | 主题内编号: b066/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·崩塌角楼古堡残垣 (mangrove_swamp_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 packed_mud [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 packed_mud [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 packed_mud []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 campfire []
setblock ~3 ~-4 ~-4 campfire []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 spider_eye 7
replaceitem block ~3 ~-2 ~4 slot.container 1 gunpowder 8
replaceitem block ~3 ~-2 ~4 slot.container 2 prismarine_shard 7
replaceitem block ~3 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 4 slime_ball 19
replaceitem block ~3 ~-2 ~4 slot.container 5 bone 16
replaceitem block ~3 ~-2 ~4 slot.container 9 cooked_salmon 11
replaceitem block ~3 ~-2 ~4 slot.container 10 iron_ingot 10
replaceitem block ~3 ~-2 ~4 slot.container 11 gold_ingot 9
replaceitem block ~3 ~-2 ~4 slot.container 12 emerald 9
replaceitem block ~3 ~-2 ~4 slot.container 13 lead 2
replaceitem block ~3 ~-2 ~4 slot.container 14 golden_apple 2
loot insert ~3 ~-2 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 packed_mud []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~10 ~-5 mud_bricks []
setblock ~-5 ~11 ~-6 campfire []
fill ~-5 ~1 ~5 ~-4 ~10 ~6 mud_bricks []
setblock ~-5 ~11 ~5 campfire []
fill ~4 ~1 ~-6 ~5 ~10 ~-5 mud_bricks []
setblock ~4 ~11 ~-6 campfire []
fill ~4 ~1 ~5 ~5 ~10 ~6 mud_bricks []
setblock ~4 ~11 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mangrove_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 mangrove_log []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 mangrove_log []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 mangrove_log []
fill ~6 ~0 ~2 ~6 ~7 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~-2 ~1 ~-8 ~3 ~1 mangrove_roots []
fill ~8 ~-2 ~1 ~8 ~3 ~1 mangrove_roots []
fill ~-8 ~4 ~1 ~8 ~4 ~1 mud_brick_slab []
setblock ~0 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 mangrove_log 17
replaceitem block ~-4 ~1 ~5 slot.container 10 mud_bricks 18
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_salmon 11
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 9
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 13
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 6
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 slime_ball 17
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 mangrove_log 22
replaceitem block ~4 ~1 ~5 slot.container 10 mud_bricks 16
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_salmon 9
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 7
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon frog ~0 ~-2 ~0
