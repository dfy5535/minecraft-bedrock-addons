# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0814/4224 | 主题内编号: b046/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·要塞校场比武演武台 (cold_taiga_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~-3 ~4 slot.container 1 string 8
replaceitem block ~5 ~-3 ~4 slot.container 2 gunpowder 7
replaceitem block ~5 ~-3 ~4 slot.container 3 leather 10
replaceitem block ~5 ~-3 ~4 slot.container 4 rabbit_foot 5
replaceitem block ~5 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~5 ~-3 ~4 slot.container 9 golden_apple 6
replaceitem block ~5 ~-3 ~4 slot.container 10 flint_and_steel 1
replaceitem block ~5 ~-3 ~4 slot.container 11 campfire 2
replaceitem block ~5 ~-3 ~4 slot.container 12 lantern 5
replaceitem block ~5 ~-3 ~4 slot.container 13 cooked_mutton 10
replaceitem block ~5 ~-3 ~4 slot.container 14 sweet_berries 15
loot insert ~5 ~-3 ~4 loot "rsf/cold_taiga"
loot insert ~5 ~-3 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 cobblestone []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 snow []
setblock ~-7 ~9 ~-6 torch []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 snow []
setblock ~-7 ~9 ~5 torch []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 snow []
setblock ~6 ~9 ~-6 torch []
fill ~6 ~1 ~5 ~7 ~8 ~6 snow []
setblock ~6 ~9 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 snow []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 spruce_log []
setblock ~-7 ~8 ~-6 torch []
setblock ~-7 ~7 ~6 spruce_log []
setblock ~-7 ~8 ~6 torch []
setblock ~7 ~7 ~-6 spruce_log []
setblock ~7 ~8 ~-6 torch []
setblock ~7 ~7 ~6 spruce_log []
setblock ~7 ~8 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~8 ~2 spruce_planks []
fill ~8 ~1 ~-1 ~9 ~7 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-7 ~0 ~7 ~-8 ~13 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~14 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rabbit_foot 8
replaceitem block ~-6 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~4 slot.container 3 arrow 17
replaceitem block ~-6 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 5 string 11
replaceitem block ~-6 ~1 ~4 slot.container 9 spruce_log 18
replaceitem block ~-6 ~1 ~4 slot.container 10 coal 19
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~-6 ~1 ~4 slot.container 12 leather_boots 1
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 7
replaceitem block ~-6 ~1 ~4 slot.container 14 flint_and_steel 1
loot insert ~-6 ~1 ~4 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
