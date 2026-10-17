# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1787/4224 | 主题内编号: b123/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·四角塔楼领主城堡复合体 (mangrove_swamp_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mud_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 lantern []
setblock ~4 ~-6 ~-5 lantern []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 gunpowder 8
replaceitem block ~4 ~-4 ~5 slot.container 1 prismarine_shard 7
replaceitem block ~4 ~-4 ~5 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~5 slot.container 3 slime_ball 19
replaceitem block ~4 ~-4 ~5 slot.container 4 bone 16
replaceitem block ~4 ~-4 ~5 slot.container 5 arrow 23
replaceitem block ~4 ~-4 ~5 slot.container 9 iron_ingot 10
replaceitem block ~4 ~-4 ~5 slot.container 10 gold_ingot 9
replaceitem block ~4 ~-4 ~5 slot.container 11 emerald 9
replaceitem block ~4 ~-4 ~5 slot.container 12 lead 2
replaceitem block ~4 ~-4 ~5 slot.container 13 golden_apple 2
replaceitem block ~4 ~-4 ~5 slot.container 14 boat 1
loot insert ~4 ~-4 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 mossy_stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~11 ~-6 mud_bricks []
setblock ~-6 ~12 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~11 ~7 mud_bricks []
setblock ~-6 ~12 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~11 ~-6 mud_bricks []
setblock ~5 ~12 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~11 ~7 mud_bricks []
setblock ~5 ~12 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 mud_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 mud_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 mud_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 mangrove_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 mud_brick_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x10x4) ---
fill ~-9 ~-2 ~1 ~-9 ~5 ~1 mangrove_roots []
fill ~9 ~-2 ~1 ~9 ~5 ~1 mangrove_roots []
fill ~-9 ~6 ~1 ~9 ~6 ~1 mud_brick_slab []
setblock ~0 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 3 prismarine_shard 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 slime_ball 14
replaceitem block ~5 ~1 ~6 slot.container 9 mud_bricks 18
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_salmon 11
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 9
replaceitem block ~5 ~1 ~6 slot.container 14 lead 2
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-4 ~0
