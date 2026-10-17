# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0807/4224 | 主题内编号: b039/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·永恒圣火图腾方尖塔 (cold_taiga_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 spruce_planks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 spruce_planks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 spruce_planks []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 string 8
replaceitem block ~2 ~-2 ~1 slot.container 1 gunpowder 7
replaceitem block ~2 ~-2 ~1 slot.container 2 leather 10
replaceitem block ~2 ~-2 ~1 slot.container 3 rabbit_foot 5
replaceitem block ~2 ~-2 ~1 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-2 ~1 slot.container 5 bone 17
replaceitem block ~2 ~-2 ~1 slot.container 9 flint_and_steel 1
replaceitem block ~2 ~-2 ~1 slot.container 10 campfire 4
replaceitem block ~2 ~-2 ~1 slot.container 11 lantern 7
replaceitem block ~2 ~-2 ~1 slot.container 12 cooked_mutton 12
replaceitem block ~2 ~-2 ~1 slot.container 13 sweet_berries 17
replaceitem block ~2 ~-2 ~1 slot.container 14 spruce_log 22
loot insert ~2 ~-2 ~1 loot "rsf/cold_taiga"
loot insert ~2 ~-2 ~1 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 spruce_planks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 spruce_log []
fill ~4 ~1 ~3 ~4 ~10 ~3 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 spruce_planks []
fill ~0 ~16 ~0 ~0 ~19 ~0 snow []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 spruce_log []
setblock ~0 ~4 ~-5 chiseled_stone_bricks []
setblock ~0 ~5 ~-5 lantern []
fill ~0 ~0 ~5 ~0 ~3 ~5 spruce_log []
setblock ~0 ~4 ~5 chiseled_stone_bricks []
setblock ~0 ~5 ~5 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 spruce_log []
setblock ~-6 ~4 ~0 chiseled_stone_bricks []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 spruce_log []
setblock ~6 ~4 ~0 chiseled_stone_bricks []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 6x5x3) ---
fill ~-4 ~0 ~4 ~-5 ~15 ~5 cobblestone []
setblock ~-4 ~1 ~4 campfire []
setblock ~-4 ~16 ~4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~2 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~1 slot.container 1 bone 12
replaceitem block ~3 ~1 ~1 slot.container 2 arrow 17
replaceitem block ~3 ~1 ~1 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 4 string 11
replaceitem block ~3 ~1 ~1 slot.container 5 gunpowder 10
replaceitem block ~3 ~1 ~1 slot.container 9 sweet_berries 14
replaceitem block ~3 ~1 ~1 slot.container 10 spruce_log 19
replaceitem block ~3 ~1 ~1 slot.container 11 coal 20
replaceitem block ~3 ~1 ~1 slot.container 12 iron_ingot 11
replaceitem block ~3 ~1 ~1 slot.container 13 leather_boots 1
replaceitem block ~3 ~1 ~1 slot.container 14 golden_apple 1
loot insert ~3 ~1 ~1 loot "rsf/cold_taiga"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-3 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 2 string 14
replaceitem block ~-3 ~1 ~2 slot.container 3 gunpowder 13
replaceitem block ~-3 ~1 ~2 slot.container 4 leather 8
replaceitem block ~-3 ~1 ~2 slot.container 5 rabbit_foot 3
replaceitem block ~-3 ~1 ~2 slot.container 9 sweet_berries 12
replaceitem block ~-3 ~1 ~2 slot.container 10 spruce_log 17
replaceitem block ~-3 ~1 ~2 slot.container 11 coal 18
replaceitem block ~-3 ~1 ~2 slot.container 12 iron_ingot 9
replaceitem block ~-3 ~1 ~2 slot.container 13 leather_boots 1
replaceitem block ~-3 ~1 ~2 slot.container 14 golden_apple 6
loot insert ~-3 ~1 ~2 loot "rsf/cold_taiga"
loot insert ~-3 ~1 ~2 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
