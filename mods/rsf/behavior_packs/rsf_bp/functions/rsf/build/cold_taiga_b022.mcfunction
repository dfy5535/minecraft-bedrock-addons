# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0790/4224 | 主题内编号: b022/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·廊柱书库秘藏室 (cold_taiga_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 spruce_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 1 string 8
replaceitem block ~4 ~-3 ~3 slot.container 2 gunpowder 7
replaceitem block ~4 ~-3 ~3 slot.container 3 leather 10
replaceitem block ~4 ~-3 ~3 slot.container 4 rabbit_foot 5
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-3 ~3 slot.container 9 iron_ingot 8
replaceitem block ~4 ~-3 ~3 slot.container 10 leather_boots 1
replaceitem block ~4 ~-3 ~3 slot.container 11 golden_apple 5
replaceitem block ~4 ~-3 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~4 ~-3 ~3 slot.container 13 campfire 8
replaceitem block ~4 ~-3 ~3 slot.container 14 lantern 4
loot insert ~4 ~-3 ~3 loot "rsf/cold_taiga"
loot insert ~4 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 snow []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 spruce_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 spruce_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 snow []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 spruce_planks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 barrel []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 snow []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 spruce_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-6 ~0 ~6 ~-7 ~15 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~16 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rabbit_foot 8
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 17
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_mutton 14
replaceitem block ~-5 ~1 ~3 slot.container 10 sweet_berries 12
replaceitem block ~-5 ~1 ~3 slot.container 11 spruce_log 17
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 18
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 14 leather_boots 1
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
