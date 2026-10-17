# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1726/4224 | 主题内编号: b062/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·下沉阶梯深渊藏骨堂 (mangrove_swamp_crypt_sunken_ossuary)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smoker]
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

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 packed_mud []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 campfire []
setblock ~3 ~-6 ~-4 campfire []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 slime_ball 19
replaceitem block ~3 ~-4 ~4 slot.container 1 bone 16
replaceitem block ~3 ~-4 ~4 slot.container 2 arrow 23
replaceitem block ~3 ~-4 ~4 slot.container 3 rotten_flesh 10
replaceitem block ~3 ~-4 ~4 slot.container 4 spider_eye 7
replaceitem block ~3 ~-4 ~4 slot.container 5 gunpowder 8
replaceitem block ~3 ~-4 ~4 slot.container 9 mangrove_log 22
replaceitem block ~3 ~-4 ~4 slot.container 10 mud_bricks 16
replaceitem block ~3 ~-4 ~4 slot.container 11 cooked_salmon 9
replaceitem block ~3 ~-4 ~4 slot.container 12 iron_ingot 8
replaceitem block ~3 ~-4 ~4 slot.container 13 gold_ingot 7
replaceitem block ~3 ~-4 ~4 slot.container 14 emerald 7
loot insert ~3 ~-4 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 packed_mud []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mud_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mud_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mangrove_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 mangrove_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~-2 ~-3 ~-8 ~4 ~-3 mangrove_roots []
fill ~8 ~-2 ~-3 ~8 ~4 ~-3 mangrove_roots []
fill ~-8 ~5 ~-3 ~8 ~5 ~-3 mud_brick_slab []
setblock ~0 ~6 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 prismarine_shard 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 slime_ball 14
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 9
replaceitem block ~-4 ~1 ~5 slot.container 11 mangrove_log 22
replaceitem block ~-4 ~1 ~5 slot.container 12 mud_bricks 16
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_salmon 9
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 17
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 6
replaceitem block ~4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 11 mangrove_log 20
replaceitem block ~4 ~1 ~5 slot.container 12 mud_bricks 21
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_salmon 14
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 6
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
