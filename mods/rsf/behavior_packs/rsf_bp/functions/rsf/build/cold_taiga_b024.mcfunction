# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0792/4224 | 主题内编号: b024/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·半地下掩体储藏室 (cold_taiga_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 5格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 gunpowder 7
replaceitem block ~3 ~-4 ~2 slot.container 1 leather 10
replaceitem block ~3 ~-4 ~2 slot.container 2 rabbit_foot 5
replaceitem block ~3 ~-4 ~2 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-4 ~2 slot.container 4 bone 17
replaceitem block ~3 ~-4 ~2 slot.container 5 arrow 22
replaceitem block ~3 ~-4 ~2 slot.container 9 spruce_log 16
replaceitem block ~3 ~-4 ~2 slot.container 10 coal 17
replaceitem block ~3 ~-4 ~2 slot.container 11 iron_ingot 8
replaceitem block ~3 ~-4 ~2 slot.container 12 leather_boots 1
replaceitem block ~3 ~-4 ~2 slot.container 13 golden_apple 5
replaceitem block ~3 ~-4 ~2 slot.container 14 flint_and_steel 1
loot insert ~3 ~-4 ~2 loot "rsf/cold_taiga"
loot insert ~3 ~-4 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 packed_ice []
fill ~0 ~1 ~-4 ~0 ~2 ~4 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-4 ~5 ~5 ~4 packed_ice []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 cobblestone_wall []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~-5 ~6 ~-4 stripped_spruce_log []
setblock ~-5 ~7 ~-4 campfire []
setblock ~-5 ~6 ~4 stripped_spruce_log []
setblock ~-5 ~7 ~4 campfire []
setblock ~5 ~6 ~-4 stripped_spruce_log []
setblock ~5 ~7 ~-4 campfire []
setblock ~5 ~6 ~4 stripped_spruce_log []
setblock ~5 ~7 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-5 ~0 ~5 ~-6 ~10 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~11 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~2 slot.container 1 arrow 17
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 10 flint_and_steel 1
replaceitem block ~-4 ~1 ~2 slot.container 11 campfire 5
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 8
replaceitem block ~-4 ~1 ~2 slot.container 13 cooked_mutton 13
replaceitem block ~-4 ~1 ~2 slot.container 14 sweet_berries 18
loot insert ~-4 ~1 ~2 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
