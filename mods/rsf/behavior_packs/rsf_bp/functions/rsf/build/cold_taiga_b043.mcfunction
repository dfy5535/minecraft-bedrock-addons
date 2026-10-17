# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0811/4224 | 主题内编号: b043/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·十字四门试炼擂台 (cold_taiga_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-2 ~-6 ~7 ~-1 ~6 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 spruce_planks []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 spruce_planks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 spruce_fence []
setblock ~7 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 stone_bricks []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 spruce_fence []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 spruce_log []
setblock ~-7 ~8 ~-6 lantern []
setblock ~-7 ~7 ~6 spruce_log []
setblock ~-7 ~8 ~6 lantern []
setblock ~7 ~7 ~-6 spruce_log []
setblock ~7 ~8 ~-6 lantern []
setblock ~7 ~7 ~6 spruce_log []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 stone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~-7 ~0 ~7 ~-8 ~10 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~6 ~1 ~4 slot.container 2 leather 13
replaceitem block ~6 ~1 ~4 slot.container 3 rabbit_foot 8
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 12
replaceitem block ~6 ~1 ~4 slot.container 9 coal 22
replaceitem block ~6 ~1 ~4 slot.container 10 iron_ingot 6
replaceitem block ~6 ~1 ~4 slot.container 11 leather_boots 1
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~6 ~1 ~4 slot.container 13 flint_and_steel 1
replaceitem block ~6 ~1 ~4 slot.container 14 campfire 6
loot insert ~6 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 leather 8
replaceitem block ~-6 ~1 ~5 slot.container 1 rabbit_foot 3
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 coal 20
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~-6 ~1 ~5 slot.container 11 leather_boots 1
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 1
replaceitem block ~-6 ~1 ~5 slot.container 13 flint_and_steel 1
replaceitem block ~-6 ~1 ~5 slot.container 14 campfire 4
loot insert ~-6 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
