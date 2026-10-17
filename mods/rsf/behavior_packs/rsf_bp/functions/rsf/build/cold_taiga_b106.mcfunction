# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0874/4224 | 主题内编号: b106/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·琉璃穹顶魔药炼金室 (cold_taiga_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 snow []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 gunpowder 7
replaceitem block ~-3 ~-3 ~2 slot.container 1 leather 10
replaceitem block ~-3 ~-3 ~2 slot.container 2 rabbit_foot 5
replaceitem block ~-3 ~-3 ~2 slot.container 3 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 22
replaceitem block ~-3 ~-3 ~2 slot.container 9 campfire 2
replaceitem block ~-3 ~-3 ~2 slot.container 10 lantern 5
replaceitem block ~-3 ~-3 ~2 slot.container 11 cooked_mutton 10
replaceitem block ~-3 ~-3 ~2 slot.container 12 sweet_berries 15
replaceitem block ~-3 ~-3 ~2 slot.container 13 spruce_log 20
replaceitem block ~-3 ~-3 ~2 slot.container 14 coal 21
loot insert ~-3 ~-3 ~2 loot "rsf/cold_taiga"
loot insert ~-3 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 spruce_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 snow []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 spruce_log []
setblock ~-7 ~5 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 spruce_log []
setblock ~-7 ~5 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 spruce_log []
setblock ~7 ~5 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~4 ~6 spruce_log []
setblock ~7 ~5 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-5 ~0 ~5 ~-6 ~14 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~15 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 1 string 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 3 leather 13
replaceitem block ~-4 ~1 ~2 slot.container 4 rabbit_foot 8
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 spruce_log 22
replaceitem block ~-4 ~1 ~2 slot.container 10 coal 16
replaceitem block ~-4 ~1 ~2 slot.container 11 iron_ingot 7
replaceitem block ~-4 ~1 ~2 slot.container 12 leather_boots 1
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 14 flint_and_steel 1
loot insert ~-4 ~1 ~2 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
