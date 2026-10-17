# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1791/4224 | 主题内编号: b127/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·万神殿巨型穹顶与试炼宫 (mangrove_swamp_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mud_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 gold_block []
setblock ~-4 ~-6 ~-5 lantern []
setblock ~4 ~-6 ~5 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 slime_ball 19
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 3 arrow 23
replaceitem block ~0 ~-4 ~5 slot.container 4 rotten_flesh 10
replaceitem block ~0 ~-4 ~5 slot.container 5 spider_eye 7
replaceitem block ~0 ~-4 ~5 slot.container 9 emerald 6
replaceitem block ~0 ~-4 ~5 slot.container 10 lead 6
replaceitem block ~0 ~-4 ~5 slot.container 11 golden_apple 6
replaceitem block ~0 ~-4 ~5 slot.container 12 boat 1
replaceitem block ~0 ~-4 ~5 slot.container 13 lantern 4
replaceitem block ~0 ~-4 ~5 slot.container 14 mangrove_log 17
loot insert ~0 ~-4 ~5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mud_bricks []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 mangrove_log []
fill ~-6 ~1 ~7 ~-6 ~8 ~7 mangrove_log []
fill ~-4 ~1 ~-7 ~-4 ~8 ~-7 mangrove_log []
fill ~-4 ~1 ~7 ~-4 ~8 ~7 mangrove_log []
fill ~-2 ~1 ~-7 ~-2 ~8 ~-7 mangrove_log []
fill ~-2 ~1 ~7 ~-2 ~8 ~7 mangrove_log []
fill ~0 ~1 ~-7 ~0 ~8 ~-7 mangrove_log []
fill ~0 ~1 ~7 ~0 ~8 ~7 mangrove_log []
fill ~2 ~1 ~-7 ~2 ~8 ~-7 mangrove_log []
fill ~2 ~1 ~7 ~2 ~8 ~7 mangrove_log []
fill ~4 ~1 ~-7 ~4 ~8 ~-7 mangrove_log []
fill ~4 ~1 ~7 ~4 ~8 ~7 mangrove_log []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 mangrove_log []
fill ~6 ~1 ~7 ~6 ~8 ~7 mangrove_log []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 mangrove_log []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 mangrove_log []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 mangrove_log []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 mangrove_log []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 mangrove_log []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 mangrove_log []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 mangrove_log []
fill ~6 ~1 ~1 ~6 ~8 ~1 mangrove_log []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 mangrove_log []
fill ~6 ~1 ~3 ~6 ~8 ~3 mangrove_log []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 mangrove_log []
fill ~6 ~1 ~5 ~6 ~8 ~5 mangrove_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mud_bricks []
fill ~-5 ~10 ~-6 ~5 ~11 ~6 glass []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 air []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 mangrove_log []
setblock ~0 ~4 ~-9 chiseled_stone_bricks []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 mangrove_log []
setblock ~0 ~4 ~9 chiseled_stone_bricks []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 mangrove_log []
setblock ~-8 ~4 ~0 chiseled_stone_bricks []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 mangrove_log []
setblock ~8 ~4 ~0 chiseled_stone_bricks []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~-2 ~-2 ~-9 ~4 ~-2 mangrove_roots []
fill ~9 ~-2 ~-2 ~9 ~4 ~-2 mangrove_roots []
fill ~-9 ~5 ~-2 ~9 ~5 ~-2 mud_brick_slab []
setblock ~0 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 1 slime_ball 14
replaceitem block ~5 ~1 ~6 slot.container 2 bone 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 18
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 5 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 4
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 4
replaceitem block ~5 ~1 ~6 slot.container 12 lead 4
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 14 boat 1
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
