# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1683/4224 | 主题内编号: b019/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·琉璃穹顶圣物秘室 (mangrove_swamp_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 mud_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 rotten_flesh 10
replaceitem block ~2 ~-3 ~0 slot.container 1 spider_eye 7
replaceitem block ~2 ~-3 ~0 slot.container 2 gunpowder 8
replaceitem block ~2 ~-3 ~0 slot.container 3 prismarine_shard 7
replaceitem block ~2 ~-3 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-3 ~0 slot.container 5 slime_ball 19
replaceitem block ~2 ~-3 ~0 slot.container 9 emerald 4
replaceitem block ~2 ~-3 ~0 slot.container 10 lead 4
replaceitem block ~2 ~-3 ~0 slot.container 11 golden_apple 4
replaceitem block ~2 ~-3 ~0 slot.container 12 boat 1
replaceitem block ~2 ~-3 ~0 slot.container 13 lantern 9
replaceitem block ~2 ~-3 ~0 slot.container 14 mangrove_log 22
loot insert ~2 ~-3 ~0 loot "rsf/mangrove_swamp"
loot insert ~2 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 mangrove_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 mangrove_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 mangrove_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 mangrove_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 mud_bricks []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 mangrove_log []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 mangrove_log []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 mangrove_log []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 mangrove_log []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~-2 ~2 ~-7 ~6 ~2 mangrove_roots []
fill ~7 ~-2 ~2 ~7 ~6 ~2 mangrove_roots []
fill ~-7 ~7 ~2 ~7 ~7 ~2 mud_brick_slab []
setblock ~0 ~8 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 1 spider_eye 10
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 11
replaceitem block ~3 ~1 ~4 slot.container 3 prismarine_shard 10
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 slime_ball 14
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 10 mangrove_log 20
replaceitem block ~3 ~1 ~4 slot.container 11 mud_bricks 21
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_salmon 14
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 5
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
