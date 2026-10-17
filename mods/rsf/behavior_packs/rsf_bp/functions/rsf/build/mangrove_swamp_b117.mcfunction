# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1781/4224 | 主题内编号: b117/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·环柱生态标本采集馆 (mangrove_swamp_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mangrove_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mangrove_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 packed_mud []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 1 arrow 23
replaceitem block ~3 ~-3 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~3 ~-3 ~4 slot.container 3 spider_eye 7
replaceitem block ~3 ~-3 ~4 slot.container 4 gunpowder 8
replaceitem block ~3 ~-3 ~4 slot.container 5 prismarine_shard 7
replaceitem block ~3 ~-3 ~4 slot.container 9 golden_apple 7
replaceitem block ~3 ~-3 ~4 slot.container 10 boat 1
replaceitem block ~3 ~-3 ~4 slot.container 11 lantern 5
replaceitem block ~3 ~-3 ~4 slot.container 12 mangrove_log 18
replaceitem block ~3 ~-3 ~4 slot.container 13 mud_bricks 19
replaceitem block ~3 ~-3 ~4 slot.container 14 cooked_salmon 12
loot insert ~3 ~-3 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mud_bricks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 stripped_mangrove_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 stripped_mangrove_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 stripped_mangrove_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 stripped_mangrove_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 stripped_mangrove_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 stripped_mangrove_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 stripped_mangrove_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 stripped_mangrove_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 stripped_mangrove_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 stripped_mangrove_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 stripped_mangrove_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 stripped_mangrove_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 stripped_mangrove_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 stripped_mangrove_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 stripped_mangrove_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 stripped_mangrove_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 stripped_mangrove_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 stripped_mangrove_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 stripped_mangrove_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 stripped_mangrove_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 stripped_mangrove_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 stripped_mangrove_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mud_bricks []
fill ~-4 ~9 ~-5 ~4 ~10 ~5 glass []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 stripped_mangrove_log []
setblock ~-7 ~6 ~-8 torch []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 stripped_mangrove_log []
setblock ~-7 ~6 ~8 torch []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 stripped_mangrove_log []
setblock ~7 ~6 ~-8 torch []
fill ~7 ~0 ~8 ~7 ~5 ~8 stripped_mangrove_log []
setblock ~7 ~6 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-8 ~-2 ~-2 ~-8 ~4 ~-2 mangrove_roots []
fill ~8 ~-2 ~-2 ~8 ~4 ~-2 mangrove_roots []
fill ~-8 ~5 ~-2 ~8 ~5 ~-2 mud_brick_slab []
setblock ~0 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 1 prismarine_shard 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 slime_ball 14
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 12 lead 8
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 1
replaceitem block ~4 ~1 ~5 slot.container 14 boat 1
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-3 ~0
