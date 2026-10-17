# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0878/4224 | 主题内编号: b110/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·双子附魔与酿造实验楼 (cold_taiga_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cobblestone [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cobblestone [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_planks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 spruce_planks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~-3 ~2 slot.container 1 string 8
replaceitem block ~5 ~-3 ~2 slot.container 2 gunpowder 7
replaceitem block ~5 ~-3 ~2 slot.container 3 leather 10
replaceitem block ~5 ~-3 ~2 slot.container 4 rabbit_foot 5
replaceitem block ~5 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~5 ~-3 ~2 slot.container 9 campfire 8
replaceitem block ~5 ~-3 ~2 slot.container 10 lantern 4
replaceitem block ~5 ~-3 ~2 slot.container 11 cooked_mutton 9
replaceitem block ~5 ~-3 ~2 slot.container 12 sweet_berries 14
replaceitem block ~5 ~-3 ~2 slot.container 13 spruce_log 19
replaceitem block ~5 ~-3 ~2 slot.container 14 coal 20
loot insert ~5 ~-3 ~2 loot "rsf/cold_taiga"
loot insert ~5 ~-3 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 cobblestone []
fill ~2 ~1 ~-4 ~7 ~8 ~4 cobblestone []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 snow []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~7 ~-5 ~8 ~7 ~5 spruce_slab []
fill ~-6 ~8 ~-3 ~6 ~9 ~3 spruce_planks []
fill ~-7 ~10 ~-4 ~7 ~10 ~4 spruce_slab []
setblock ~0 ~11 ~0 barrel []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 snow []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x5x4) ---
fill ~-7 ~0 ~5 ~-8 ~13 ~6 cobblestone []
setblock ~-7 ~1 ~5 campfire []
setblock ~-7 ~14 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 rabbit_foot 8
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~2 slot.container 3 arrow 17
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 5 string 11
replaceitem block ~-6 ~1 ~2 slot.container 9 iron_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 10 leather_boots 1
replaceitem block ~-6 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~-6 ~1 ~2 slot.container 12 flint_and_steel 1
replaceitem block ~-6 ~1 ~2 slot.container 13 campfire 2
replaceitem block ~-6 ~1 ~2 slot.container 14 lantern 5
loot insert ~-6 ~1 ~2 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~-3 ~0
