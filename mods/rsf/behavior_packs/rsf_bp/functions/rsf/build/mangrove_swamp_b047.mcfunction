# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1711/4224 | 主题内编号: b047/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·深渊跨桥决斗长台 (mangrove_swamp_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mangrove_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 packed_mud []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 slime_ball 19
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 arrow 23
replaceitem block ~0 ~-4 ~5 slot.container 3 rotten_flesh 10
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 7
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 8
replaceitem block ~0 ~-4 ~5 slot.container 9 gold_ingot 4
replaceitem block ~0 ~-4 ~5 slot.container 10 emerald 4
replaceitem block ~0 ~-4 ~5 slot.container 11 lead 4
replaceitem block ~0 ~-4 ~5 slot.container 12 golden_apple 4
replaceitem block ~0 ~-4 ~5 slot.container 13 boat 1
replaceitem block ~0 ~-4 ~5 slot.container 14 lantern 9
loot insert ~0 ~-4 ~5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 slime_ball 17
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 arrow 21
replaceitem block ~0 ~-4 ~-5 slot.container 3 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 4 spider_eye 13
replaceitem block ~0 ~-4 ~-5 slot.container 5 gunpowder 6
replaceitem block ~0 ~-4 ~-5 slot.container 9 gold_ingot 10
replaceitem block ~0 ~-4 ~-5 slot.container 10 emerald 3
replaceitem block ~0 ~-4 ~-5 slot.container 11 lead 3
replaceitem block ~0 ~-4 ~-5 slot.container 12 golden_apple 3
replaceitem block ~0 ~-4 ~-5 slot.container 13 boat 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 lantern 8
loot insert ~0 ~-4 ~-5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 mangrove_log []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 mangrove_log []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 mangrove_log []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 mangrove_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 mangrove_log []
setblock ~-8 ~6 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 mangrove_log []
setblock ~-8 ~6 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 mangrove_log []
setblock ~8 ~6 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 mangrove_log []
setblock ~8 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~-2 ~0 ~-9 ~4 ~0 mangrove_roots []
fill ~9 ~-2 ~0 ~9 ~4 ~0 mangrove_roots []
fill ~-9 ~5 ~0 ~9 ~5 ~0 mud_brick_slab []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 1 slime_ball 14
replaceitem block ~5 ~1 ~4 slot.container 2 bone 11
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 18
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 10
replaceitem block ~5 ~1 ~4 slot.container 9 iron_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 10 gold_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 11 emerald 8
replaceitem block ~5 ~1 ~4 slot.container 12 lead 8
replaceitem block ~5 ~1 ~4 slot.container 13 golden_apple 1
replaceitem block ~5 ~1 ~4 slot.container 14 boat 1
loot insert ~5 ~1 ~4 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
