# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1674/4224 | 主题内编号: b010/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·十字交叉深层地牢 (mangrove_swamp_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 packed_mud [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 packed_mud [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mangrove_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 packed_mud []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 slime_ball 19
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 arrow 23
replaceitem block ~0 ~-4 ~5 slot.container 3 rotten_flesh 10
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 7
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 8
replaceitem block ~0 ~-4 ~5 slot.container 9 gold_ingot 4
replaceitem block ~0 ~-4 ~5 slot.container 10 emerald 4
replaceitem block ~0 ~-4 ~5 slot.container 11 lead 4
replaceitem block ~0 ~-4 ~5 slot.container 12 golden_apple 4
replaceitem block ~0 ~-4 ~5 slot.container 13 boat 1
replaceitem block ~0 ~-4 ~5 slot.container 14 lantern 9
loot insert ~0 ~-4 ~5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 slime_ball 17
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 arrow 21
replaceitem block ~0 ~-4 ~-5 slot.container 3 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 4 spider_eye 13
replaceitem block ~0 ~-4 ~-5 slot.container 5 gunpowder 6
replaceitem block ~0 ~-4 ~-5 slot.container 9 gold_ingot 10
replaceitem block ~0 ~-4 ~-5 slot.container 10 emerald 3
replaceitem block ~0 ~-4 ~-5 slot.container 11 lead 3
replaceitem block ~0 ~-4 ~-5 slot.container 12 golden_apple 3
replaceitem block ~0 ~-4 ~-5 slot.container 13 boat 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 lantern 8
loot insert ~0 ~-4 ~-5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~6 ~7 packed_mud []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 packed_mud []
fill ~-1 ~1 ~-6 ~1 ~5 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 mangrove_fence []
setblock ~6 ~2 ~0 mangrove_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 mangrove_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 mangrove_log []
setblock ~-8 ~6 ~-9 campfire []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 mangrove_log []
setblock ~-8 ~6 ~9 campfire []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 mangrove_log []
setblock ~8 ~6 ~-9 campfire []
fill ~8 ~0 ~9 ~8 ~5 ~9 mangrove_log []
setblock ~8 ~6 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~-2 ~0 ~-9 ~7 ~0 mangrove_roots []
fill ~9 ~-2 ~0 ~9 ~7 ~0 mangrove_roots []
fill ~-9 ~8 ~0 ~9 ~8 ~0 mud_brick_slab []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~6 slot.container 3 gunpowder 11
replaceitem block ~-5 ~1 ~6 slot.container 4 prismarine_shard 10
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 cooked_salmon 9
replaceitem block ~-5 ~1 ~6 slot.container 10 iron_ingot 8
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 7
replaceitem block ~-5 ~1 ~6 slot.container 12 emerald 7
replaceitem block ~-5 ~1 ~6 slot.container 13 lead 7
replaceitem block ~-5 ~1 ~6 slot.container 14 golden_apple 7
loot insert ~-5 ~1 ~6 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 13
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 6
replaceitem block ~5 ~1 ~6 slot.container 2 prismarine_shard 5
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 slime_ball 17
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_salmon 14
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 5
replaceitem block ~5 ~1 ~6 slot.container 12 emerald 5
replaceitem block ~5 ~1 ~6 slot.container 13 lead 5
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 5
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
