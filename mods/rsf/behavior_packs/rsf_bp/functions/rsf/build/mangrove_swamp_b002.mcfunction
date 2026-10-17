# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1666/4224 | 主题内编号: b002/128
# 地形主题 #14: 红树林沼泽与泥砖遗迹 (mangrove_swamp) —— 带红树气根拱桥与泥砖水闸暗室
# 建筑名称: 红树泥砖系·十字拱门祈愿圣殿 (mangrove_swamp_altar_cross_sanctuary)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 2格
# 适用群系: mangrove_swamp
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 packed_mud [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 packed_mud [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mangrove_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mangrove_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mangrove_planks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 mud_bricks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 packed_mud []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 packed_mud []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 mangrove_fence []
setblock ~5 ~2 ~0 mangrove_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 mud_bricks []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 mossy_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 sea_lantern []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 mangrove_log []
setblock ~0 ~4 ~-8 slime []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 mangrove_log []
setblock ~0 ~4 ~8 slime []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 mangrove_log []
setblock ~-7 ~4 ~0 slime []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 mangrove_log []
setblock ~7 ~4 ~0 slime []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mangrove_swamp 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~-2 ~-3 ~-8 ~4 ~-3 mangrove_roots []
fill ~8 ~-2 ~-3 ~8 ~4 ~-3 mangrove_roots []
fill ~-8 ~5 ~-3 ~8 ~5 ~-3 mud_brick_slab []
setblock ~0 ~6 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~5 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 5
replaceitem block ~-4 ~1 ~5 slot.container 11 mangrove_log 18
replaceitem block ~-4 ~1 ~5 slot.container 12 mud_bricks 19
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_salmon 12
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 11
loot insert ~-4 ~1 ~5 loot "rsf/mangrove_swamp"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 13
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 6
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 slime_ball 17
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 11 mangrove_log 16
replaceitem block ~4 ~1 ~5 slot.container 12 mud_bricks 17
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_salmon 10
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~4 ~1 ~5 loot "rsf/mangrove_swamp"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1
