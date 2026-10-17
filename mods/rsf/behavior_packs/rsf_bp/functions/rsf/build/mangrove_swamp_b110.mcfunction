# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1774/4224 | 主题内编号: b110/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双子附魔与酿造实验楼 (mangrove_swamp_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 packed_mud [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 packed_mud [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mangrove_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mangrove_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 arrow 23
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~-2 ~3 slot.container 2 spider_eye 7
replaceitem block ~4 ~-2 ~3 slot.container 3 gunpowder 8
replaceitem block ~4 ~-2 ~3 slot.container 4 prismarine_shard 7
replaceitem block ~4 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 9 lead 8
replaceitem block ~4 ~-2 ~3 slot.container 10 golden_apple 1
replaceitem block ~4 ~-2 ~3 slot.container 11 boat 1
replaceitem block ~4 ~-2 ~3 slot.container 12 lantern 6
replaceitem block ~4 ~-2 ~3 slot.container 13 mangrove_log 19
replaceitem block ~4 ~-2 ~3 slot.container 14 mud_bricks 20
loot insert ~4 ~-2 ~3 loot "rsf/mangrove_swamp"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 packed_mud []
fill ~2 ~1 ~-5 ~6 ~9 ~5 packed_mud []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mud_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 mangrove_slab []
fill ~-5 ~9 ~-4 ~5 ~10 ~4 mossy_stone_bricks []
fill ~-6 ~11 ~-5 ~6 ~11 ~5 mud_brick_slab []
setblock ~0 ~12 ~0 sea_lantern []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 packed_mud []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~-2 ~-2 ~-9 ~7 ~-2 mangrove_roots []
fill ~9 ~-2 ~-2 ~9 ~7 ~-2 mangrove_roots []
fill ~-9 ~8 ~-2 ~9 ~8 ~-2 mud_brick_slab []
setblock ~0 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 sea_lantern []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 prismarine_shard 10
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_salmon 11
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 12 emerald 9
replaceitem block ~-5 ~1 ~4 slot.container 13 lead 2
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~-5 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 slime_ball 17
replaceitem block ~5 ~1 ~4 slot.container 1 bone 14
replaceitem block ~5 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 13
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 6
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_salmon 9
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 11 gold_ingot 7
replaceitem block ~5 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~5 ~1 ~4 slot.container 13 lead 7
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
