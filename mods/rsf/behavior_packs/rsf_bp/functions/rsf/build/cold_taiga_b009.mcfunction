# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0777/4224 | 主题内编号: b009/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·铁栏双室地下死牢 (cold_taiga_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 8
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 7
replaceitem block ~4 ~-3 ~3 slot.container 2 leather 10
replaceitem block ~4 ~-3 ~3 slot.container 3 rabbit_foot 5
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 17
replaceitem block ~4 ~-3 ~3 slot.container 9 coal 18
replaceitem block ~4 ~-3 ~3 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-3 ~3 slot.container 11 leather_boots 1
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~4 ~-3 ~3 slot.container 14 campfire 2
loot insert ~4 ~-3 ~3 loot "rsf/cold_taiga"
loot insert ~4 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 spruce_planks []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 spruce_fence []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 spruce_log []
setblock ~-6 ~7 ~-5 lantern []
setblock ~-6 ~6 ~5 spruce_log []
setblock ~-6 ~7 ~5 lantern []
setblock ~6 ~6 ~-5 spruce_log []
setblock ~6 ~7 ~-5 lantern []
setblock ~6 ~6 ~5 spruce_log []
setblock ~6 ~7 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-6 ~0 ~6 ~-7 ~10 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~11 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 2 string 11
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~3 slot.container 4 leather 13
replaceitem block ~5 ~1 ~3 slot.container 5 rabbit_foot 8
replaceitem block ~5 ~1 ~3 slot.container 9 sweet_berries 12
replaceitem block ~5 ~1 ~3 slot.container 10 spruce_log 17
replaceitem block ~5 ~1 ~3 slot.container 11 coal 18
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 13 leather_boots 1
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~3 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 2 leather 8
replaceitem block ~-5 ~1 ~4 slot.container 3 rabbit_foot 3
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 9 sweet_berries 17
replaceitem block ~-5 ~1 ~4 slot.container 10 spruce_log 22
replaceitem block ~-5 ~1 ~4 slot.container 11 coal 16
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 13 leather_boots 1
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-5 ~1 ~4 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
