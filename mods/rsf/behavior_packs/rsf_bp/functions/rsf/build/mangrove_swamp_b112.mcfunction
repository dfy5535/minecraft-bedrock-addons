# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1776/4224 | 主题内编号: b112/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·U型回廊学者修道院 (mangrove_swamp_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mud_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mud_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mud_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_mud []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mangrove_planks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 torch []
setblock ~3 ~-6 ~-4 torch []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~3 ~-4 ~4 slot.container 1 spider_eye 7
replaceitem block ~3 ~-4 ~4 slot.container 2 gunpowder 8
replaceitem block ~3 ~-4 ~4 slot.container 3 prismarine_shard 7
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 slime_ball 19
replaceitem block ~3 ~-4 ~4 slot.container 9 mud_bricks 18
replaceitem block ~3 ~-4 ~4 slot.container 10 cooked_salmon 11
replaceitem block ~3 ~-4 ~4 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-4 ~4 slot.container 12 gold_ingot 9
replaceitem block ~3 ~-4 ~4 slot.container 13 emerald 9
replaceitem block ~3 ~-4 ~4 slot.container 14 lead 2
loot insert ~3 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 mud_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 mud_brick_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mangrove_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mangrove_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 mangrove_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 mangrove_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 mud_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~-2 ~-1 ~-8 ~4 ~-1 mangrove_roots []
fill ~8 ~-2 ~-1 ~8 ~4 ~-1 mangrove_roots []
fill ~-8 ~5 ~-1 ~8 ~5 ~-1 mud_brick_slab []
setblock ~0 ~6 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 slime_ball 14
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 5 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 10
replaceitem block ~-4 ~1 ~5 slot.container 11 mangrove_log 16
replaceitem block ~-4 ~1 ~5 slot.container 12 mud_bricks 17
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_salmon 10
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 13
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 6
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_shard 5
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 11 mangrove_log 21
replaceitem block ~4 ~1 ~5 slot.container 12 mud_bricks 22
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_salmon 8
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 7
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
