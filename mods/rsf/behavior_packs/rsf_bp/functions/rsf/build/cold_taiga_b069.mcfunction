# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0837/4224 | 主题内编号: b069/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·藤蔓侵蚀十字修道院 (cold_taiga_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 spruce_planks []
setblock ~0 ~-5 ~0 barrel []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 1 bone 17
replaceitem block ~0 ~-2 ~-3 slot.container 2 arrow 22
replaceitem block ~0 ~-2 ~-3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 string 8
replaceitem block ~0 ~-2 ~-3 slot.container 5 gunpowder 7
replaceitem block ~0 ~-2 ~-3 slot.container 9 flint_and_steel 1
replaceitem block ~0 ~-2 ~-3 slot.container 10 campfire 3
replaceitem block ~0 ~-2 ~-3 slot.container 11 lantern 6
replaceitem block ~0 ~-2 ~-3 slot.container 12 cooked_mutton 11
replaceitem block ~0 ~-2 ~-3 slot.container 13 sweet_berries 16
replaceitem block ~0 ~-2 ~-3 slot.container 14 spruce_log 21
loot insert ~0 ~-2 ~-3 loot "rsf/cold_taiga"
loot insert ~0 ~-2 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 deepslate_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 deepslate_bricks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 deepslate_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-6 ~0 ~6 ~-7 ~11 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~12 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 leather 13
replaceitem block ~5 ~1 ~3 slot.container 1 rabbit_foot 8
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 bone 12
replaceitem block ~5 ~1 ~3 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 sweet_berries 16
replaceitem block ~5 ~1 ~3 slot.container 10 spruce_log 21
replaceitem block ~5 ~1 ~3 slot.container 11 coal 22
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 6
replaceitem block ~5 ~1 ~3 slot.container 13 leather_boots 1
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~3 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 9 sweet_berries 14
replaceitem block ~-5 ~1 ~4 slot.container 10 spruce_log 19
replaceitem block ~-5 ~1 ~4 slot.container 11 coal 20
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 13 leather_boots 1
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 1
loot insert ~-5 ~1 ~4 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
