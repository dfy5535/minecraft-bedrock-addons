# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1741/4224 | 主题内编号: b077/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双子鸟居图腾神道 (mangrove_swamp_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mangrove_planks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mangrove_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mangrove_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 mangrove_planks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 bone 16
replaceitem block ~3 ~-4 ~5 slot.container 1 arrow 23
replaceitem block ~3 ~-4 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~3 ~-4 ~5 slot.container 3 spider_eye 7
replaceitem block ~3 ~-4 ~5 slot.container 4 gunpowder 8
replaceitem block ~3 ~-4 ~5 slot.container 5 prismarine_shard 7
replaceitem block ~3 ~-4 ~5 slot.container 9 golden_apple 4
replaceitem block ~3 ~-4 ~5 slot.container 10 boat 1
replaceitem block ~3 ~-4 ~5 slot.container 11 lantern 9
replaceitem block ~3 ~-4 ~5 slot.container 12 mangrove_log 22
replaceitem block ~3 ~-4 ~5 slot.container 13 mud_bricks 16
replaceitem block ~3 ~-4 ~5 slot.container 14 cooked_salmon 9
loot insert ~3 ~-4 ~5 loot "rsf/mangrove_swamp"
loot insert ~3 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 mangrove_planks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 mangrove_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 packed_mud []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 mangrove_slab []
setblock ~0 ~12 ~0 slime []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mud_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~-2 ~0 ~-8 ~4 ~0 mangrove_roots []
fill ~8 ~-2 ~0 ~8 ~4 ~0 mangrove_roots []
fill ~-8 ~5 ~0 ~8 ~5 ~0 mud_brick_slab []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~4 slot.container 1 prismarine_shard 10
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 3 slime_ball 14
replaceitem block ~4 ~1 ~4 slot.container 4 bone 11
replaceitem block ~4 ~1 ~4 slot.container 5 arrow 18
replaceitem block ~4 ~1 ~4 slot.container 9 iron_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 10 gold_ingot 10
replaceitem block ~4 ~1 ~4 slot.container 11 emerald 3
replaceitem block ~4 ~1 ~4 slot.container 12 lead 3
replaceitem block ~4 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~4 ~1 ~4 slot.container 14 boat 1
loot insert ~4 ~1 ~4 loot "rsf/mangrove_swamp"
summon slime ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
