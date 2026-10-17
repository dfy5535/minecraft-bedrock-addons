# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0786/4224 | 主题内编号: b018/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·L型转角领主秘宝屋 (cold_taiga_chamber_l_wing_manor)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 snow []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~6 ~5 cobblestone []
fill ~-6 ~1 ~0 ~6 ~5 ~5 spruce_planks []
fill ~-5 ~1 ~-4 ~-1 ~5 ~4 air []
fill ~-1 ~1 ~1 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 stone_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 stone_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 stone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 spruce_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 snow []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 packed_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-6 ~0 ~6 ~-7 ~10 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~11 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rabbit_foot 8
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 campfire 4
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 7
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_mutton 12
replaceitem block ~-5 ~1 ~3 slot.container 12 sweet_berries 17
replaceitem block ~-5 ~1 ~3 slot.container 13 spruce_log 22
replaceitem block ~-5 ~1 ~3 slot.container 14 coal 16
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
