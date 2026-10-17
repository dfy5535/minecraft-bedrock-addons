# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0821/4224 | 主题内编号: b053/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·测绘师观景制图站 (cold_taiga_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 spruce_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 spruce_planks []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 coal_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 spruce_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_brick_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~-5 ~0 ~5 ~-6 ~11 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~12 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 leather 13
replaceitem block ~4 ~1 ~2 slot.container 1 rabbit_foot 8
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 bone 12
replaceitem block ~4 ~1 ~2 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 9 coal 18
replaceitem block ~4 ~1 ~2 slot.container 10 iron_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 11 leather_boots 1
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~4 ~1 ~2 slot.container 14 campfire 2
loot insert ~4 ~1 ~2 loot "rsf/cold_taiga"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 4 string 14
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 9 coal 16
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_ingot 7
replaceitem block ~-4 ~1 ~3 slot.container 11 leather_boots 1
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~-4 ~1 ~3 slot.container 14 campfire 7
loot insert ~-4 ~1 ~3 loot "rsf/cold_taiga"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
