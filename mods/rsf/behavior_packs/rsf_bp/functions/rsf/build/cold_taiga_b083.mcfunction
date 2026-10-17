# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0851/4224 | 主题内编号: b083/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·铁砧锻造与模具工坊 (cold_taiga_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 spruce_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~3 anvil []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 1 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 2 arrow 22
replaceitem block ~4 ~-2 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 4 string 8
replaceitem block ~4 ~-2 ~3 slot.container 5 gunpowder 7
replaceitem block ~4 ~-2 ~3 slot.container 9 lantern 7
replaceitem block ~4 ~-2 ~3 slot.container 10 cooked_mutton 12
replaceitem block ~4 ~-2 ~3 slot.container 11 sweet_berries 17
replaceitem block ~4 ~-2 ~3 slot.container 12 spruce_log 22
replaceitem block ~4 ~-2 ~3 slot.container 13 coal 16
replaceitem block ~4 ~-2 ~3 slot.container 14 iron_ingot 7
loot insert ~4 ~-2 ~3 loot "rsf/cold_taiga"
loot insert ~4 ~-2 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~6 ~5 spruce_planks []
fill ~-6 ~1 ~0 ~6 ~5 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-1 ~5 ~4 air []
fill ~-1 ~1 ~1 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 spruce_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-6 ~0 ~6 ~-7 ~10 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~11 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~3 slot.container 2 leather 13
replaceitem block ~5 ~1 ~3 slot.container 3 rabbit_foot 8
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 bone 12
replaceitem block ~5 ~1 ~3 slot.container 9 coal 20
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 11 leather_boots 1
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 1
replaceitem block ~5 ~1 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~5 ~1 ~3 slot.container 14 campfire 4
loot insert ~5 ~1 ~3 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 leather 8
replaceitem block ~-5 ~1 ~4 slot.container 1 rabbit_foot 3
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 18
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 11 leather_boots 1
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 13 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 14 campfire 2
loot insert ~-5 ~1 ~4 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
