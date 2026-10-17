# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1667/4224 | 主题内编号: b003/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·环柱巨石方尖祭坛 (mangrove_swamp_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mud_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
setblock ~0 ~0 ~0 gold_block []

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

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 mud_bricks []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 mangrove_log []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 mangrove_log []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 mangrove_log []
fill ~-3 ~1 ~6 ~-3 ~9 ~6 mangrove_log []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 mangrove_log []
fill ~-1 ~1 ~6 ~-1 ~9 ~6 mangrove_log []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 mangrove_log []
fill ~1 ~1 ~6 ~1 ~9 ~6 mangrove_log []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 mangrove_log []
fill ~3 ~1 ~6 ~3 ~9 ~6 mangrove_log []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 mangrove_log []
fill ~5 ~1 ~6 ~5 ~9 ~6 mangrove_log []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 mangrove_log []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 mangrove_log []
fill ~-5 ~1 ~-2 ~-5 ~9 ~-2 mangrove_log []
fill ~5 ~1 ~-2 ~5 ~9 ~-2 mangrove_log []
fill ~-5 ~1 ~0 ~-5 ~9 ~0 mangrove_log []
fill ~5 ~1 ~0 ~5 ~9 ~0 mangrove_log []
fill ~-5 ~1 ~2 ~-5 ~9 ~2 mangrove_log []
fill ~5 ~1 ~2 ~5 ~9 ~2 mangrove_log []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 mangrove_log []
fill ~5 ~1 ~4 ~5 ~9 ~4 mangrove_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mud_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mossy_stone_bricks []
fill ~0 ~16 ~0 ~0 ~18 ~0 gold_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 mangrove_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 mangrove_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 mangrove_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 mangrove_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-8 ~-2 ~-2 ~-8 ~5 ~-2 mangrove_roots []
fill ~8 ~-2 ~-2 ~8 ~5 ~-2 mangrove_roots []
fill ~-8 ~6 ~-2 ~8 ~6 ~-2 mud_brick_slab []
setblock ~0 ~7 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_shard 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 14
replaceitem block ~4 ~1 ~5 slot.container 9 mud_bricks 17
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_salmon 10
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 12 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 14 lead 8
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-3 ~0
