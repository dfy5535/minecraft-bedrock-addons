# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0863/4224 | 主题内编号: b095/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·双子灯笼守卫神龛 (cold_taiga_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 spruce_planks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 spruce_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~8 ~3 spruce_planks []
fill ~2 ~1 ~-3 ~6 ~8 ~3 spruce_planks []
fill ~-5 ~1 ~-2 ~-3 ~7 ~2 air []
fill ~3 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 spruce_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 stone_bricks []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 stone_brick_slab []
setblock ~0 ~11 ~0 snow []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~4 ~-5 spruce_log []
setblock ~-8 ~5 ~-5 lantern []
fill ~-8 ~0 ~5 ~-8 ~4 ~5 spruce_log []
setblock ~-8 ~5 ~5 lantern []
fill ~8 ~0 ~-5 ~8 ~4 ~-5 spruce_log []
setblock ~8 ~5 ~-5 lantern []
fill ~8 ~0 ~5 ~8 ~4 ~5 spruce_log []
setblock ~8 ~5 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x4x4) ---
fill ~-6 ~0 ~4 ~-7 ~13 ~5 cobblestone []
setblock ~-6 ~1 ~4 campfire []
setblock ~-6 ~14 ~4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 1 bone 12
replaceitem block ~5 ~1 ~1 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~1 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~1 slot.container 4 string 11
replaceitem block ~5 ~1 ~1 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~1 slot.container 9 lantern 6
replaceitem block ~5 ~1 ~1 slot.container 10 cooked_mutton 11
replaceitem block ~5 ~1 ~1 slot.container 11 sweet_berries 16
replaceitem block ~5 ~1 ~1 slot.container 12 spruce_log 21
replaceitem block ~5 ~1 ~1 slot.container 13 coal 22
replaceitem block ~5 ~1 ~1 slot.container 14 iron_ingot 6
loot insert ~5 ~1 ~1 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 2 string 14
replaceitem block ~-5 ~1 ~2 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~2 slot.container 4 leather 8
replaceitem block ~-5 ~1 ~2 slot.container 5 rabbit_foot 3
replaceitem block ~-5 ~1 ~2 slot.container 9 lantern 4
replaceitem block ~-5 ~1 ~2 slot.container 10 cooked_mutton 9
replaceitem block ~-5 ~1 ~2 slot.container 11 sweet_berries 14
replaceitem block ~-5 ~1 ~2 slot.container 12 spruce_log 19
replaceitem block ~-5 ~1 ~2 slot.container 13 coal 20
replaceitem block ~-5 ~1 ~2 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~2 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~2 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
