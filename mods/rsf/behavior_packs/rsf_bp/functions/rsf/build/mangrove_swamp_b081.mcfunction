# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1745/4224 | 主题内编号: b081/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双高炉重工冶炼密室 (mangrove_swamp_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 mangrove_planks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 mangrove_planks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mangrove_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 mangrove_planks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
setblock ~-2 ~-6 ~0 blast_furnace []
setblock ~2 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-4 ~4 slot.container 0 gunpowder 8
replaceitem block ~2 ~-4 ~4 slot.container 1 prismarine_shard 7
replaceitem block ~2 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-4 ~4 slot.container 3 slime_ball 19
replaceitem block ~2 ~-4 ~4 slot.container 4 bone 16
replaceitem block ~2 ~-4 ~4 slot.container 5 arrow 23
replaceitem block ~2 ~-4 ~4 slot.container 9 mud_bricks 17
replaceitem block ~2 ~-4 ~4 slot.container 10 cooked_salmon 10
replaceitem block ~2 ~-4 ~4 slot.container 11 iron_ingot 9
replaceitem block ~2 ~-4 ~4 slot.container 12 gold_ingot 8
replaceitem block ~2 ~-4 ~4 slot.container 13 emerald 8
replaceitem block ~2 ~-4 ~4 slot.container 14 lead 8
loot insert ~2 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~2 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-4 ~1 ~-6 ~4 ~7 ~6 mangrove_planks []
fill ~-3 ~1 ~-5 ~3 ~6 ~5 air []
fill ~-4 ~1 ~6 ~-5 ~10 ~6 mud_bricks []
setblock ~-4 ~11 ~6 torch []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-7 ~-5 ~8 ~7 mangrove_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-7 ~5 ~8 ~7 mangrove_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~-4 ~9 ~6 mangrove_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-6 ~4 ~9 ~6 mangrove_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-6 ~3 ~9 ~6 mangrove_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mud_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mud_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_mangrove_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_mangrove_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 mangrove_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-7 ~-2 ~-2 ~-7 ~3 ~-2 mangrove_roots []
fill ~7 ~-2 ~-2 ~7 ~3 ~-2 mangrove_roots []
fill ~-7 ~4 ~-2 ~7 ~4 ~-2 mud_brick_slab []
setblock ~0 ~5 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 11
replaceitem block ~3 ~1 ~5 slot.container 1 arrow 18
replaceitem block ~3 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~1 ~5 slot.container 3 spider_eye 10
replaceitem block ~3 ~1 ~5 slot.container 4 gunpowder 11
replaceitem block ~3 ~1 ~5 slot.container 5 prismarine_shard 10
replaceitem block ~3 ~1 ~5 slot.container 9 emerald 5
replaceitem block ~3 ~1 ~5 slot.container 10 lead 5
replaceitem block ~3 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~3 ~1 ~5 slot.container 12 boat 1
replaceitem block ~3 ~1 ~5 slot.container 13 lantern 10
replaceitem block ~3 ~1 ~5 slot.container 14 mangrove_log 16
loot insert ~3 ~1 ~5 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-4 ~0
