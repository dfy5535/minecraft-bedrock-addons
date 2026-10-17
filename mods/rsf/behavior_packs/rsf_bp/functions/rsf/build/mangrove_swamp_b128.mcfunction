# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1792/4224 | 主题内编号: b128/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·U型紫禁朝堂大殿与地底金库 (mangrove_swamp_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mud_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mud_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mud_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 packed_mud []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mud_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 spider_eye 7
replaceitem block ~4 ~-3 ~5 slot.container 1 gunpowder 8
replaceitem block ~4 ~-3 ~5 slot.container 2 prismarine_shard 7
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 slime_ball 19
replaceitem block ~4 ~-3 ~5 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~5 slot.container 9 cooked_salmon 14
replaceitem block ~4 ~-3 ~5 slot.container 10 iron_ingot 6
replaceitem block ~4 ~-3 ~5 slot.container 11 gold_ingot 5
replaceitem block ~4 ~-3 ~5 slot.container 12 emerald 5
replaceitem block ~4 ~-3 ~5 slot.container 13 lead 5
replaceitem block ~4 ~-3 ~5 slot.container 14 golden_apple 5
loot insert ~4 ~-3 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 mud_bricks []
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~9 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 mossy_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~9 ~-8 ~7 ~9 ~8 mud_brick_slab []
fill ~-5 ~10 ~-6 ~5 ~11 ~6 mangrove_planks []
fill ~-6 ~12 ~-7 ~6 ~12 ~7 mangrove_slab []
setblock ~0 ~13 ~0 chiseled_stone_bricks []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 mangrove_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-9 ~-2 ~-1 ~-9 ~5 ~-1 mangrove_roots []
fill ~9 ~-2 ~-1 ~9 ~5 ~-1 mangrove_roots []
fill ~-9 ~6 ~-1 ~9 ~6 ~-1 mud_brick_slab []
setblock ~0 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 slime_ball 14
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~6 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 9 lead 2
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~6 slot.container 11 boat 1
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 7
replaceitem block ~-5 ~1 ~6 slot.container 13 mangrove_log 20
replaceitem block ~-5 ~1 ~6 slot.container 14 mud_bricks 21
loot insert ~-5 ~1 ~6 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 13
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 6
replaceitem block ~5 ~1 ~6 slot.container 4 prismarine_shard 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 lead 7
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~6 slot.container 11 boat 1
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 5
replaceitem block ~5 ~1 ~6 slot.container 13 mangrove_log 18
replaceitem block ~5 ~1 ~6 slot.container 14 mud_bricks 19
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
