# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1680/4224 | 主题内编号: b016/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·要塞地底重装暗牢 (mangrove_swamp_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mud_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mud_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mud_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 packed_mud []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mud_bricks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 lantern []
setblock ~4 ~-5 ~0 lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 prismarine_shard 7
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 2 slime_ball 19
replaceitem block ~0 ~-3 ~5 slot.container 3 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 4 arrow 23
replaceitem block ~0 ~-3 ~5 slot.container 5 rotten_flesh 10
replaceitem block ~0 ~-3 ~5 slot.container 9 cooked_salmon 14
replaceitem block ~0 ~-3 ~5 slot.container 10 iron_ingot 6
replaceitem block ~0 ~-3 ~5 slot.container 11 gold_ingot 5
replaceitem block ~0 ~-3 ~5 slot.container 12 emerald 5
replaceitem block ~0 ~-3 ~5 slot.container 13 lead 5
replaceitem block ~0 ~-3 ~5 slot.container 14 golden_apple 5
loot insert ~0 ~-3 ~5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 prismarine_shard 5
replaceitem block ~0 ~-3 ~-5 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-3 ~-5 slot.container 2 slime_ball 17
replaceitem block ~0 ~-3 ~-5 slot.container 3 bone 14
replaceitem block ~0 ~-3 ~-5 slot.container 4 arrow 21
replaceitem block ~0 ~-3 ~-5 slot.container 5 rotten_flesh 16
replaceitem block ~0 ~-3 ~-5 slot.container 9 cooked_salmon 13
replaceitem block ~0 ~-3 ~-5 slot.container 10 iron_ingot 12
replaceitem block ~0 ~-3 ~-5 slot.container 11 gold_ingot 4
replaceitem block ~0 ~-3 ~-5 slot.container 12 emerald 4
replaceitem block ~0 ~-3 ~-5 slot.container 13 lead 4
replaceitem block ~0 ~-3 ~-5 slot.container 14 golden_apple 4
loot insert ~0 ~-3 ~-5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 mud_bricks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 mangrove_planks []
setblock ~-6 ~10 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 mangrove_planks []
setblock ~-6 ~10 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 mangrove_planks []
setblock ~5 ~10 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~9 ~7 mangrove_planks []
setblock ~5 ~10 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 mangrove_planks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 mangrove_fence []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 mangrove_log []
setblock ~-6 ~9 ~-7 lantern []
setblock ~-6 ~8 ~7 mangrove_log []
setblock ~-6 ~9 ~7 lantern []
setblock ~6 ~8 ~-7 mangrove_log []
setblock ~6 ~9 ~-7 lantern []
setblock ~6 ~8 ~7 mangrove_log []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 mangrove_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~-2 ~-1 ~-9 ~3 ~-1 mangrove_roots []
fill ~9 ~-2 ~-1 ~9 ~3 ~-1 mangrove_roots []
fill ~-9 ~4 ~-1 ~9 ~4 ~-1 mud_brick_slab []
setblock ~0 ~5 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 slime_ball 14
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~6 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 9 mangrove_log 16
replaceitem block ~-5 ~1 ~6 slot.container 10 mud_bricks 17
replaceitem block ~-5 ~1 ~6 slot.container 11 cooked_salmon 10
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 9
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 8
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 8
loot insert ~-5 ~1 ~6 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 13
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 6
replaceitem block ~5 ~1 ~6 slot.container 4 prismarine_shard 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 mangrove_log 21
replaceitem block ~5 ~1 ~6 slot.container 10 mud_bricks 22
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_salmon 8
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 7
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 6
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
