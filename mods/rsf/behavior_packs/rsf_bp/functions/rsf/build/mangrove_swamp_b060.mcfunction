# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1724/4224 | 主题内编号: b060/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·圆形穹顶万骨祠堂 (mangrove_swamp_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mud_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mud_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mud_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_mud []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mud_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 arrow 23
replaceitem block ~0 ~-3 ~4 slot.container 1 rotten_flesh 10
replaceitem block ~0 ~-3 ~4 slot.container 2 spider_eye 7
replaceitem block ~0 ~-3 ~4 slot.container 3 gunpowder 8
replaceitem block ~0 ~-3 ~4 slot.container 4 prismarine_shard 7
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 gold_ingot 5
replaceitem block ~0 ~-3 ~4 slot.container 10 emerald 5
replaceitem block ~0 ~-3 ~4 slot.container 11 lead 5
replaceitem block ~0 ~-3 ~4 slot.container 12 golden_apple 5
replaceitem block ~0 ~-3 ~4 slot.container 13 boat 1
replaceitem block ~0 ~-3 ~4 slot.container 14 lantern 10
loot insert ~0 ~-3 ~4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 arrow 21
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-3 ~-4 slot.container 2 spider_eye 13
replaceitem block ~0 ~-3 ~-4 slot.container 3 gunpowder 6
replaceitem block ~0 ~-3 ~-4 slot.container 4 prismarine_shard 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 gold_ingot 4
replaceitem block ~0 ~-3 ~-4 slot.container 10 emerald 4
replaceitem block ~0 ~-3 ~-4 slot.container 11 lead 4
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 13 boat 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 lantern 9
loot insert ~0 ~-3 ~-4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mangrove_planks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 mangrove_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 mangrove_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 mangrove_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 mangrove_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 mangrove_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 mangrove_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 mangrove_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 mangrove_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 mangrove_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 mangrove_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 mangrove_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 mangrove_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 mangrove_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 mangrove_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 mangrove_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 mangrove_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 mangrove_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 mangrove_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 mangrove_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 mangrove_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 mangrove_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 mangrove_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mangrove_planks []
fill ~-4 ~9 ~-5 ~4 ~10 ~5 glass []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 mangrove_log []
setblock ~0 ~4 ~-8 slime []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 mangrove_log []
setblock ~0 ~4 ~8 slime []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 mangrove_log []
setblock ~-7 ~4 ~0 slime []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 mangrove_log []
setblock ~7 ~4 ~0 slime []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-8 ~-2 ~1 ~-8 ~7 ~1 mangrove_roots []
fill ~8 ~-2 ~1 ~8 ~7 ~1 mangrove_roots []
fill ~-8 ~8 ~1 ~8 ~8 ~1 mud_brick_slab []
setblock ~0 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 2 prismarine_shard 10
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 slime_ball 14
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 cooked_salmon 10
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 8
replaceitem block ~-4 ~1 ~5 slot.container 13 lead 8
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 1
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 prismarine_shard 5
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 slime_ball 17
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_salmon 8
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 13 lead 6
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon frog ~0 ~-3 ~0
