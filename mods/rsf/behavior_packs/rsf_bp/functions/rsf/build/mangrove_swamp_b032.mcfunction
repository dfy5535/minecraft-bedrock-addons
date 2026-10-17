# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1696/4224 | 主题内编号: b032/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·断顶残垣古哨塔 (mangrove_swamp_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 9x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace leaves
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace leaves2
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace log
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace log2
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 mud_bricks [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 mud_bricks [] replace water
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mud_brick_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 packed_mud []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 mangrove_planks []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 mangrove_planks []
setblock ~0 ~-5 ~0 slime []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 arrow 23
replaceitem block ~0 ~-2 ~-3 slot.container 1 rotten_flesh 10
replaceitem block ~0 ~-2 ~-3 slot.container 2 spider_eye 7
replaceitem block ~0 ~-2 ~-3 slot.container 3 gunpowder 8
replaceitem block ~0 ~-2 ~-3 slot.container 4 prismarine_shard 7
replaceitem block ~0 ~-2 ~-3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 9 gold_ingot 9
replaceitem block ~0 ~-2 ~-3 slot.container 10 emerald 9
replaceitem block ~0 ~-2 ~-3 slot.container 11 lead 2
replaceitem block ~0 ~-2 ~-3 slot.container 12 golden_apple 2
replaceitem block ~0 ~-2 ~-3 slot.container 13 boat 1
replaceitem block ~0 ~-2 ~-3 slot.container 14 lantern 7
loot insert ~0 ~-2 ~-3 loot "rsf/mangrove_swamp"
loot insert ~0 ~-2 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~10 ~5 mud_bricks []
fill ~-2 ~1 ~-4 ~2 ~9 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~10 ~-5 mangrove_log []
fill ~-3 ~1 ~5 ~-3 ~10 ~5 mangrove_log []
fill ~3 ~1 ~-5 ~3 ~10 ~-5 mangrove_log []
fill ~3 ~1 ~5 ~3 ~10 ~5 mangrove_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 mangrove_fence []
setblock ~3 ~2 ~0 mangrove_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~10 ~-5 ~3 ~10 ~5 mud_brick_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-3 ~9 ~-1 ~-3 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~9 ~-2 mangrove_log []
fill ~-4 ~0 ~2 ~-4 ~9 ~2 mangrove_log []
fill ~4 ~0 ~-2 ~4 ~9 ~-2 mangrove_log []
fill ~4 ~0 ~2 ~4 ~9 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-6 ~-2 ~0 ~-6 ~4 ~0 mangrove_roots []
fill ~6 ~-2 ~0 ~6 ~4 ~0 mangrove_roots []
fill ~-6 ~5 ~0 ~6 ~5 ~0 mud_brick_slab []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 slime_ball 14
replaceitem block ~-2 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-2 ~1 ~4 slot.container 2 arrow 18
replaceitem block ~-2 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-2 ~1 ~4 slot.container 4 spider_eye 10
replaceitem block ~-2 ~1 ~4 slot.container 5 gunpowder 11
replaceitem block ~-2 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-2 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~-2 ~1 ~4 slot.container 11 mangrove_log 20
replaceitem block ~-2 ~1 ~4 slot.container 12 mud_bricks 21
replaceitem block ~-2 ~1 ~4 slot.container 13 cooked_salmon 14
replaceitem block ~-2 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~-2 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~2 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~2 ~1 ~4 slot.container 2 spider_eye 13
replaceitem block ~2 ~1 ~4 slot.container 3 gunpowder 6
replaceitem block ~2 ~1 ~4 slot.container 4 prismarine_shard 5
replaceitem block ~2 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~2 ~1 ~4 slot.container 9 boat 1
replaceitem block ~2 ~1 ~4 slot.container 10 lantern 5
replaceitem block ~2 ~1 ~4 slot.container 11 mangrove_log 18
replaceitem block ~2 ~1 ~4 slot.container 12 mud_bricks 19
replaceitem block ~2 ~1 ~4 slot.container 13 cooked_salmon 12
replaceitem block ~2 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~2 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~2 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
