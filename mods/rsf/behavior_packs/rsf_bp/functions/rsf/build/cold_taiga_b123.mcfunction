# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0891/4224 | 主题内编号: b123/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·四角塔楼领主城堡复合体 (cold_taiga_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 lantern []
setblock ~5 ~-5 ~-4 lantern []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 leather 10
replaceitem block ~5 ~-3 ~4 slot.container 1 rabbit_foot 5
replaceitem block ~5 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~5 ~-3 ~4 slot.container 3 bone 17
replaceitem block ~5 ~-3 ~4 slot.container 4 arrow 22
replaceitem block ~5 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~5 ~-3 ~4 slot.container 9 leather_boots 1
replaceitem block ~5 ~-3 ~4 slot.container 10 golden_apple 6
replaceitem block ~5 ~-3 ~4 slot.container 11 flint_and_steel 1
replaceitem block ~5 ~-3 ~4 slot.container 12 campfire 2
replaceitem block ~5 ~-3 ~4 slot.container 13 lantern 5
replaceitem block ~5 ~-3 ~4 slot.container 14 cooked_mutton 10
loot insert ~5 ~-3 ~4 loot "rsf/cold_taiga"
loot insert ~5 ~-3 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 spruce_planks []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~10 ~-5 stone_bricks []
setblock ~-7 ~11 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~10 ~6 stone_bricks []
setblock ~-7 ~11 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~10 ~-5 stone_bricks []
setblock ~6 ~11 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~10 ~6 stone_bricks []
setblock ~6 ~11 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 stone_bricks []
fill ~-7 ~9 ~-6 ~7 ~9 ~6 spruce_fence []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 air []
setblock ~-7 ~9 ~-6 spruce_log []
setblock ~-7 ~10 ~-6 lantern []
setblock ~-7 ~9 ~6 spruce_log []
setblock ~-7 ~10 ~6 lantern []
setblock ~7 ~9 ~-6 spruce_log []
setblock ~7 ~10 ~-6 lantern []
setblock ~7 ~9 ~6 spruce_log []
setblock ~7 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 spruce_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-7 ~0 ~7 ~-8 ~12 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~13 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~6 ~1 ~4 slot.container 2 leather 13
replaceitem block ~6 ~1 ~4 slot.container 3 rabbit_foot 8
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 12
replaceitem block ~6 ~1 ~4 slot.container 9 coal 18
replaceitem block ~6 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~6 ~1 ~4 slot.container 11 leather_boots 1
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~6 ~1 ~4 slot.container 13 flint_and_steel 1
replaceitem block ~6 ~1 ~4 slot.container 14 campfire 2
loot insert ~6 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 leather 8
replaceitem block ~-6 ~1 ~5 slot.container 1 rabbit_foot 3
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 coal 16
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_ingot 7
replaceitem block ~-6 ~1 ~5 slot.container 11 leather_boots 1
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 13 flint_and_steel 1
replaceitem block ~-6 ~1 ~5 slot.container 14 campfire 7
loot insert ~-6 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
