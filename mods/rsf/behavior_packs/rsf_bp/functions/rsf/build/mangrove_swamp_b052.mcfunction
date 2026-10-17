# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1716/4224 | 主题内编号: b052/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·重檐行商旅店客栈 (mangrove_swamp_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x17 | 地上高度 8格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~12 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~12 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~12 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~12 ~9 air [] replace log2
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 mud_bricks [] replace air
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 mud_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 mud_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 packed_mud []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 mangrove_planks []
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~5 slot.container 0 slime_ball 19
replaceitem block ~3 ~-2 ~5 slot.container 1 bone 16
replaceitem block ~3 ~-2 ~5 slot.container 2 arrow 23
replaceitem block ~3 ~-2 ~5 slot.container 3 rotten_flesh 10
replaceitem block ~3 ~-2 ~5 slot.container 4 spider_eye 7
replaceitem block ~3 ~-2 ~5 slot.container 5 gunpowder 8
replaceitem block ~3 ~-2 ~5 slot.container 9 cooked_salmon 12
replaceitem block ~3 ~-2 ~5 slot.container 10 iron_ingot 11
replaceitem block ~3 ~-2 ~5 slot.container 11 gold_ingot 10
replaceitem block ~3 ~-2 ~5 slot.container 12 emerald 3
replaceitem block ~3 ~-2 ~5 slot.container 13 lead 3
replaceitem block ~3 ~-2 ~5 slot.container 14 golden_apple 3
loot insert ~3 ~-2 ~5 loot "rsf/mangrove_swamp"
loot insert ~3 ~-2 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~4 ~7 mud_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-6 ~4 ~-8 ~6 ~4 ~8 mud_brick_slab []
fill ~-4 ~5 ~-6 ~4 ~8 ~6 mangrove_planks []
fill ~-3 ~5 ~-5 ~3 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~5 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-8 ~6 ~8 ~8 mud_brick_slab []
fill ~-4 ~9 ~-6 ~4 ~10 ~6 mangrove_planks []
fill ~-5 ~11 ~-7 ~5 ~11 ~7 mangrove_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 mangrove_planks []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 mangrove_log []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 mangrove_log []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 mud_brick_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~-2 ~0 ~-8 ~4 ~0 mangrove_roots []
fill ~8 ~-2 ~0 ~8 ~4 ~0 mangrove_roots []
fill ~-8 ~5 ~0 ~8 ~5 ~0 mud_brick_slab []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 spider_eye 10
replaceitem block ~-4 ~1 ~6 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~6 slot.container 2 prismarine_shard 10
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 slime_ball 14
replaceitem block ~-4 ~1 ~6 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~6 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~6 slot.container 10 lantern 6
replaceitem block ~-4 ~1 ~6 slot.container 11 mangrove_log 19
replaceitem block ~-4 ~1 ~6 slot.container 12 mud_bricks 20
replaceitem block ~-4 ~1 ~6 slot.container 13 cooked_salmon 13
replaceitem block ~-4 ~1 ~6 slot.container 14 iron_ingot 12
loot insert ~-4 ~1 ~6 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 prismarine_shard 5
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 slime_ball 17
replaceitem block ~4 ~1 ~6 slot.container 3 bone 14
replaceitem block ~4 ~1 ~6 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~6 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~6 slot.container 9 boat 1
replaceitem block ~4 ~1 ~6 slot.container 10 lantern 4
replaceitem block ~4 ~1 ~6 slot.container 11 mangrove_log 17
replaceitem block ~4 ~1 ~6 slot.container 12 mud_bricks 18
replaceitem block ~4 ~1 ~6 slot.container 13 cooked_salmon 11
replaceitem block ~4 ~1 ~6 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~6 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~6 loot "chests/simple_dungeon"
summon bogged ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
