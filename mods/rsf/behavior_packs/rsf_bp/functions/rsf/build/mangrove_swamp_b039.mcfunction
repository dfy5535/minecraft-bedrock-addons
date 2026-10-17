# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1703/4224 | 主题内编号: b039/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·永恒圣火图腾方尖塔 (mangrove_swamp_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mud_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mangrove_planks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 mossy_stone_bricks []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 rotten_flesh 10
replaceitem block ~1 ~-3 ~2 slot.container 1 spider_eye 7
replaceitem block ~1 ~-3 ~2 slot.container 2 gunpowder 8
replaceitem block ~1 ~-3 ~2 slot.container 3 prismarine_shard 7
replaceitem block ~1 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~1 ~-3 ~2 slot.container 5 slime_ball 19
replaceitem block ~1 ~-3 ~2 slot.container 9 emerald 4
replaceitem block ~1 ~-3 ~2 slot.container 10 lead 4
replaceitem block ~1 ~-3 ~2 slot.container 11 golden_apple 4
replaceitem block ~1 ~-3 ~2 slot.container 12 boat 1
replaceitem block ~1 ~-3 ~2 slot.container 13 lantern 9
replaceitem block ~1 ~-3 ~2 slot.container 14 mangrove_log 22
loot insert ~1 ~-3 ~2 loot "rsf/mangrove_swamp"
loot insert ~1 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 mangrove_log []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 mangrove_log []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 mangrove_log []
fill ~3 ~1 ~4 ~3 ~11 ~4 mangrove_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 mud_brick_wall []
setblock ~3 ~2 ~0 mud_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 mud_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 mossy_stone_bricks []
fill ~0 ~17 ~0 ~0 ~19 ~0 gold_block []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 mangrove_log []
setblock ~0 ~4 ~-6 chiseled_stone_bricks []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 mangrove_log []
setblock ~0 ~4 ~6 chiseled_stone_bricks []
setblock ~0 ~5 ~6 lantern []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 mangrove_log []
setblock ~-5 ~4 ~0 chiseled_stone_bricks []
setblock ~-5 ~5 ~0 lantern []
fill ~5 ~0 ~0 ~5 ~3 ~0 mangrove_log []
setblock ~5 ~4 ~0 chiseled_stone_bricks []
setblock ~5 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-6 ~-2 ~-1 ~-6 ~6 ~-1 mangrove_roots []
fill ~6 ~-2 ~-1 ~6 ~6 ~-1 mangrove_roots []
fill ~-6 ~7 ~-1 ~6 ~7 ~-1 mud_brick_slab []
setblock ~0 ~8 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 1 slime_ball 14
replaceitem block ~2 ~1 ~3 slot.container 2 bone 11
replaceitem block ~2 ~1 ~3 slot.container 3 arrow 18
replaceitem block ~2 ~1 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 5 spider_eye 10
replaceitem block ~2 ~1 ~3 slot.container 9 lantern 6
replaceitem block ~2 ~1 ~3 slot.container 10 mangrove_log 19
replaceitem block ~2 ~1 ~3 slot.container 11 mud_bricks 20
replaceitem block ~2 ~1 ~3 slot.container 12 cooked_salmon 13
replaceitem block ~2 ~1 ~3 slot.container 13 iron_ingot 12
replaceitem block ~2 ~1 ~3 slot.container 14 gold_ingot 4
loot insert ~2 ~1 ~3 loot "rsf/mangrove_swamp"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon slime ~1 ~1 ~1
summon witch ~0 ~-3 ~0
