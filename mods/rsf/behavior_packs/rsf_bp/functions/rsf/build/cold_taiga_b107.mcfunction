# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0875/4224 | 主题内编号: b107/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·观星高塔与秘术地宫 (cold_taiga_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 snow []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 string 8
replaceitem block ~3 ~-3 ~0 slot.container 1 gunpowder 7
replaceitem block ~3 ~-3 ~0 slot.container 2 leather 10
replaceitem block ~3 ~-3 ~0 slot.container 3 rabbit_foot 5
replaceitem block ~3 ~-3 ~0 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 5 bone 17
replaceitem block ~3 ~-3 ~0 slot.container 9 sweet_berries 17
replaceitem block ~3 ~-3 ~0 slot.container 10 spruce_log 22
replaceitem block ~3 ~-3 ~0 slot.container 11 coal 16
replaceitem block ~3 ~-3 ~0 slot.container 12 iron_ingot 7
replaceitem block ~3 ~-3 ~0 slot.container 13 leather_boots 1
replaceitem block ~3 ~-3 ~0 slot.container 14 golden_apple 4
loot insert ~3 ~-3 ~0 loot "rsf/cold_taiga"
loot insert ~3 ~-3 ~0 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 spruce_planks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~9 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 glass []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 spruce_log []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 spruce_log []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 spruce_log []
fill ~6 ~0 ~2 ~6 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~-5 ~0 ~5 ~-6 ~17 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~18 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 string 11
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 2 leather 13
replaceitem block ~4 ~1 ~2 slot.container 3 rabbit_foot 8
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 5 bone 12
replaceitem block ~4 ~1 ~2 slot.container 9 leather_boots 1
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 2
replaceitem block ~4 ~1 ~2 slot.container 11 flint_and_steel 1
replaceitem block ~4 ~1 ~2 slot.container 12 campfire 5
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 8
replaceitem block ~4 ~1 ~2 slot.container 14 cooked_mutton 13
loot insert ~4 ~1 ~2 loot "rsf/cold_taiga"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 leather 8
replaceitem block ~-4 ~1 ~3 slot.container 1 rabbit_foot 3
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 9 leather_boots 1
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~-4 ~1 ~3 slot.container 11 flint_and_steel 1
replaceitem block ~-4 ~1 ~3 slot.container 12 campfire 3
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 6
replaceitem block ~-4 ~1 ~3 slot.container 14 cooked_mutton 11
loot insert ~-4 ~1 ~3 loot "rsf/cold_taiga"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
