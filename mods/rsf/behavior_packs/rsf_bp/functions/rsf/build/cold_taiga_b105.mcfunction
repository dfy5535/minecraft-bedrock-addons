# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0873/4224 | 主题内编号: b105/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·满书架奥术附魔书院 (cold_taiga_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 cobblestone []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 leather 10
replaceitem block ~3 ~-2 ~3 slot.container 1 rabbit_foot 5
replaceitem block ~3 ~-2 ~3 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-2 ~3 slot.container 3 bone 17
replaceitem block ~3 ~-2 ~3 slot.container 4 arrow 22
replaceitem block ~3 ~-2 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-2 ~3 slot.container 9 coal 17
replaceitem block ~3 ~-2 ~3 slot.container 10 iron_ingot 8
replaceitem block ~3 ~-2 ~3 slot.container 11 leather_boots 1
replaceitem block ~3 ~-2 ~3 slot.container 12 golden_apple 5
replaceitem block ~3 ~-2 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~3 ~-2 ~3 slot.container 14 campfire 8
loot insert ~3 ~-2 ~3 loot "rsf/cold_taiga"
loot insert ~3 ~-2 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 deepslate_bricks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~7 ~-5 spruce_log []
fill ~-5 ~1 ~5 ~-5 ~7 ~5 spruce_log []
fill ~5 ~1 ~-5 ~5 ~7 ~-5 spruce_log []
fill ~5 ~1 ~5 ~5 ~7 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 deepslate_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-5 ~0 ~6 ~-6 ~13 ~7 cobblestone []
setblock ~-5 ~1 ~6 campfire []
setblock ~-5 ~14 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 11
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 4 leather 13
replaceitem block ~4 ~1 ~3 slot.container 5 rabbit_foot 8
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 9
replaceitem block ~4 ~1 ~3 slot.container 10 cooked_mutton 14
replaceitem block ~4 ~1 ~3 slot.container 11 sweet_berries 12
replaceitem block ~4 ~1 ~3 slot.container 12 spruce_log 17
replaceitem block ~4 ~1 ~3 slot.container 13 coal 18
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 9
loot insert ~4 ~1 ~3 loot "rsf/cold_taiga"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 14
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~4 slot.container 2 leather 8
replaceitem block ~-4 ~1 ~4 slot.container 3 rabbit_foot 3
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~4 slot.container 9 lantern 7
replaceitem block ~-4 ~1 ~4 slot.container 10 cooked_mutton 12
replaceitem block ~-4 ~1 ~4 slot.container 11 sweet_berries 17
replaceitem block ~-4 ~1 ~4 slot.container 12 spruce_log 22
replaceitem block ~-4 ~1 ~4 slot.container 13 coal 16
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 7
loot insert ~-4 ~1 ~4 loot "rsf/cold_taiga"
loot insert ~-4 ~1 ~4 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
