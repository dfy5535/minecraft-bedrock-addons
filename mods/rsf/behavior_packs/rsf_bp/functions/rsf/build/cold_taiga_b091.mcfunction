# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0859/4224 | 主题内编号: b091/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·跨水拱桥水神小祠 (cold_taiga_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log2
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 spruce_planks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 spruce_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 stone_bricks []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 leather 10
replaceitem block ~-4 ~-2 ~1 slot.container 1 rabbit_foot 5
replaceitem block ~-4 ~-2 ~1 slot.container 2 ender_pearl 6
replaceitem block ~-4 ~-2 ~1 slot.container 3 bone 17
replaceitem block ~-4 ~-2 ~1 slot.container 4 arrow 22
replaceitem block ~-4 ~-2 ~1 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~-2 ~1 slot.container 9 coal 22
replaceitem block ~-4 ~-2 ~1 slot.container 10 iron_ingot 6
replaceitem block ~-4 ~-2 ~1 slot.container 11 leather_boots 1
replaceitem block ~-4 ~-2 ~1 slot.container 12 golden_apple 3
replaceitem block ~-4 ~-2 ~1 slot.container 13 flint_and_steel 1
replaceitem block ~-4 ~-2 ~1 slot.container 14 campfire 6
loot insert ~-4 ~-2 ~1 loot "rsf/cold_taiga"
loot insert ~-4 ~-2 ~1 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~7 ~3 spruce_planks []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 spruce_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 stone_bricks []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 stone_brick_slab []
setblock ~0 ~11 ~0 snow []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~-6 ~0 ~4 ~-7 ~14 ~5 cobblestone []
setblock ~-6 ~1 ~4 campfire []
setblock ~-6 ~15 ~4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 11
replaceitem block ~5 ~1 ~1 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~1 slot.container 2 leather 13
replaceitem block ~5 ~1 ~1 slot.container 3 rabbit_foot 8
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 5 bone 12
replaceitem block ~5 ~1 ~1 slot.container 9 flint_and_steel 1
replaceitem block ~5 ~1 ~1 slot.container 10 campfire 8
replaceitem block ~5 ~1 ~1 slot.container 11 lantern 4
replaceitem block ~5 ~1 ~1 slot.container 12 cooked_mutton 9
replaceitem block ~5 ~1 ~1 slot.container 13 sweet_berries 14
replaceitem block ~5 ~1 ~1 slot.container 14 spruce_log 19
loot insert ~5 ~1 ~1 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 leather 8
replaceitem block ~-5 ~1 ~2 slot.container 1 rabbit_foot 3
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 9 flint_and_steel 1
replaceitem block ~-5 ~1 ~2 slot.container 10 campfire 6
replaceitem block ~-5 ~1 ~2 slot.container 11 lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 12 cooked_mutton 14
replaceitem block ~-5 ~1 ~2 slot.container 13 sweet_berries 12
replaceitem block ~-5 ~1 ~2 slot.container 14 spruce_log 17
loot insert ~-5 ~1 ~2 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~2 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
