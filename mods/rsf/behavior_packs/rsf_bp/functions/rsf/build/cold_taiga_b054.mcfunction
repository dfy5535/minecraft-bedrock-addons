# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0822/4224 | 主题内编号: b054/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·切石与伐木工匠棚屋 (cold_taiga_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cobblestone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cobblestone [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 spruce_planks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 snow []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~7 ~4 cobblestone []
fill ~2 ~1 ~-4 ~6 ~7 ~4 cobblestone []
fill ~-5 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 snow []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-5 ~-7 ~7 ~5 stone_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-5 ~7 ~7 ~5 stone_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~-6 ~8 ~4 stone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-4 ~6 ~8 ~4 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-4 ~5 ~8 ~4 spruce_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 snow []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-6 ~0 ~5 ~-7 ~11 ~6 cobblestone []
setblock ~-6 ~1 ~5 campfire []
setblock ~-6 ~12 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rabbit_foot 8
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 3 arrow 17
replaceitem block ~-5 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 5 string 11
replaceitem block ~-5 ~1 ~2 slot.container 9 golden_apple 4
replaceitem block ~-5 ~1 ~2 slot.container 10 flint_and_steel 1
replaceitem block ~-5 ~1 ~2 slot.container 11 campfire 7
replaceitem block ~-5 ~1 ~2 slot.container 12 lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 13 cooked_mutton 8
replaceitem block ~-5 ~1 ~2 slot.container 14 sweet_berries 13
loot insert ~-5 ~1 ~2 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
