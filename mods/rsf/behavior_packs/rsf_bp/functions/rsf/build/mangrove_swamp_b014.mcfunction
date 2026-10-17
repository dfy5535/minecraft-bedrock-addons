# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1678/4224 | 主题内编号: b014/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·暗渠蓄水池秘境地牢 (mangrove_swamp_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 packed_mud [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 packed_mud [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mud_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 slime_ball 19
replaceitem block ~-3 ~-4 ~4 slot.container 1 bone 16
replaceitem block ~-3 ~-4 ~4 slot.container 2 arrow 23
replaceitem block ~-3 ~-4 ~4 slot.container 3 rotten_flesh 10
replaceitem block ~-3 ~-4 ~4 slot.container 4 spider_eye 7
replaceitem block ~-3 ~-4 ~4 slot.container 5 gunpowder 8
replaceitem block ~-3 ~-4 ~4 slot.container 9 mangrove_log 22
replaceitem block ~-3 ~-4 ~4 slot.container 10 mud_bricks 16
replaceitem block ~-3 ~-4 ~4 slot.container 11 cooked_salmon 9
replaceitem block ~-3 ~-4 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-3 ~-4 ~4 slot.container 13 gold_ingot 7
replaceitem block ~-3 ~-4 ~4 slot.container 14 emerald 7
loot insert ~-3 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~-3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 packed_mud []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mangrove_planks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mangrove_slab []
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

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~-2 ~-3 ~-8 ~6 ~-3 mangrove_roots []
fill ~8 ~-2 ~-3 ~8 ~6 ~-3 mangrove_roots []
fill ~-8 ~7 ~-3 ~8 ~7 ~-3 mud_brick_slab []
setblock ~0 ~8 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~5 composter []
setblock ~2 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 prismarine_shard 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 slime_ball 14
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 9
replaceitem block ~-4 ~1 ~5 slot.container 11 lead 2
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 13 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 7
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 17
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 6
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 7
replaceitem block ~4 ~1 ~5 slot.container 11 lead 7
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 13 boat 1
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 5
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
