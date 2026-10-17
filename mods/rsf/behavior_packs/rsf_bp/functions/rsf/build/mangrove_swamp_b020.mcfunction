# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1684/4224 | 主题内编号: b020/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·重甲防爆金库房间 (mangrove_swamp_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mud_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mud_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mud_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mud_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gunpowder 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 prismarine_shard 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 slime_ball 19
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 arrow 23
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 5
replaceitem block ~0 ~-3 ~-4 slot.container 10 boat 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 12 mangrove_log 16
replaceitem block ~0 ~-3 ~-4 slot.container 13 mud_bricks 17
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_salmon 10
loot insert ~0 ~-3 ~-4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 mud_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-3 ~9 ~-4 mangrove_planks []
setblock ~-4 ~10 ~-5 lantern []
fill ~-4 ~1 ~4 ~-3 ~9 ~5 mangrove_planks []
setblock ~-4 ~10 ~4 lantern []
fill ~3 ~1 ~-5 ~4 ~9 ~-4 mangrove_planks []
setblock ~3 ~10 ~-5 lantern []
fill ~3 ~1 ~4 ~4 ~9 ~5 mangrove_planks []
setblock ~3 ~10 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 mangrove_planks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 mangrove_fence []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 air []
setblock ~-4 ~8 ~-5 mangrove_log []
setblock ~-4 ~9 ~-5 lantern []
setblock ~-4 ~8 ~5 mangrove_log []
setblock ~-4 ~9 ~5 lantern []
setblock ~4 ~8 ~-5 mangrove_log []
setblock ~4 ~9 ~-5 lantern []
setblock ~4 ~8 ~5 mangrove_log []
setblock ~4 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~6 ~-2 mangrove_log []
fill ~-5 ~0 ~2 ~-5 ~6 ~2 mangrove_log []
fill ~5 ~0 ~-2 ~5 ~6 ~-2 mangrove_log []
fill ~5 ~0 ~2 ~5 ~6 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~-2 ~-2 ~-7 ~7 ~-2 mangrove_roots []
fill ~7 ~-2 ~-2 ~7 ~7 ~-2 mangrove_roots []
fill ~-7 ~8 ~-2 ~7 ~8 ~-2 mud_brick_slab []
setblock ~0 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 2 prismarine_shard 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_salmon 12
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 3
replaceitem block ~-3 ~1 ~4 slot.container 13 lead 3
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_shard 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 slime_ball 17
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_salmon 10
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 8
replaceitem block ~3 ~1 ~4 slot.container 13 lead 8
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 1
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
