# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1710/4224 | 主题内编号: b046/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·要塞校场比武演武台 (mangrove_swamp_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 packed_mud [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 packed_mud [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mangrove_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~5 slot.container 0 arrow 23
replaceitem block ~4 ~-2 ~5 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~-2 ~5 slot.container 2 spider_eye 7
replaceitem block ~4 ~-2 ~5 slot.container 3 gunpowder 8
replaceitem block ~4 ~-2 ~5 slot.container 4 prismarine_shard 7
replaceitem block ~4 ~-2 ~5 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~5 slot.container 9 gold_ingot 9
replaceitem block ~4 ~-2 ~5 slot.container 10 emerald 9
replaceitem block ~4 ~-2 ~5 slot.container 11 lead 2
replaceitem block ~4 ~-2 ~5 slot.container 12 golden_apple 2
replaceitem block ~4 ~-2 ~5 slot.container 13 boat 1
replaceitem block ~4 ~-2 ~5 slot.container 14 lantern 7
loot insert ~4 ~-2 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~-2 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 packed_mud []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 mud_bricks []
setblock ~-6 ~10 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 mud_bricks []
setblock ~-6 ~10 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 mud_bricks []
setblock ~5 ~10 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~9 ~7 mud_bricks []
setblock ~5 ~10 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 mud_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 mangrove_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 mossy_stone_bricks []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~-2 ~1 ~-9 ~3 ~1 mangrove_roots []
fill ~9 ~-2 ~1 ~9 ~3 ~1 mangrove_roots []
fill ~-9 ~4 ~1 ~9 ~4 ~1 mud_brick_slab []
setblock ~0 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 prismarine_shard 10
replaceitem block ~-5 ~1 ~6 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 2 slime_ball 14
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 9 mangrove_log 18
replaceitem block ~-5 ~1 ~6 slot.container 10 mud_bricks 19
replaceitem block ~-5 ~1 ~6 slot.container 11 cooked_salmon 12
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 11
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 10
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 3
loot insert ~-5 ~1 ~6 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 slime_ball 17
replaceitem block ~5 ~1 ~6 slot.container 1 bone 14
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 13
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 6
replaceitem block ~5 ~1 ~6 slot.container 9 mangrove_log 16
replaceitem block ~5 ~1 ~6 slot.container 10 mud_bricks 17
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_salmon 10
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 8
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
