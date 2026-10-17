# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0794/4224 | 主题内编号: b026/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·尖顶信标引航高塔 (cold_taiga_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log2
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 cobblestone [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 cobblestone [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 spruce_planks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 spruce_planks []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 rabbit_foot 5
replaceitem block ~2 ~-3 ~1 slot.container 1 ender_pearl 6
replaceitem block ~2 ~-3 ~1 slot.container 2 bone 17
replaceitem block ~2 ~-3 ~1 slot.container 3 arrow 22
replaceitem block ~2 ~-3 ~1 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-3 ~1 slot.container 5 string 8
replaceitem block ~2 ~-3 ~1 slot.container 9 golden_apple 7
replaceitem block ~2 ~-3 ~1 slot.container 10 flint_and_steel 1
replaceitem block ~2 ~-3 ~1 slot.container 11 campfire 3
replaceitem block ~2 ~-3 ~1 slot.container 12 lantern 6
replaceitem block ~2 ~-3 ~1 slot.container 13 cooked_mutton 11
replaceitem block ~2 ~-3 ~1 slot.container 14 sweet_berries 16
loot insert ~2 ~-3 ~1 loot "rsf/cold_taiga"
loot insert ~2 ~-3 ~1 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 cobblestone []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~12 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~12 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~12 ~3 air []
fill ~4 ~1 ~3 ~4 ~12 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~11 ~-2 spruce_log []
fill ~3 ~1 ~-2 ~3 ~11 ~-2 spruce_log []
fill ~-3 ~1 ~2 ~-3 ~11 ~2 spruce_log []
fill ~3 ~1 ~2 ~3 ~11 ~2 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 snow []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 cobblestone []
fill ~0 ~17 ~0 ~0 ~20 ~0 barrel []
setblock ~0 ~21 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~10 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~10 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~10 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~10 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 6x4x5) ---
fill ~-4 ~0 ~4 ~-5 ~18 ~5 cobblestone []
setblock ~-4 ~1 ~4 campfire []
setblock ~-4 ~19 ~4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~1 slot.container 1 string 11
replaceitem block ~-3 ~1 ~1 slot.container 2 gunpowder 10
replaceitem block ~-3 ~1 ~1 slot.container 3 leather 13
replaceitem block ~-3 ~1 ~1 slot.container 4 rabbit_foot 8
replaceitem block ~-3 ~1 ~1 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~1 slot.container 9 spruce_log 19
replaceitem block ~-3 ~1 ~1 slot.container 10 coal 20
replaceitem block ~-3 ~1 ~1 slot.container 11 iron_ingot 11
replaceitem block ~-3 ~1 ~1 slot.container 12 leather_boots 1
replaceitem block ~-3 ~1 ~1 slot.container 13 golden_apple 1
replaceitem block ~-3 ~1 ~1 slot.container 14 flint_and_steel 1
loot insert ~-3 ~1 ~1 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~-3 ~0
