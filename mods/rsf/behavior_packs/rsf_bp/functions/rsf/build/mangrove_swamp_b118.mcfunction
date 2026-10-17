# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1782/4224 | 主题内编号: b118/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·L型蜂农与林果采集屋 (mangrove_swamp_conservatory_l_apiary)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 packed_mud [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 packed_mud [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~0 ~-4 ~4 slot.container 1 spider_eye 7
replaceitem block ~0 ~-4 ~4 slot.container 2 gunpowder 8
replaceitem block ~0 ~-4 ~4 slot.container 3 prismarine_shard 7
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 slime_ball 19
replaceitem block ~0 ~-4 ~4 slot.container 9 golden_apple 7
replaceitem block ~0 ~-4 ~4 slot.container 10 boat 1
replaceitem block ~0 ~-4 ~4 slot.container 11 lantern 5
replaceitem block ~0 ~-4 ~4 slot.container 12 mangrove_log 18
replaceitem block ~0 ~-4 ~4 slot.container 13 mud_bricks 19
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_salmon 12
loot insert ~0 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 packed_mud []
fill ~-5 ~1 ~0 ~5 ~6 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 mangrove_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mud_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 mangrove_planks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~-2 ~-1 ~-8 ~5 ~-1 mangrove_roots []
fill ~8 ~-2 ~-1 ~8 ~5 ~-1 mangrove_roots []
fill ~-8 ~6 ~-1 ~8 ~6 ~-1 mud_brick_slab []
setblock ~0 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 smoker []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 prismarine_shard 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 slime_ball 14
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 lead 6
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~-4 ~1 ~5 slot.container 11 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 4
replaceitem block ~-4 ~1 ~5 slot.container 13 mangrove_log 17
replaceitem block ~-4 ~1 ~5 slot.container 14 mud_bricks 18
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 17
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 6
replaceitem block ~4 ~1 ~5 slot.container 9 lead 4
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 11 boat 1
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 13 mangrove_log 22
replaceitem block ~4 ~1 ~5 slot.container 14 mud_bricks 16
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
