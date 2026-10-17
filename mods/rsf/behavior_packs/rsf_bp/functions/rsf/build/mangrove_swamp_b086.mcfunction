# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1750/4224 | 主题内编号: b086/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·重装矿石金库碉堡 (mangrove_swamp_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 packed_mud [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 packed_mud [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mud_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mud_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gunpowder 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 prismarine_shard 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 slime_ball 19
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 arrow 23
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 5
replaceitem block ~0 ~-3 ~-4 slot.container 10 boat 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 12 mangrove_log 16
replaceitem block ~0 ~-3 ~-4 slot.container 13 mud_bricks 17
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_salmon 10
loot insert ~0 ~-3 ~-4 loot "rsf/mangrove_swamp"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 packed_mud []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~9 ~-5 mud_bricks []
setblock ~-5 ~10 ~-6 campfire []
fill ~-5 ~1 ~5 ~-4 ~9 ~6 mud_bricks []
setblock ~-5 ~10 ~5 campfire []
fill ~4 ~1 ~-6 ~5 ~9 ~-5 mud_bricks []
setblock ~4 ~10 ~-6 campfire []
fill ~4 ~1 ~5 ~5 ~9 ~6 mud_bricks []
setblock ~4 ~10 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 mud_bricks []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mangrove_fence []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 mangrove_log []
setblock ~-5 ~9 ~-6 campfire []
setblock ~-5 ~8 ~6 mangrove_log []
setblock ~-5 ~9 ~6 campfire []
setblock ~5 ~8 ~-6 mangrove_log []
setblock ~5 ~9 ~-6 campfire []
setblock ~5 ~8 ~6 mangrove_log []
setblock ~5 ~9 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 mangrove_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~-2 ~-3 ~-8 ~3 ~-3 mangrove_roots []
fill ~8 ~-2 ~-3 ~8 ~3 ~-3 mangrove_roots []
fill ~-8 ~4 ~-3 ~8 ~4 ~-3 mud_brick_slab []
setblock ~0 ~5 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 prismarine_shard 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 slime_ball 14
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 mangrove_log 16
replaceitem block ~-4 ~1 ~5 slot.container 10 mud_bricks 17
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_salmon 10
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 8
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 17
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 13
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 6
replaceitem block ~4 ~1 ~5 slot.container 9 mangrove_log 21
replaceitem block ~4 ~1 ~5 slot.container 10 mud_bricks 22
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_salmon 8
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 6
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
