# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1789/4224 | 主题内编号: b125/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·巨型阶梯金字塔神王殿 (mangrove_swamp_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mangrove_planks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mangrove_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mangrove_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 packed_mud []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 slime []
setblock ~0 ~-7 ~0 torch []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 gunpowder 8
replaceitem block ~4 ~-4 ~0 slot.container 1 prismarine_shard 7
replaceitem block ~4 ~-4 ~0 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~0 slot.container 3 slime_ball 19
replaceitem block ~4 ~-4 ~0 slot.container 4 bone 16
replaceitem block ~4 ~-4 ~0 slot.container 5 arrow 23
replaceitem block ~4 ~-4 ~0 slot.container 9 iron_ingot 8
replaceitem block ~4 ~-4 ~0 slot.container 10 gold_ingot 7
replaceitem block ~4 ~-4 ~0 slot.container 11 emerald 7
replaceitem block ~4 ~-4 ~0 slot.container 12 lead 7
replaceitem block ~4 ~-4 ~0 slot.container 13 golden_apple 7
replaceitem block ~4 ~-4 ~0 slot.container 14 boat 1
loot insert ~4 ~-4 ~0 loot "rsf/mangrove_swamp"
loot insert ~4 ~-4 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mangrove_planks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 mud_bricks []
fill ~-4 ~5 ~-5 ~4 ~10 ~5 packed_mud []
fill ~-4 ~1 ~-5 ~4 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 mangrove_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~11 ~-7 ~6 ~11 ~7 mud_bricks []
fill ~-5 ~12 ~-6 ~5 ~12 ~6 packed_mud []
fill ~-1 ~13 ~-1 ~1 ~13 ~1 slime []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 packed_mud []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~-9 ~-2 ~3 ~-9 ~7 ~3 mangrove_roots []
fill ~9 ~-2 ~3 ~9 ~7 ~3 mangrove_roots []
fill ~-9 ~8 ~3 ~9 ~8 ~3 mud_brick_slab []
setblock ~0 ~9 ~3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 slime []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 1 prismarine_shard 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 slime_ball 14
replaceitem block ~5 ~1 ~6 slot.container 4 bone 11
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 18
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 10 boat 1
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 12 mangrove_log 16
replaceitem block ~5 ~1 ~6 slot.container 13 mud_bricks 17
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_salmon 10
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
