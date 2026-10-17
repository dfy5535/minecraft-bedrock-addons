# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1721/4224 | 主题内编号: b057/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·中央石棺帝王地下陵寝 (mangrove_swamp_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mangrove_planks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mangrove_planks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 mangrove_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mossy_stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mangrove_planks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 packed_mud []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mud_bricks []
setblock ~0 ~-7 ~0 sea_lantern []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 10
replaceitem block ~0 ~-4 ~-5 slot.container 1 spider_eye 7
replaceitem block ~0 ~-4 ~-5 slot.container 2 gunpowder 8
replaceitem block ~0 ~-4 ~-5 slot.container 3 prismarine_shard 7
replaceitem block ~0 ~-4 ~-5 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 5 slime_ball 19
replaceitem block ~0 ~-4 ~-5 slot.container 9 lantern 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 mangrove_log 19
replaceitem block ~0 ~-4 ~-5 slot.container 11 mud_bricks 20
replaceitem block ~0 ~-4 ~-5 slot.container 12 cooked_salmon 13
replaceitem block ~0 ~-4 ~-5 slot.container 13 iron_ingot 12
replaceitem block ~0 ~-4 ~-5 slot.container 14 gold_ingot 4
loot insert ~0 ~-4 ~-5 loot "rsf/mangrove_swamp"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 mangrove_planks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mud_bricks []
fill ~0 ~1 ~-7 ~0 ~2 ~7 mud_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 mud_bricks []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 packed_mud []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 slime []
setblock ~0 ~10 ~0 torch []

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

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x10x3) ---
fill ~-8 ~-2 ~-2 ~-8 ~4 ~-2 mangrove_roots []
fill ~8 ~-2 ~-2 ~8 ~4 ~-2 mangrove_roots []
fill ~-8 ~5 ~-2 ~8 ~5 ~-2 mud_brick_slab []
setblock ~0 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 slime []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 bone 11
replaceitem block ~4 ~1 ~6 slot.container 1 arrow 18
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~6 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~6 slot.container 4 gunpowder 11
replaceitem block ~4 ~1 ~6 slot.container 5 prismarine_shard 10
replaceitem block ~4 ~1 ~6 slot.container 9 iron_ingot 12
replaceitem block ~4 ~1 ~6 slot.container 10 gold_ingot 4
replaceitem block ~4 ~1 ~6 slot.container 11 emerald 4
replaceitem block ~4 ~1 ~6 slot.container 12 lead 4
replaceitem block ~4 ~1 ~6 slot.container 13 golden_apple 4
replaceitem block ~4 ~1 ~6 slot.container 14 boat 1
loot insert ~4 ~1 ~6 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-4 ~0
