# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1746/4224 | 主题内编号: b082/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·竖井井架矿工物资站 (mangrove_swamp_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 packed_mud [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 packed_mud [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 packed_mud []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-6 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-6 ~3 campfire []
setblock ~2 ~-6 ~-3 campfire []
setblock ~2 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-4 ~3 slot.container 0 spider_eye 7
replaceitem block ~2 ~-4 ~3 slot.container 1 gunpowder 8
replaceitem block ~2 ~-4 ~3 slot.container 2 prismarine_shard 7
replaceitem block ~2 ~-4 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-4 ~3 slot.container 4 slime_ball 19
replaceitem block ~2 ~-4 ~3 slot.container 5 bone 16
replaceitem block ~2 ~-4 ~3 slot.container 9 mangrove_log 21
replaceitem block ~2 ~-4 ~3 slot.container 10 mud_bricks 22
replaceitem block ~2 ~-4 ~3 slot.container 11 cooked_salmon 8
replaceitem block ~2 ~-4 ~3 slot.container 12 iron_ingot 7
replaceitem block ~2 ~-4 ~3 slot.container 13 gold_ingot 6
replaceitem block ~2 ~-4 ~3 slot.container 14 emerald 6
loot insert ~2 ~-4 ~3 loot "rsf/mangrove_swamp"
loot insert ~2 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 packed_mud []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 mangrove_slab []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 mossy_stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 mud_bricks []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 sea_lantern []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mangrove_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~-2 ~0 ~-7 ~4 ~0 mangrove_roots []
fill ~7 ~-2 ~0 ~7 ~4 ~0 mangrove_roots []
fill ~-7 ~5 ~0 ~7 ~5 ~0 mud_brick_slab []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~6 smoker []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 2 spider_eye 10
replaceitem block ~-3 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-3 ~1 ~4 slot.container 4 prismarine_shard 10
replaceitem block ~-3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 8
replaceitem block ~-3 ~1 ~4 slot.container 11 mangrove_log 21
replaceitem block ~-3 ~1 ~4 slot.container 12 mud_bricks 22
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_salmon 8
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 7
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 13
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 6
replaceitem block ~3 ~1 ~4 slot.container 2 prismarine_shard 5
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 4 slime_ball 17
replaceitem block ~3 ~1 ~4 slot.container 5 bone 14
replaceitem block ~3 ~1 ~4 slot.container 9 boat 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~3 ~1 ~4 slot.container 11 mangrove_log 19
replaceitem block ~3 ~1 ~4 slot.container 12 mud_bricks 20
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_salmon 13
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
