# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1761/4224 | 主题内编号: b097/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·八角射击孔防御棱堡 (mangrove_swamp_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mangrove_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mangrove_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 packed_mud []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 gunpowder 8
replaceitem block ~3 ~-3 ~4 slot.container 1 prismarine_shard 7
replaceitem block ~3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 3 slime_ball 19
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 5 arrow 23
replaceitem block ~3 ~-3 ~4 slot.container 9 golden_apple 1
replaceitem block ~3 ~-3 ~4 slot.container 10 boat 1
replaceitem block ~3 ~-3 ~4 slot.container 11 lantern 6
replaceitem block ~3 ~-3 ~4 slot.container 12 mangrove_log 19
replaceitem block ~3 ~-3 ~4 slot.container 13 mud_bricks 20
replaceitem block ~3 ~-3 ~4 slot.container 14 cooked_salmon 13
loot insert ~3 ~-3 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 mangrove_planks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 air []
fill ~5 ~1 ~6 ~5 ~9 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 stripped_mangrove_log []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 stripped_mangrove_log []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 stripped_mangrove_log []
fill ~4 ~1 ~5 ~4 ~8 ~5 stripped_mangrove_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 mud_bricks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 mud_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 stripped_mangrove_log []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 stripped_mangrove_log []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 stripped_mangrove_log []
fill ~6 ~0 ~2 ~6 ~7 ~2 stripped_mangrove_log []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~-2 ~2 ~-8 ~4 ~2 mangrove_roots []
fill ~8 ~-2 ~2 ~8 ~4 ~2 mangrove_roots []
fill ~-8 ~5 ~2 ~8 ~5 ~2 mud_brick_slab []
setblock ~0 ~6 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 11
replaceitem block ~4 ~1 ~5 slot.container 5 prismarine_shard 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 12 lead 2
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 14 boat 1
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
