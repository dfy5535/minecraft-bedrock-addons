# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1694/4224 | 主题内编号: b030/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双坡顶驻军卫戍塔 (mangrove_swamp_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 packed_mud [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 packed_mud [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 packed_mud []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 campfire []
setblock ~2 ~-4 ~-3 campfire []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 slime_ball 19
replaceitem block ~2 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~2 ~-2 ~3 slot.container 2 arrow 23
replaceitem block ~2 ~-2 ~3 slot.container 3 rotten_flesh 10
replaceitem block ~2 ~-2 ~3 slot.container 4 spider_eye 7
replaceitem block ~2 ~-2 ~3 slot.container 5 gunpowder 8
replaceitem block ~2 ~-2 ~3 slot.container 9 gold_ingot 6
replaceitem block ~2 ~-2 ~3 slot.container 10 emerald 6
replaceitem block ~2 ~-2 ~3 slot.container 11 lead 6
replaceitem block ~2 ~-2 ~3 slot.container 12 golden_apple 6
replaceitem block ~2 ~-2 ~3 slot.container 13 boat 1
replaceitem block ~2 ~-2 ~3 slot.container 14 lantern 4
loot insert ~2 ~-2 ~3 loot "rsf/mangrove_swamp"
loot insert ~2 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~10 ~5 packed_mud []
fill ~-4 ~1 ~0 ~4 ~9 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~-1 ~9 ~4 air []
fill ~-1 ~1 ~1 ~3 ~8 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~11 ~-6 ~-5 ~11 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~5 ~11 ~-6 ~5 ~11 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~12 ~-5 ~-4 ~12 ~5 mud_brick_stairs ["weirdo_direction"=0]
fill ~4 ~12 ~-5 ~4 ~12 ~5 mud_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~12 ~-5 ~3 ~12 ~5 mangrove_slab []
fill ~0 ~13 ~-6 ~0 ~13 ~6 mud_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~12 ~2 mossy_stone_bricks []
fill ~5 ~1 ~-1 ~6 ~11 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~13 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~-2 ~-2 ~-7 ~7 ~-2 mangrove_roots []
fill ~7 ~-2 ~-2 ~7 ~7 ~-2 mangrove_roots []
fill ~-7 ~8 ~-2 ~7 ~8 ~-2 mud_brick_slab []
setblock ~0 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 prismarine_shard 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 slime_ball 14
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_salmon 8
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 6
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 13 lead 6
replaceitem block ~-3 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 17
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 6
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_salmon 13
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 4
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 4
replaceitem block ~3 ~1 ~4 slot.container 13 lead 4
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon frog ~0 ~-2 ~0
