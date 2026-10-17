# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1708/4224 | 主题内编号: b044/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双子祭台勇士角斗场 (mangrove_swamp_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 mud_bricks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 mud_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 mud_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 packed_mud []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 mangrove_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 bone 16
replaceitem block ~3 ~-3 ~3 slot.container 1 arrow 23
replaceitem block ~3 ~-3 ~3 slot.container 2 rotten_flesh 10
replaceitem block ~3 ~-3 ~3 slot.container 3 spider_eye 7
replaceitem block ~3 ~-3 ~3 slot.container 4 gunpowder 8
replaceitem block ~3 ~-3 ~3 slot.container 5 prismarine_shard 7
replaceitem block ~3 ~-3 ~3 slot.container 9 iron_ingot 11
replaceitem block ~3 ~-3 ~3 slot.container 10 gold_ingot 10
replaceitem block ~3 ~-3 ~3 slot.container 11 emerald 3
replaceitem block ~3 ~-3 ~3 slot.container 12 lead 3
replaceitem block ~3 ~-3 ~3 slot.container 13 golden_apple 3
replaceitem block ~3 ~-3 ~3 slot.container 14 boat 1
loot insert ~3 ~-3 ~3 loot "rsf/mangrove_swamp"
loot insert ~3 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~8 ~6 mud_bricks []
fill ~2 ~1 ~-6 ~6 ~8 ~6 mud_bricks []
fill ~-5 ~1 ~-5 ~-3 ~7 ~5 air []
fill ~3 ~1 ~-5 ~5 ~7 ~5 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 mangrove_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-6 ~-6 ~9 ~-6 mangrove_log []
setblock ~-6 ~10 ~-6 lantern []
fill ~-6 ~7 ~6 ~-6 ~9 ~6 mangrove_log []
setblock ~-6 ~10 ~6 lantern []
fill ~6 ~7 ~-6 ~6 ~9 ~-6 mangrove_log []
setblock ~6 ~10 ~-6 lantern []
fill ~6 ~7 ~6 ~6 ~9 ~6 mangrove_log []
setblock ~6 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 mangrove_log []
setblock ~-8 ~6 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~5 ~8 mangrove_log []
setblock ~-8 ~6 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 mangrove_log []
setblock ~8 ~6 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~5 ~8 mangrove_log []
setblock ~8 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~-2 ~-3 ~-9 ~6 ~-3 mangrove_roots []
fill ~9 ~-2 ~-3 ~9 ~6 ~-3 mangrove_roots []
fill ~-9 ~7 ~-3 ~9 ~7 ~-3 mud_brick_slab []
setblock ~0 ~8 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 spider_eye 10
replaceitem block ~-5 ~1 ~5 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~5 slot.container 2 prismarine_shard 10
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 4 slime_ball 14
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 9 gold_ingot 4
replaceitem block ~-5 ~1 ~5 slot.container 10 emerald 4
replaceitem block ~-5 ~1 ~5 slot.container 11 lead 4
replaceitem block ~-5 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~5 slot.container 13 boat 1
replaceitem block ~-5 ~1 ~5 slot.container 14 lantern 9
loot insert ~-5 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 prismarine_shard 5
replaceitem block ~5 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~5 slot.container 2 slime_ball 17
replaceitem block ~5 ~1 ~5 slot.container 3 bone 14
replaceitem block ~5 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~5 slot.container 9 gold_ingot 9
replaceitem block ~5 ~1 ~5 slot.container 10 emerald 9
replaceitem block ~5 ~1 ~5 slot.container 11 lead 2
replaceitem block ~5 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~5 ~1 ~5 slot.container 13 boat 1
replaceitem block ~5 ~1 ~5 slot.container 14 lantern 7
loot insert ~5 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
