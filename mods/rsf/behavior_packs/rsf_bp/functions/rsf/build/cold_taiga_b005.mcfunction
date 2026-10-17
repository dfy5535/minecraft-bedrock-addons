# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0773/4224 | 主题内编号: b005/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·下沉圣泉秘宝祭坛 (cold_taiga_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 spruce_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 arrow 22
replaceitem block ~-3 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 gunpowder 7
replaceitem block ~-3 ~-3 ~2 slot.container 9 leather_boots 1
replaceitem block ~-3 ~-3 ~2 slot.container 10 golden_apple 6
replaceitem block ~-3 ~-3 ~2 slot.container 11 flint_and_steel 1
replaceitem block ~-3 ~-3 ~2 slot.container 12 campfire 2
replaceitem block ~-3 ~-3 ~2 slot.container 13 lantern 5
replaceitem block ~-3 ~-3 ~2 slot.container 14 cooked_mutton 10
loot insert ~-3 ~-3 ~2 loot "rsf/cold_taiga"
loot insert ~-3 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-4 ~-5 ~7 ~-4 spruce_log []
setblock ~-5 ~8 ~-4 lantern []
fill ~-5 ~5 ~4 ~-5 ~7 ~4 spruce_log []
setblock ~-5 ~8 ~4 lantern []
fill ~5 ~5 ~-4 ~5 ~7 ~-4 spruce_log []
setblock ~5 ~8 ~-4 lantern []
fill ~5 ~5 ~4 ~5 ~7 ~4 spruce_log []
setblock ~5 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~-5 ~0 ~5 ~-6 ~11 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~12 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~3 blast_furnace []
setblock ~-3 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 leather 13
replaceitem block ~4 ~1 ~2 slot.container 1 rabbit_foot 8
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 bone 12
replaceitem block ~4 ~1 ~2 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 7
replaceitem block ~4 ~1 ~2 slot.container 10 cooked_mutton 12
replaceitem block ~4 ~1 ~2 slot.container 11 sweet_berries 17
replaceitem block ~4 ~1 ~2 slot.container 12 spruce_log 22
replaceitem block ~4 ~1 ~2 slot.container 13 coal 16
replaceitem block ~4 ~1 ~2 slot.container 14 iron_ingot 7
loot insert ~4 ~1 ~2 loot "rsf/cold_taiga"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 4 string 14
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 5
replaceitem block ~-4 ~1 ~3 slot.container 10 cooked_mutton 10
replaceitem block ~-4 ~1 ~3 slot.container 11 sweet_berries 15
replaceitem block ~-4 ~1 ~3 slot.container 12 spruce_log 20
replaceitem block ~-4 ~1 ~3 slot.container 13 coal 21
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~-4 ~1 ~3 loot "rsf/cold_taiga"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
