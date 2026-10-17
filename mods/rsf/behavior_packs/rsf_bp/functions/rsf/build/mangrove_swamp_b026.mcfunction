# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1690/4224 | 主题内编号: b026/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·尖顶信标引航高塔 (mangrove_swamp_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 packed_mud [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 packed_mud [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mangrove_planks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 mossy_stone_bricks []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 prismarine_shard 7
replaceitem block ~1 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~1 ~-2 ~2 slot.container 2 slime_ball 19
replaceitem block ~1 ~-2 ~2 slot.container 3 bone 16
replaceitem block ~1 ~-2 ~2 slot.container 4 arrow 23
replaceitem block ~1 ~-2 ~2 slot.container 5 rotten_flesh 10
replaceitem block ~1 ~-2 ~2 slot.container 9 gold_ingot 10
replaceitem block ~1 ~-2 ~2 slot.container 10 emerald 3
replaceitem block ~1 ~-2 ~2 slot.container 11 lead 3
replaceitem block ~1 ~-2 ~2 slot.container 12 golden_apple 3
replaceitem block ~1 ~-2 ~2 slot.container 13 boat 1
replaceitem block ~1 ~-2 ~2 slot.container 14 lantern 8
loot insert ~1 ~-2 ~2 loot "rsf/mangrove_swamp"
loot insert ~1 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~12 ~4 packed_mud []
fill ~-2 ~1 ~-3 ~2 ~11 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~13 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~13 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~13 ~4 air []
fill ~3 ~1 ~4 ~3 ~13 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~12 ~-3 mangrove_log []
fill ~2 ~1 ~-3 ~2 ~12 ~-3 mangrove_log []
fill ~-2 ~1 ~3 ~-2 ~12 ~3 mangrove_log []
fill ~2 ~1 ~3 ~2 ~12 ~3 mangrove_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 mud_bricks []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 packed_mud []
fill ~0 ~18 ~0 ~0 ~20 ~0 sea_lantern []
setblock ~0 ~21 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~11 ~-2 mangrove_log []
fill ~-4 ~0 ~2 ~-4 ~11 ~2 mangrove_log []
fill ~4 ~0 ~-2 ~4 ~11 ~-2 mangrove_log []
fill ~4 ~0 ~2 ~4 ~11 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~-6 ~-2 ~-2 ~-6 ~3 ~-2 mangrove_roots []
fill ~6 ~-2 ~-2 ~6 ~3 ~-2 mangrove_roots []
fill ~-6 ~4 ~-2 ~6 ~4 ~-2 mud_brick_slab []
setblock ~0 ~5 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 arrow 18
replaceitem block ~-2 ~1 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~-2 ~1 ~3 slot.container 2 spider_eye 10
replaceitem block ~-2 ~1 ~3 slot.container 3 gunpowder 11
replaceitem block ~-2 ~1 ~3 slot.container 4 prismarine_shard 10
replaceitem block ~-2 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-2 ~1 ~3 slot.container 9 mangrove_log 19
replaceitem block ~-2 ~1 ~3 slot.container 10 mud_bricks 20
replaceitem block ~-2 ~1 ~3 slot.container 11 cooked_salmon 13
replaceitem block ~-2 ~1 ~3 slot.container 12 iron_ingot 12
replaceitem block ~-2 ~1 ~3 slot.container 13 gold_ingot 4
replaceitem block ~-2 ~1 ~3 slot.container 14 emerald 4
loot insert ~-2 ~1 ~3 loot "rsf/mangrove_swamp"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 spider_eye 13
replaceitem block ~2 ~1 ~3 slot.container 1 gunpowder 6
replaceitem block ~2 ~1 ~3 slot.container 2 prismarine_shard 5
replaceitem block ~2 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~2 ~1 ~3 slot.container 4 slime_ball 17
replaceitem block ~2 ~1 ~3 slot.container 5 bone 14
replaceitem block ~2 ~1 ~3 slot.container 9 mangrove_log 17
replaceitem block ~2 ~1 ~3 slot.container 10 mud_bricks 18
replaceitem block ~2 ~1 ~3 slot.container 11 cooked_salmon 11
replaceitem block ~2 ~1 ~3 slot.container 12 iron_ingot 10
replaceitem block ~2 ~1 ~3 slot.container 13 gold_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 14 emerald 9
loot insert ~2 ~1 ~3 loot "rsf/mangrove_swamp"
loot insert ~2 ~1 ~3 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
