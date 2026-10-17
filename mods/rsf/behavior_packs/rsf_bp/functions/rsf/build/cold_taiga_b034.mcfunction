# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0802/4224 | 主题内编号: b034/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·双子对称铭文方尖碑 (cold_taiga_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~14 ~5 air [] replace log2
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 cobblestone [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 cobblestone [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 spruce_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 spruce_planks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 spruce_planks []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 rabbit_foot 5
replaceitem block ~4 ~-3 ~1 slot.container 1 ender_pearl 6
replaceitem block ~4 ~-3 ~1 slot.container 2 bone 17
replaceitem block ~4 ~-3 ~1 slot.container 3 arrow 22
replaceitem block ~4 ~-3 ~1 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~1 slot.container 5 string 8
replaceitem block ~4 ~-3 ~1 slot.container 9 cooked_mutton 8
replaceitem block ~4 ~-3 ~1 slot.container 10 sweet_berries 13
replaceitem block ~4 ~-3 ~1 slot.container 11 spruce_log 18
replaceitem block ~4 ~-3 ~1 slot.container 12 coal 19
replaceitem block ~4 ~-3 ~1 slot.container 13 iron_ingot 10
replaceitem block ~4 ~-3 ~1 slot.container 14 leather_boots 1
loot insert ~4 ~-3 ~1 loot "rsf/cold_taiga"
loot insert ~4 ~-3 ~1 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 cobblestone []
fill ~2 ~1 ~-3 ~6 ~11 ~3 cobblestone []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 snow []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 snow []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cobblestone []
fill ~0 ~16 ~0 ~0 ~19 ~0 barrel []
setblock ~0 ~20 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 snow []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 torch []
setblock ~2 ~4 ~-6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-6 ~0 ~4 ~-7 ~15 ~5 cobblestone []
setblock ~-6 ~1 ~4 campfire []
setblock ~-6 ~16 ~4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~1 slot.container 1 string 11
replaceitem block ~-5 ~1 ~1 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~1 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~1 slot.container 4 rabbit_foot 8
replaceitem block ~-5 ~1 ~1 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~1 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~1 slot.container 10 flint_and_steel 1
replaceitem block ~-5 ~1 ~1 slot.container 11 campfire 8
replaceitem block ~-5 ~1 ~1 slot.container 12 lantern 4
replaceitem block ~-5 ~1 ~1 slot.container 13 cooked_mutton 9
replaceitem block ~-5 ~1 ~1 slot.container 14 sweet_berries 14
loot insert ~-5 ~1 ~1 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
