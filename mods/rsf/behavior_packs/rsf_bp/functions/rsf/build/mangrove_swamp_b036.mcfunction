# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1700/4224 | 主题内编号: b036/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·下沉碑林地宫方尖碑 (mangrove_swamp_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mud_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mud_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mud_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_mud []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mud_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-5 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-5 ~3 lantern []
setblock ~2 ~-5 ~-3 lantern []
setblock ~2 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-3 ~3 slot.container 0 prismarine_shard 7
replaceitem block ~2 ~-3 ~3 slot.container 1 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 2 slime_ball 19
replaceitem block ~2 ~-3 ~3 slot.container 3 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 4 arrow 23
replaceitem block ~2 ~-3 ~3 slot.container 5 rotten_flesh 10
replaceitem block ~2 ~-3 ~3 slot.container 9 cooked_salmon 9
replaceitem block ~2 ~-3 ~3 slot.container 10 iron_ingot 8
replaceitem block ~2 ~-3 ~3 slot.container 11 gold_ingot 7
replaceitem block ~2 ~-3 ~3 slot.container 12 emerald 7
replaceitem block ~2 ~-3 ~3 slot.container 13 lead 7
replaceitem block ~2 ~-3 ~3 slot.container 14 golden_apple 7
loot insert ~2 ~-3 ~3 loot "rsf/mangrove_swamp"
loot insert ~2 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mud_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 mangrove_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mangrove_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mangrove_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mud_bricks []
fill ~0 ~16 ~0 ~0 ~18 ~0 chiseled_stone_bricks []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mangrove_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~-2 ~-1 ~-7 ~3 ~-1 mangrove_roots []
fill ~7 ~-2 ~-1 ~7 ~3 ~-1 mangrove_roots []
fill ~-7 ~4 ~-1 ~7 ~4 ~-1 mud_brick_slab []
setblock ~0 ~5 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 smoker []
setblock ~-2 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 2 prismarine_shard 10
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 mangrove_log 22
replaceitem block ~-3 ~1 ~4 slot.container 10 mud_bricks 16
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_salmon 9
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 13 gold_ingot 7
replaceitem block ~-3 ~1 ~4 slot.container 14 emerald 7
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_shard 5
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 slime_ball 17
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 9 mangrove_log 20
replaceitem block ~3 ~1 ~4 slot.container 10 mud_bricks 21
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_salmon 14
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 5
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 5
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon frog ~0 ~-3 ~0
