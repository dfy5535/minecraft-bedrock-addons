# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0795/4224 | 主题内编号: b027/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·双子连廊警戒塔楼 (cold_taiga_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x9 | 地上高度 9格 | 地下深度 2格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 spruce_planks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 spruce_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~10 ~3 spruce_planks []
fill ~2 ~1 ~-3 ~6 ~10 ~3 spruce_planks []
fill ~-5 ~1 ~-2 ~-3 ~9 ~2 air []
fill ~3 ~1 ~-2 ~5 ~9 ~2 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 stone_bricks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-3 ~6 ~9 ~3 stone_bricks []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 spruce_fence []
fill ~-5 ~10 ~-2 ~5 ~10 ~2 air []
setblock ~-6 ~10 ~-3 spruce_log []
setblock ~-6 ~11 ~-3 lantern []
setblock ~-6 ~10 ~3 spruce_log []
setblock ~-6 ~11 ~3 lantern []
setblock ~6 ~10 ~-3 spruce_log []
setblock ~6 ~11 ~-3 lantern []
setblock ~6 ~10 ~3 spruce_log []
setblock ~6 ~11 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x5x6) ---
fill ~-6 ~0 ~4 ~-7 ~17 ~5 cobblestone []
setblock ~-6 ~1 ~4 campfire []
setblock ~-6 ~18 ~4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 barrel []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 11
replaceitem block ~5 ~1 ~1 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~1 slot.container 2 leather 13
replaceitem block ~5 ~1 ~1 slot.container 3 rabbit_foot 8
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 5 bone 12
replaceitem block ~5 ~1 ~1 slot.container 9 leather_boots 1
replaceitem block ~5 ~1 ~1 slot.container 10 golden_apple 6
replaceitem block ~5 ~1 ~1 slot.container 11 flint_and_steel 1
replaceitem block ~5 ~1 ~1 slot.container 12 campfire 2
replaceitem block ~5 ~1 ~1 slot.container 13 lantern 5
replaceitem block ~5 ~1 ~1 slot.container 14 cooked_mutton 10
loot insert ~5 ~1 ~1 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 leather 8
replaceitem block ~-5 ~1 ~2 slot.container 1 rabbit_foot 3
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 9 leather_boots 1
replaceitem block ~-5 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~-5 ~1 ~2 slot.container 11 flint_and_steel 1
replaceitem block ~-5 ~1 ~2 slot.container 12 campfire 7
replaceitem block ~-5 ~1 ~2 slot.container 13 lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 14 cooked_mutton 8
loot insert ~-5 ~1 ~2 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~2 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
