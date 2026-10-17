# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0887/4224 | 主题内编号: b119/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·半地下恒温洞穴苗圃 (cold_taiga_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 spruce_planks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 spruce_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 stone_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~3 slot.container 0 arrow 22
replaceitem block ~-3 ~-3 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-3 ~-3 ~3 slot.container 2 string 8
replaceitem block ~-3 ~-3 ~3 slot.container 3 gunpowder 7
replaceitem block ~-3 ~-3 ~3 slot.container 4 leather 10
replaceitem block ~-3 ~-3 ~3 slot.container 5 rabbit_foot 5
replaceitem block ~-3 ~-3 ~3 slot.container 9 flint_and_steel 1
replaceitem block ~-3 ~-3 ~3 slot.container 10 campfire 2
replaceitem block ~-3 ~-3 ~3 slot.container 11 lantern 5
replaceitem block ~-3 ~-3 ~3 slot.container 12 cooked_mutton 10
replaceitem block ~-3 ~-3 ~3 slot.container 13 sweet_berries 15
replaceitem block ~-3 ~-3 ~3 slot.container 14 spruce_log 20
loot insert ~-3 ~-3 ~3 loot "rsf/cold_taiga"
loot insert ~-3 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 spruce_planks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 stone_bricks []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 spruce_fence []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-5 ~0 ~6 ~-6 ~10 ~7 cobblestone []
setblock ~-5 ~1 ~6 campfire []
setblock ~-5 ~11 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 bone 12
replaceitem block ~4 ~1 ~3 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 4 string 11
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 9 sweet_berries 17
replaceitem block ~4 ~1 ~3 slot.container 10 spruce_log 22
replaceitem block ~4 ~1 ~3 slot.container 11 coal 16
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 7
replaceitem block ~4 ~1 ~3 slot.container 13 leather_boots 1
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 4
loot insert ~4 ~1 ~3 loot "rsf/cold_taiga"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~4 slot.container 4 leather 8
replaceitem block ~-4 ~1 ~4 slot.container 5 rabbit_foot 3
replaceitem block ~-4 ~1 ~4 slot.container 9 sweet_berries 15
replaceitem block ~-4 ~1 ~4 slot.container 10 spruce_log 20
replaceitem block ~-4 ~1 ~4 slot.container 11 coal 21
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-4 ~1 ~4 slot.container 13 leather_boots 1
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~-4 ~1 ~4 loot "rsf/cold_taiga"
loot insert ~-4 ~1 ~4 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
