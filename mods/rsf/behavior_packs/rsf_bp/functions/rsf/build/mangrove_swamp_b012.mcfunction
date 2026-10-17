# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1676/4224 | 主题内编号: b012/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·双子暗门地底宝库 (mangrove_swamp_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mud_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mud_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 mangrove_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 slime_ball 19
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 16
replaceitem block ~4 ~-3 ~3 slot.container 2 arrow 23
replaceitem block ~4 ~-3 ~3 slot.container 3 rotten_flesh 10
replaceitem block ~4 ~-3 ~3 slot.container 4 spider_eye 7
replaceitem block ~4 ~-3 ~3 slot.container 5 gunpowder 8
replaceitem block ~4 ~-3 ~3 slot.container 9 cooked_salmon 14
replaceitem block ~4 ~-3 ~3 slot.container 10 iron_ingot 6
replaceitem block ~4 ~-3 ~3 slot.container 11 gold_ingot 5
replaceitem block ~4 ~-3 ~3 slot.container 12 emerald 5
replaceitem block ~4 ~-3 ~3 slot.container 13 lead 5
replaceitem block ~4 ~-3 ~3 slot.container 14 golden_apple 5
loot insert ~4 ~-3 ~3 loot "rsf/mangrove_swamp"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 mud_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 mud_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 mangrove_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 mud_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 mangrove_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 mangrove_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 mangrove_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 mangrove_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~-2 ~0 ~-9 ~4 ~0 mangrove_roots []
fill ~9 ~-2 ~0 ~9 ~4 ~0 mangrove_roots []
fill ~-9 ~5 ~0 ~9 ~5 ~0 mud_brick_slab []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~4 slot.container 2 prismarine_shard 10
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 14
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 10 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 11 mangrove_log 21
replaceitem block ~-5 ~1 ~4 slot.container 12 mud_bricks 22
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_salmon 8
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 7
loot insert ~-5 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 prismarine_shard 5
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 slime_ball 17
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 9 boat 1
replaceitem block ~5 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~5 ~1 ~4 slot.container 11 mangrove_log 19
replaceitem block ~5 ~1 ~4 slot.container 12 mud_bricks 20
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_salmon 13
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~5 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon frog ~0 ~-3 ~0
