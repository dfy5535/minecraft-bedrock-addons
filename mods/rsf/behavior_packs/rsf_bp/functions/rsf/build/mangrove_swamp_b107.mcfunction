# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1771/4224 | 主题内编号: b107/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·观星高塔与秘术地宫 (mangrove_swamp_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 mud_bricks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 gold_block []
setblock ~0 ~-7 ~0 lantern []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 rotten_flesh 10
replaceitem block ~2 ~-4 ~0 slot.container 1 spider_eye 7
replaceitem block ~2 ~-4 ~0 slot.container 2 gunpowder 8
replaceitem block ~2 ~-4 ~0 slot.container 3 prismarine_shard 7
replaceitem block ~2 ~-4 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-4 ~0 slot.container 5 slime_ball 19
replaceitem block ~2 ~-4 ~0 slot.container 9 lantern 9
replaceitem block ~2 ~-4 ~0 slot.container 10 mangrove_log 22
replaceitem block ~2 ~-4 ~0 slot.container 11 mud_bricks 16
replaceitem block ~2 ~-4 ~0 slot.container 12 cooked_salmon 9
replaceitem block ~2 ~-4 ~0 slot.container 13 iron_ingot 8
replaceitem block ~2 ~-4 ~0 slot.container 14 gold_ingot 7
loot insert ~2 ~-4 ~0 loot "rsf/mangrove_swamp"
loot insert ~2 ~-4 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 mud_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~10 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 mud_bricks []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 glass []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 mangrove_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 mangrove_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 mangrove_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~-2 ~0 ~-7 ~4 ~0 mangrove_roots []
fill ~7 ~-2 ~0 ~7 ~4 ~0 mangrove_roots []
fill ~-7 ~5 ~0 ~7 ~5 ~0 mud_brick_slab []
setblock ~0 ~6 ~0 lantern []

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
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 5
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 12 lead 5
replaceitem block ~3 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~3 ~1 ~4 slot.container 14 boat 1
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
