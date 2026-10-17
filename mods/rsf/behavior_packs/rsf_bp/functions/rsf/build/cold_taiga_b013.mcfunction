# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0781/4224 | 主题内编号: b013/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·地底熔炉苦工地牢 (cold_taiga_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 deepslate_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 arrow 22
replaceitem block ~4 ~-3 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-3 ~4 slot.container 2 string 8
replaceitem block ~4 ~-3 ~4 slot.container 3 gunpowder 7
replaceitem block ~4 ~-3 ~4 slot.container 4 leather 10
replaceitem block ~4 ~-3 ~4 slot.container 5 rabbit_foot 5
replaceitem block ~4 ~-3 ~4 slot.container 9 lantern 7
replaceitem block ~4 ~-3 ~4 slot.container 10 cooked_mutton 12
replaceitem block ~4 ~-3 ~4 slot.container 11 sweet_berries 17
replaceitem block ~4 ~-3 ~4 slot.container 12 spruce_log 22
replaceitem block ~4 ~-3 ~4 slot.container 13 coal 16
replaceitem block ~4 ~-3 ~4 slot.container 14 iron_ingot 7
loot insert ~4 ~-3 ~4 loot "rsf/cold_taiga"
loot insert ~4 ~-3 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~6 ~6 deepslate_bricks []
fill ~-5 ~1 ~-5 ~5 ~5 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 spruce_log []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 spruce_log []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 spruce_log []
fill ~6 ~1 ~6 ~6 ~6 ~6 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 spruce_planks []
fill ~-6 ~7 ~-6 ~6 ~7 ~6 spruce_fence []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 air []
setblock ~-6 ~7 ~-6 spruce_log []
setblock ~-6 ~8 ~-6 lantern []
setblock ~-6 ~7 ~6 spruce_log []
setblock ~-6 ~8 ~6 lantern []
setblock ~6 ~7 ~-6 spruce_log []
setblock ~6 ~8 ~-6 lantern []
setblock ~6 ~7 ~6 spruce_log []
setblock ~6 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 cobblestone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-6 ~0 ~7 ~-7 ~10 ~8 cobblestone []
setblock ~-6 ~1 ~7 campfire []
setblock ~-6 ~11 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~2 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 leather 13
replaceitem block ~5 ~1 ~4 slot.container 1 rabbit_foot 8
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 bone 12
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 9 coal 20
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~5 ~1 ~4 slot.container 11 leather_boots 1
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 1
replaceitem block ~5 ~1 ~4 slot.container 13 flint_and_steel 1
replaceitem block ~5 ~1 ~4 slot.container 14 campfire 4
loot insert ~5 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~5 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~5 slot.container 4 string 14
replaceitem block ~-5 ~1 ~5 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~5 slot.container 9 coal 18
replaceitem block ~-5 ~1 ~5 slot.container 10 iron_ingot 9
replaceitem block ~-5 ~1 ~5 slot.container 11 leather_boots 1
replaceitem block ~-5 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~5 slot.container 13 flint_and_steel 1
replaceitem block ~-5 ~1 ~5 slot.container 14 campfire 2
loot insert ~-5 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~5 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
