# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1671/4224 | 主题内编号: b007/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·八角星芒图腾祭坛 (mangrove_swamp_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mud_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mud_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 slime_ball 19
replaceitem block ~3 ~-3 ~0 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~0 slot.container 3 arrow 23
replaceitem block ~3 ~-3 ~0 slot.container 4 rotten_flesh 10
replaceitem block ~3 ~-3 ~0 slot.container 5 spider_eye 7
replaceitem block ~3 ~-3 ~0 slot.container 9 lantern 7
replaceitem block ~3 ~-3 ~0 slot.container 10 mangrove_log 20
replaceitem block ~3 ~-3 ~0 slot.container 11 mud_bricks 21
replaceitem block ~3 ~-3 ~0 slot.container 12 cooked_salmon 14
replaceitem block ~3 ~-3 ~0 slot.container 13 iron_ingot 6
replaceitem block ~3 ~-3 ~0 slot.container 14 gold_ingot 5
loot insert ~3 ~-3 ~0 loot "rsf/mangrove_swamp"
loot insert ~3 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~9 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~10 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~10 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~10 ~6 air []
fill ~5 ~1 ~6 ~5 ~10 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 mangrove_log []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 mangrove_log []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 mangrove_log []
fill ~4 ~1 ~5 ~4 ~9 ~5 mangrove_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mud_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 mossy_stone_bricks []
fill ~0 ~15 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~-2 ~2 ~-8 ~4 ~2 mangrove_roots []
fill ~8 ~-2 ~2 ~8 ~4 ~2 mangrove_roots []
fill ~-8 ~5 ~2 ~8 ~5 ~2 mud_brick_slab []
setblock ~0 ~6 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 slime_ball 14
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 3
replaceitem block ~4 ~1 ~5 slot.container 12 lead 3
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 14 boat 1
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
