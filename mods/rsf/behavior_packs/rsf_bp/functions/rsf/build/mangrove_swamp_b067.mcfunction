# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1731/4224 | 主题内编号: b067/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·半掩埋下沉庭院遗迹 (mangrove_swamp_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mud_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mud_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 gunpowder 8
replaceitem block ~-3 ~-4 ~4 slot.container 1 prismarine_shard 7
replaceitem block ~-3 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-4 ~4 slot.container 3 slime_ball 19
replaceitem block ~-3 ~-4 ~4 slot.container 4 bone 16
replaceitem block ~-3 ~-4 ~4 slot.container 5 arrow 23
replaceitem block ~-3 ~-4 ~4 slot.container 9 lantern 7
replaceitem block ~-3 ~-4 ~4 slot.container 10 mangrove_log 20
replaceitem block ~-3 ~-4 ~4 slot.container 11 mud_bricks 21
replaceitem block ~-3 ~-4 ~4 slot.container 12 cooked_salmon 14
replaceitem block ~-3 ~-4 ~4 slot.container 13 iron_ingot 6
replaceitem block ~-3 ~-4 ~4 slot.container 14 gold_ingot 5
loot insert ~-3 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~-3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 packed_mud []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mud_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

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

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_shard 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 14
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 7
replaceitem block ~4 ~1 ~5 slot.container 12 lead 7
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 14 boat 1
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
