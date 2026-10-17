# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1699/4224 | 主题内编号: b035/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·巨石垒砌古战石冢 (mangrove_swamp_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 bone 16
replaceitem block ~0 ~-4 ~3 slot.container 1 arrow 23
replaceitem block ~0 ~-4 ~3 slot.container 2 rotten_flesh 10
replaceitem block ~0 ~-4 ~3 slot.container 3 spider_eye 7
replaceitem block ~0 ~-4 ~3 slot.container 4 gunpowder 8
replaceitem block ~0 ~-4 ~3 slot.container 5 prismarine_shard 7
replaceitem block ~0 ~-4 ~3 slot.container 9 lantern 8
replaceitem block ~0 ~-4 ~3 slot.container 10 mangrove_log 21
replaceitem block ~0 ~-4 ~3 slot.container 11 mud_bricks 22
replaceitem block ~0 ~-4 ~3 slot.container 12 cooked_salmon 8
replaceitem block ~0 ~-4 ~3 slot.container 13 iron_ingot 7
replaceitem block ~0 ~-4 ~3 slot.container 14 gold_ingot 6
loot insert ~0 ~-4 ~3 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~3 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 bone 14
replaceitem block ~0 ~-4 ~-3 slot.container 1 arrow 21
replaceitem block ~0 ~-4 ~-3 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-4 ~-3 slot.container 3 spider_eye 13
replaceitem block ~0 ~-4 ~-3 slot.container 4 gunpowder 6
replaceitem block ~0 ~-4 ~-3 slot.container 5 prismarine_shard 5
replaceitem block ~0 ~-4 ~-3 slot.container 9 lantern 7
replaceitem block ~0 ~-4 ~-3 slot.container 10 mangrove_log 20
replaceitem block ~0 ~-4 ~-3 slot.container 11 mud_bricks 21
replaceitem block ~0 ~-4 ~-3 slot.container 12 cooked_salmon 14
replaceitem block ~0 ~-4 ~-3 slot.container 13 iron_ingot 6
replaceitem block ~0 ~-4 ~-3 slot.container 14 gold_ingot 5
loot insert ~0 ~-4 ~-3 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 mangrove_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 mangrove_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 mangrove_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 mangrove_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 mud_bricks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 mud_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 mangrove_log []
setblock ~0 ~4 ~-7 chiseled_stone_bricks []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 mangrove_log []
setblock ~0 ~4 ~7 chiseled_stone_bricks []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 mangrove_log []
setblock ~-6 ~4 ~0 chiseled_stone_bricks []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 mangrove_log []
setblock ~6 ~4 ~0 chiseled_stone_bricks []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~-2 ~-2 ~-7 ~7 ~-2 mangrove_roots []
fill ~7 ~-2 ~-2 ~7 ~7 ~-2 mangrove_roots []
fill ~-7 ~8 ~-2 ~7 ~8 ~-2 mud_brick_slab []
setblock ~0 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 10
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 11
replaceitem block ~3 ~1 ~4 slot.container 3 prismarine_shard 10
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 slime_ball 14
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 10 boat 1
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 4
replaceitem block ~3 ~1 ~4 slot.container 12 mangrove_log 17
replaceitem block ~3 ~1 ~4 slot.container 13 mud_bricks 18
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_salmon 11
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
