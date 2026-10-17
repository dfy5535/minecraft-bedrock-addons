# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1702/4224 | 主题内编号: b038/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·四方凯旋衣冠冢 (mangrove_swamp_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 packed_mud [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 packed_mud [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 mud_bricks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 slime_ball 19
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 arrow 23
replaceitem block ~-2 ~-4 ~3 slot.container 4 rotten_flesh 10
replaceitem block ~-2 ~-4 ~3 slot.container 5 spider_eye 7
replaceitem block ~-2 ~-4 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-2 ~-4 ~3 slot.container 10 gold_ingot 9
replaceitem block ~-2 ~-4 ~3 slot.container 11 emerald 9
replaceitem block ~-2 ~-4 ~3 slot.container 12 lead 2
replaceitem block ~-2 ~-4 ~3 slot.container 13 golden_apple 2
replaceitem block ~-2 ~-4 ~3 slot.container 14 boat 1
loot insert ~-2 ~-4 ~3 loot "rsf/mangrove_swamp"
loot insert ~-2 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~9 ~5 packed_mud []
fill ~-4 ~1 ~-2 ~4 ~9 ~2 packed_mud []
fill ~-1 ~1 ~-4 ~1 ~8 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~8 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 mangrove_fence []
setblock ~4 ~2 ~0 mangrove_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 mud_bricks []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 sea_lantern []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mud_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 mangrove_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 mangrove_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 mangrove_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~-2 ~1 ~-7 ~5 ~1 mangrove_roots []
fill ~7 ~-2 ~1 ~7 ~5 ~1 mangrove_roots []
fill ~-7 ~6 ~1 ~7 ~6 ~1 mud_brick_slab []
setblock ~0 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~8 ~0 lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 prismarine_shard 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 slime_ball 14
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 9 lead 3
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-3 ~1 ~4 slot.container 11 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 8
replaceitem block ~-3 ~1 ~4 slot.container 13 mangrove_log 21
replaceitem block ~-3 ~1 ~4 slot.container 14 mud_bricks 22
loot insert ~-3 ~1 ~4 loot "rsf/mangrove_swamp"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 slime_ball 17
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 13
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 6
replaceitem block ~3 ~1 ~4 slot.container 9 lead 8
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~3 ~1 ~4 slot.container 11 boat 1
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 6
replaceitem block ~3 ~1 ~4 slot.container 13 mangrove_log 19
replaceitem block ~3 ~1 ~4 slot.container 14 mud_bricks 20
loot insert ~3 ~1 ~4 loot "rsf/mangrove_swamp"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
