# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0815/4224 | 主题内编号: b047/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·深渊跨桥决斗长台 (cold_taiga_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 spruce_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 spruce_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cobblestone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 stone_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 arrow 22
replaceitem block ~-5 ~-3 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~-3 ~2 slot.container 2 string 8
replaceitem block ~-5 ~-3 ~2 slot.container 3 gunpowder 7
replaceitem block ~-5 ~-3 ~2 slot.container 4 leather 10
replaceitem block ~-5 ~-3 ~2 slot.container 5 rabbit_foot 5
replaceitem block ~-5 ~-3 ~2 slot.container 9 sweet_berries 16
replaceitem block ~-5 ~-3 ~2 slot.container 10 spruce_log 21
replaceitem block ~-5 ~-3 ~2 slot.container 11 coal 22
replaceitem block ~-5 ~-3 ~2 slot.container 12 iron_ingot 6
replaceitem block ~-5 ~-3 ~2 slot.container 13 leather_boots 1
replaceitem block ~-5 ~-3 ~2 slot.container 14 golden_apple 3
loot insert ~-5 ~-3 ~2 loot "rsf/cold_taiga"
loot insert ~-5 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~6 ~4 spruce_planks []
fill ~-6 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-4 ~-7 ~8 ~-4 spruce_log []
setblock ~-7 ~9 ~-4 lantern []
fill ~-7 ~6 ~4 ~-7 ~8 ~4 spruce_log []
setblock ~-7 ~9 ~4 lantern []
fill ~7 ~6 ~-4 ~7 ~8 ~-4 spruce_log []
setblock ~7 ~9 ~-4 lantern []
fill ~7 ~6 ~4 ~7 ~8 ~4 spruce_log []
setblock ~7 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~4 ~-6 spruce_log []
setblock ~-9 ~5 ~-6 lantern []
fill ~-9 ~0 ~6 ~-9 ~4 ~6 spruce_log []
setblock ~-9 ~5 ~6 lantern []
fill ~9 ~0 ~-6 ~9 ~4 ~-6 spruce_log []
setblock ~9 ~5 ~-6 lantern []
fill ~9 ~0 ~6 ~9 ~4 ~6 spruce_log []
setblock ~9 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x5x6) ---
fill ~-7 ~0 ~5 ~-8 ~14 ~6 cobblestone []
setblock ~-7 ~1 ~5 campfire []
setblock ~-7 ~15 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~6 ~1 ~2 slot.container 1 bone 12
replaceitem block ~6 ~1 ~2 slot.container 2 arrow 17
replaceitem block ~6 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~2 slot.container 4 string 11
replaceitem block ~6 ~1 ~2 slot.container 5 gunpowder 10
replaceitem block ~6 ~1 ~2 slot.container 9 leather_boots 1
replaceitem block ~6 ~1 ~2 slot.container 10 golden_apple 5
replaceitem block ~6 ~1 ~2 slot.container 11 flint_and_steel 1
replaceitem block ~6 ~1 ~2 slot.container 12 campfire 8
replaceitem block ~6 ~1 ~2 slot.container 13 lantern 4
replaceitem block ~6 ~1 ~2 slot.container 14 cooked_mutton 9
loot insert ~6 ~1 ~2 loot "rsf/cold_taiga"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-6 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~3 slot.container 2 string 14
replaceitem block ~-6 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-6 ~1 ~3 slot.container 4 leather 8
replaceitem block ~-6 ~1 ~3 slot.container 5 rabbit_foot 3
replaceitem block ~-6 ~1 ~3 slot.container 9 leather_boots 1
replaceitem block ~-6 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~-6 ~1 ~3 slot.container 11 flint_and_steel 1
replaceitem block ~-6 ~1 ~3 slot.container 12 campfire 6
replaceitem block ~-6 ~1 ~3 slot.container 13 lantern 9
replaceitem block ~-6 ~1 ~3 slot.container 14 cooked_mutton 14
loot insert ~-6 ~1 ~3 loot "rsf/cold_taiga"
loot insert ~-6 ~1 ~3 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
