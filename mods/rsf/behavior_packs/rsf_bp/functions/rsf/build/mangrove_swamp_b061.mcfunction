# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1725/4224 | 主题内编号: b061/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双子封土古墓地宫 (mangrove_swamp_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mangrove_planks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mangrove_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mangrove_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 packed_mud []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mud_bricks []
setblock ~0 ~-7 ~0 sea_lantern []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 slime_ball 19
replaceitem block ~0 ~-4 ~-3 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~-3 slot.container 3 arrow 23
replaceitem block ~0 ~-4 ~-3 slot.container 4 rotten_flesh 10
replaceitem block ~0 ~-4 ~-3 slot.container 5 spider_eye 7
replaceitem block ~0 ~-4 ~-3 slot.container 9 mud_bricks 22
replaceitem block ~0 ~-4 ~-3 slot.container 10 cooked_salmon 8
replaceitem block ~0 ~-4 ~-3 slot.container 11 iron_ingot 7
replaceitem block ~0 ~-4 ~-3 slot.container 12 gold_ingot 6
replaceitem block ~0 ~-4 ~-3 slot.container 13 emerald 6
replaceitem block ~0 ~-4 ~-3 slot.container 14 lead 6
loot insert ~0 ~-4 ~-3 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 mangrove_planks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 mangrove_planks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 mud_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mud_bricks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 packed_mud []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 slime []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mud_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~-9 ~-2 ~-1 ~-9 ~3 ~-1 mangrove_roots []
fill ~9 ~-2 ~-1 ~9 ~3 ~-1 mangrove_roots []
fill ~-9 ~4 ~-1 ~9 ~4 ~-1 mud_brick_slab []
setblock ~0 ~5 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~4 slot.container 1 prismarine_shard 10
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 slime_ball 14
replaceitem block ~5 ~1 ~4 slot.container 4 bone 11
replaceitem block ~5 ~1 ~4 slot.container 5 arrow 18
replaceitem block ~5 ~1 ~4 slot.container 9 emerald 6
replaceitem block ~5 ~1 ~4 slot.container 10 lead 6
replaceitem block ~5 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~5 ~1 ~4 slot.container 12 boat 1
replaceitem block ~5 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~5 ~1 ~4 slot.container 14 mangrove_log 17
loot insert ~5 ~1 ~4 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
