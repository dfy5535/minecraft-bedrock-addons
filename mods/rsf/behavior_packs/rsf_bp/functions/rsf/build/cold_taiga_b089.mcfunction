# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0857/4224 | 主题内编号: b089/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·四柱挑檐祈愿凉亭 (cold_taiga_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace log2
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~7 ~3 deepslate_bricks []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 spruce_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 deepslate_brick_slab []
fill ~-3 ~8 ~-2 ~3 ~9 ~2 cobblestone []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 spruce_slab []
setblock ~0 ~11 ~0 coal_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 spruce_planks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 spruce_log []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 deepslate_brick_slab []
setblock ~0 ~3 ~-5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 6x4x3) ---
fill ~-4 ~0 ~4 ~-5 ~12 ~5 cobblestone []
setblock ~-4 ~1 ~4 campfire []
setblock ~-4 ~13 ~4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~1 slot.container 4 leather 13
replaceitem block ~3 ~1 ~1 slot.container 5 rabbit_foot 8
replaceitem block ~3 ~1 ~1 slot.container 9 sweet_berries 15
replaceitem block ~3 ~1 ~1 slot.container 10 spruce_log 20
replaceitem block ~3 ~1 ~1 slot.container 11 coal 21
replaceitem block ~3 ~1 ~1 slot.container 12 iron_ingot 12
replaceitem block ~3 ~1 ~1 slot.container 13 leather_boots 1
replaceitem block ~3 ~1 ~1 slot.container 14 golden_apple 2
loot insert ~3 ~1 ~1 loot "rsf/cold_taiga"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-3 ~1 ~2 slot.container 2 leather 8
replaceitem block ~-3 ~1 ~2 slot.container 3 rabbit_foot 3
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~2 slot.container 9 sweet_berries 13
replaceitem block ~-3 ~1 ~2 slot.container 10 spruce_log 18
replaceitem block ~-3 ~1 ~2 slot.container 11 coal 19
replaceitem block ~-3 ~1 ~2 slot.container 12 iron_ingot 10
replaceitem block ~-3 ~1 ~2 slot.container 13 leather_boots 1
replaceitem block ~-3 ~1 ~2 slot.container 14 golden_apple 7
loot insert ~-3 ~1 ~2 loot "rsf/cold_taiga"
loot insert ~-3 ~1 ~2 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
