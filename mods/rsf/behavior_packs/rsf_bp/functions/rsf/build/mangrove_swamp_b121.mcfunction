# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1785/4224 | 主题内编号: b121/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·卫城廊柱王座大殿与地宫 (mangrove_swamp_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mangrove_planks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mangrove_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 mangrove_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mangrove_planks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 slime_ball 19
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 3 arrow 23
replaceitem block ~0 ~-4 ~5 slot.container 4 rotten_flesh 10
replaceitem block ~0 ~-4 ~5 slot.container 5 spider_eye 7
replaceitem block ~0 ~-4 ~5 slot.container 9 golden_apple 7
replaceitem block ~0 ~-4 ~5 slot.container 10 boat 1
replaceitem block ~0 ~-4 ~5 slot.container 11 lantern 5
replaceitem block ~0 ~-4 ~5 slot.container 12 mangrove_log 18
replaceitem block ~0 ~-4 ~5 slot.container 13 mud_bricks 19
replaceitem block ~0 ~-4 ~5 slot.container 14 cooked_salmon 12
loot insert ~0 ~-4 ~5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-4 ~-5 slot.container 1 slime_ball 17
replaceitem block ~0 ~-4 ~-5 slot.container 2 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 3 arrow 21
replaceitem block ~0 ~-4 ~-5 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 5 spider_eye 13
replaceitem block ~0 ~-4 ~-5 slot.container 9 golden_apple 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 boat 1
replaceitem block ~0 ~-4 ~-5 slot.container 11 lantern 4
replaceitem block ~0 ~-4 ~-5 slot.container 12 mangrove_log 17
replaceitem block ~0 ~-4 ~-5 slot.container 13 mud_bricks 18
replaceitem block ~0 ~-4 ~-5 slot.container 14 cooked_salmon 11
loot insert ~0 ~-4 ~-5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~9 ~7 mangrove_planks []
fill ~-5 ~1 ~0 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~9 ~-7 stripped_mangrove_log []
fill ~-4 ~1 ~-7 ~-4 ~9 ~-7 stripped_mangrove_log []
fill ~-2 ~1 ~-7 ~-2 ~9 ~-7 stripped_mangrove_log []
fill ~0 ~1 ~-7 ~0 ~9 ~-7 stripped_mangrove_log []
fill ~2 ~1 ~-7 ~2 ~9 ~-7 stripped_mangrove_log []
fill ~4 ~1 ~-7 ~4 ~9 ~-7 stripped_mangrove_log []
fill ~6 ~1 ~-7 ~6 ~9 ~-7 stripped_mangrove_log []
fill ~-6 ~9 ~-7 ~6 ~9 ~-1 mud_bricks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~10 ~-8 ~-7 ~10 ~8 mangrove_stairs ["weirdo_direction"=0]
fill ~7 ~10 ~-8 ~7 ~10 ~8 mangrove_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-7 ~-6 ~11 ~7 mangrove_stairs ["weirdo_direction"=0]
fill ~6 ~11 ~-7 ~6 ~11 ~7 mangrove_stairs ["weirdo_direction"=1]
fill ~-5 ~11 ~-7 ~5 ~11 ~7 mangrove_slab []
fill ~0 ~12 ~-8 ~0 ~12 ~8 mud_bricks []

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

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~-2 ~-1 ~-9 ~3 ~-1 mangrove_roots []
fill ~9 ~-2 ~-1 ~9 ~3 ~-1 mangrove_roots []
fill ~-9 ~4 ~-1 ~9 ~4 ~-1 mud_brick_slab []
setblock ~0 ~5 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 slime []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 18
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 10
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 11
replaceitem block ~5 ~1 ~6 slot.container 5 prismarine_shard 10
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 3
replaceitem block ~5 ~1 ~6 slot.container 10 lead 3
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 12 boat 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 8
replaceitem block ~5 ~1 ~6 slot.container 14 mangrove_log 21
loot insert ~5 ~1 ~6 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
