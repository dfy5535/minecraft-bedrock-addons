# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1723/4224 | 主题内编号: b059/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·阶梯金字塔法老墓室 (mangrove_swamp_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mud_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mud_bricks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mud_bricks []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 gunpowder 8
replaceitem block ~0 ~-4 ~-5 slot.container 1 prismarine_shard 7
replaceitem block ~0 ~-4 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 3 slime_ball 19
replaceitem block ~0 ~-4 ~-5 slot.container 4 bone 16
replaceitem block ~0 ~-4 ~-5 slot.container 5 arrow 23
replaceitem block ~0 ~-4 ~-5 slot.container 9 emerald 7
replaceitem block ~0 ~-4 ~-5 slot.container 10 lead 7
replaceitem block ~0 ~-4 ~-5 slot.container 11 golden_apple 7
replaceitem block ~0 ~-4 ~-5 slot.container 12 boat 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 lantern 5
replaceitem block ~0 ~-4 ~-5 slot.container 14 mangrove_log 18
loot insert ~0 ~-4 ~-5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mossy_stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 mud_bricks []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 mud_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mud_bricks []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 mud_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 mangrove_log []
setblock ~-8 ~6 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 mangrove_log []
setblock ~-8 ~6 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 mangrove_log []
setblock ~8 ~6 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 mangrove_log []
setblock ~8 ~6 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-9 ~-2 ~0 ~-9 ~6 ~0 mangrove_roots []
fill ~9 ~-2 ~0 ~9 ~6 ~0 mangrove_roots []
fill ~-9 ~7 ~0 ~9 ~7 ~0 mud_brick_slab []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 3 prismarine_shard 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 slime_ball 14
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 5
replaceitem block ~5 ~1 ~6 slot.container 10 mangrove_log 18
replaceitem block ~5 ~1 ~6 slot.container 11 mud_bricks 19
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_salmon 12
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 10
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
