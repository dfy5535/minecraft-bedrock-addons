# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0882/4224 | 主题内编号: b114/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·双联拱顶植物培育馆 (cold_taiga_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cobblestone [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cobblestone [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_planks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 snow []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 cobblestone []
fill ~2 ~1 ~-4 ~7 ~7 ~4 cobblestone []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 snow []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 snow []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 glass []
fill ~-5 ~7 ~-2 ~5 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 cobblestone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~-7 ~0 ~5 ~-8 ~11 ~6 cobblestone []
setblock ~-7 ~1 ~5 campfire []
setblock ~-7 ~12 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 1 string 11
replaceitem block ~-6 ~1 ~2 slot.container 2 gunpowder 10
replaceitem block ~-6 ~1 ~2 slot.container 3 leather 13
replaceitem block ~-6 ~1 ~2 slot.container 4 rabbit_foot 8
replaceitem block ~-6 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 9 golden_apple 1
replaceitem block ~-6 ~1 ~2 slot.container 10 flint_and_steel 1
replaceitem block ~-6 ~1 ~2 slot.container 11 campfire 4
replaceitem block ~-6 ~1 ~2 slot.container 12 lantern 7
replaceitem block ~-6 ~1 ~2 slot.container 13 cooked_mutton 12
replaceitem block ~-6 ~1 ~2 slot.container 14 sweet_berries 17
loot insert ~-6 ~1 ~2 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
