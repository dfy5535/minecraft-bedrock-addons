# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1778/4224 | 主题内编号: b114/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双联拱顶植物培育馆 (mangrove_swamp_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 packed_mud [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 packed_mud [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mangrove_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mangrove_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 mud_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 packed_mud []
fill ~2 ~1 ~-5 ~6 ~8 ~5 packed_mud []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 mud_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 mud_bricks []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mangrove_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~-2 ~2 ~-9 ~6 ~2 mangrove_roots []
fill ~9 ~-2 ~2 ~9 ~6 ~2 mangrove_roots []
fill ~-9 ~7 ~2 ~9 ~7 ~2 mud_brick_slab []
setblock ~0 ~8 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 18
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 4 prismarine_shard 10
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 4
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 4
replaceitem block ~-5 ~1 ~4 slot.container 11 lead 4
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 13 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 9
loot insert ~-5 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 spider_eye 13
replaceitem block ~5 ~1 ~4 slot.container 1 gunpowder 6
replaceitem block ~5 ~1 ~4 slot.container 2 prismarine_shard 5
replaceitem block ~5 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 4 slime_ball 17
replaceitem block ~5 ~1 ~4 slot.container 5 bone 14
replaceitem block ~5 ~1 ~4 slot.container 9 gold_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 11 lead 2
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 13 boat 1
replaceitem block ~5 ~1 ~4 slot.container 14 lantern 7
loot insert ~5 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon frog ~0 ~2 ~0
