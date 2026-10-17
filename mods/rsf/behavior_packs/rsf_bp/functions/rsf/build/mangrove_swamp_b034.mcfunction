# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1698/4224 | 主题内编号: b034/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双子对称铭文方尖碑 (mangrove_swamp_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 packed_mud [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 packed_mud [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mangrove_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mangrove_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 prismarine_shard 7
replaceitem block ~3 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 2 slime_ball 19
replaceitem block ~3 ~-2 ~2 slot.container 3 bone 16
replaceitem block ~3 ~-2 ~2 slot.container 4 arrow 23
replaceitem block ~3 ~-2 ~2 slot.container 5 rotten_flesh 10
replaceitem block ~3 ~-2 ~2 slot.container 9 boat 1
replaceitem block ~3 ~-2 ~2 slot.container 10 lantern 5
replaceitem block ~3 ~-2 ~2 slot.container 11 mangrove_log 18
replaceitem block ~3 ~-2 ~2 slot.container 12 mud_bricks 19
replaceitem block ~3 ~-2 ~2 slot.container 13 cooked_salmon 12
replaceitem block ~3 ~-2 ~2 slot.container 14 iron_ingot 11
loot insert ~3 ~-2 ~2 loot "rsf/mangrove_swamp"
loot insert ~3 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~12 ~4 packed_mud []
fill ~2 ~1 ~-4 ~5 ~12 ~4 packed_mud []
fill ~-4 ~1 ~-3 ~-3 ~11 ~3 air []
fill ~3 ~1 ~-3 ~4 ~11 ~3 air []
fill ~-2 ~9 ~-1 ~2 ~11 ~1 mud_bricks []
fill ~-3 ~10 ~0 ~3 ~10 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 mud_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 packed_mud []
fill ~0 ~17 ~0 ~0 ~19 ~0 sea_lantern []
setblock ~0 ~20 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 mud_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~-8 ~-2 ~-2 ~-8 ~6 ~-2 mangrove_roots []
fill ~8 ~-2 ~-2 ~8 ~6 ~-2 mangrove_roots []
fill ~-8 ~7 ~-2 ~8 ~7 ~-2 mud_brick_slab []
setblock ~0 ~8 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 arrow 18
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~3 slot.container 4 prismarine_shard 10
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~3 slot.container 9 gold_ingot 8
replaceitem block ~-4 ~1 ~3 slot.container 10 emerald 8
replaceitem block ~-4 ~1 ~3 slot.container 11 lead 8
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 1
replaceitem block ~-4 ~1 ~3 slot.container 13 boat 1
replaceitem block ~-4 ~1 ~3 slot.container 14 lantern 6
loot insert ~-4 ~1 ~3 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 13
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 6
replaceitem block ~4 ~1 ~3 slot.container 2 prismarine_shard 5
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~3 slot.container 4 slime_ball 17
replaceitem block ~4 ~1 ~3 slot.container 5 bone 14
replaceitem block ~4 ~1 ~3 slot.container 9 gold_ingot 6
replaceitem block ~4 ~1 ~3 slot.container 10 emerald 6
replaceitem block ~4 ~1 ~3 slot.container 11 lead 6
replaceitem block ~4 ~1 ~3 slot.container 12 golden_apple 6
replaceitem block ~4 ~1 ~3 slot.container 13 boat 1
replaceitem block ~4 ~1 ~3 slot.container 14 lantern 4
loot insert ~4 ~1 ~3 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~3 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
