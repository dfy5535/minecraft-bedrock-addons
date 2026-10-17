# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1772/4224 | 主题内编号: b108/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·十字四相元素秘法殿 (mangrove_swamp_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mud_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mud_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mud_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_mud []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 mangrove_planks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 spider_eye 7
replaceitem block ~3 ~-2 ~0 slot.container 1 gunpowder 8
replaceitem block ~3 ~-2 ~0 slot.container 2 prismarine_shard 7
replaceitem block ~3 ~-2 ~0 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 4 slime_ball 19
replaceitem block ~3 ~-2 ~0 slot.container 5 bone 16
replaceitem block ~3 ~-2 ~0 slot.container 9 cooked_salmon 14
replaceitem block ~3 ~-2 ~0 slot.container 10 iron_ingot 6
replaceitem block ~3 ~-2 ~0 slot.container 11 gold_ingot 5
replaceitem block ~3 ~-2 ~0 slot.container 12 emerald 5
replaceitem block ~3 ~-2 ~0 slot.container 13 lead 5
replaceitem block ~3 ~-2 ~0 slot.container 14 golden_apple 5
loot insert ~3 ~-2 ~0 loot "rsf/mangrove_swamp"
loot insert ~3 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 mud_bricks []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 mud_bricks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 mangrove_fence []
setblock ~5 ~2 ~0 mangrove_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 mangrove_planks []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 mangrove_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_stone_bricks []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 packed_mud []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-8 ~-2 ~1 ~-8 ~5 ~1 mangrove_roots []
fill ~8 ~-2 ~1 ~8 ~5 ~1 mangrove_roots []
fill ~-8 ~6 ~1 ~8 ~6 ~1 mud_brick_slab []
setblock ~0 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 1 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 2 prismarine_shard 10
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 slime_ball 14
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 lead 3
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 3
replaceitem block ~-4 ~1 ~5 slot.container 11 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 13 mangrove_log 21
replaceitem block ~-4 ~1 ~5 slot.container 14 mud_bricks 22
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 prismarine_shard 5
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 slime_ball 17
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 lead 8
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 1
replaceitem block ~4 ~1 ~5 slot.container 11 boat 1
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 13 mangrove_log 19
replaceitem block ~4 ~1 ~5 slot.container 14 mud_bricks 20
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon frog ~0 ~-2 ~0
