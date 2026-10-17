# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1752/4224 | 主题内编号: b088/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·矿车铁轨转运仓库 (mangrove_swamp_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace leaves
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace leaves2
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace log
fill ~-6 ~1 ~-9 ~6 ~11 ~9 air [] replace log2
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 mud_bricks [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 mud_bricks [] replace water
fill ~-5 ~0 ~-8 ~5 ~0 ~8 mud_brick_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 packed_mud []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 mangrove_planks []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 spider_eye 7
replaceitem block ~2 ~-2 ~5 slot.container 1 gunpowder 8
replaceitem block ~2 ~-2 ~5 slot.container 2 prismarine_shard 7
replaceitem block ~2 ~-2 ~5 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~5 slot.container 4 slime_ball 19
replaceitem block ~2 ~-2 ~5 slot.container 5 bone 16
replaceitem block ~2 ~-2 ~5 slot.container 9 mangrove_log 21
replaceitem block ~2 ~-2 ~5 slot.container 10 mud_bricks 22
replaceitem block ~2 ~-2 ~5 slot.container 11 cooked_salmon 8
replaceitem block ~2 ~-2 ~5 slot.container 12 iron_ingot 7
replaceitem block ~2 ~-2 ~5 slot.container 13 gold_ingot 6
replaceitem block ~2 ~-2 ~5 slot.container 14 emerald 6
loot insert ~2 ~-2 ~5 loot "rsf/mangrove_swamp"
loot insert ~2 ~-2 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~7 ~7 mud_bricks []
fill ~-3 ~1 ~-6 ~3 ~6 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 mangrove_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 mangrove_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 mangrove_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 mangrove_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 mangrove_fence []
setblock ~4 ~2 ~0 mangrove_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-8 ~-5 ~8 ~8 mud_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-8 ~5 ~8 ~8 mud_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-7 ~-4 ~9 ~7 mud_brick_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-7 ~4 ~9 ~7 mud_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-7 ~3 ~9 ~7 mud_brick_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 mangrove_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mud_brick_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-7 ~-2 ~1 ~-7 ~5 ~1 mangrove_roots []
fill ~7 ~-2 ~1 ~7 ~5 ~1 mangrove_roots []
fill ~-7 ~6 ~1 ~7 ~6 ~1 mud_brick_slab []
setblock ~0 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 slime_ball 14
replaceitem block ~-3 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~6 slot.container 2 arrow 18
replaceitem block ~-3 ~1 ~6 slot.container 3 rotten_flesh 13
replaceitem block ~-3 ~1 ~6 slot.container 4 spider_eye 10
replaceitem block ~-3 ~1 ~6 slot.container 5 gunpowder 11
replaceitem block ~-3 ~1 ~6 slot.container 9 lead 4
replaceitem block ~-3 ~1 ~6 slot.container 10 golden_apple 4
replaceitem block ~-3 ~1 ~6 slot.container 11 boat 1
replaceitem block ~-3 ~1 ~6 slot.container 12 lantern 9
replaceitem block ~-3 ~1 ~6 slot.container 13 mangrove_log 22
replaceitem block ~-3 ~1 ~6 slot.container 14 mud_bricks 16
loot insert ~-3 ~1 ~6 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~6 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~1 ~6 slot.container 2 spider_eye 13
replaceitem block ~3 ~1 ~6 slot.container 3 gunpowder 6
replaceitem block ~3 ~1 ~6 slot.container 4 prismarine_shard 5
replaceitem block ~3 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~6 slot.container 9 lead 2
replaceitem block ~3 ~1 ~6 slot.container 10 golden_apple 2
replaceitem block ~3 ~1 ~6 slot.container 11 boat 1
replaceitem block ~3 ~1 ~6 slot.container 12 lantern 7
replaceitem block ~3 ~1 ~6 slot.container 13 mangrove_log 20
replaceitem block ~3 ~1 ~6 slot.container 14 mud_bricks 21
loot insert ~3 ~1 ~6 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~6 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
