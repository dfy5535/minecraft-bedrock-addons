# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0825/4224 | 主题内编号: b057/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·中央石棺帝王地下陵寝 (cold_taiga_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 spruce_planks []
setblock ~0 ~-6 ~0 barrel []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 gunpowder 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 leather 10
replaceitem block ~0 ~-3 ~-4 slot.container 3 rabbit_foot 5
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 sweet_berries 14
replaceitem block ~0 ~-3 ~-4 slot.container 10 spruce_log 19
replaceitem block ~0 ~-3 ~-4 slot.container 11 coal 20
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 13 leather_boots 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 1
loot insert ~0 ~-3 ~-4 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 deepslate_bricks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 spruce_planks []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 cobblestone []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 coal_block []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 deepslate_brick_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-6 ~0 ~7 ~-7 ~13 ~8 cobblestone []
setblock ~-6 ~1 ~7 campfire []
setblock ~-6 ~14 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~3 blast_furnace []
setblock ~-3 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 string 11
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~4 slot.container 4 leather 13
replaceitem block ~5 ~1 ~4 slot.container 5 rabbit_foot 8
replaceitem block ~5 ~1 ~4 slot.container 9 leather_boots 1
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~5 ~1 ~4 slot.container 11 flint_and_steel 1
replaceitem block ~5 ~1 ~4 slot.container 12 campfire 4
replaceitem block ~5 ~1 ~4 slot.container 13 lantern 7
replaceitem block ~5 ~1 ~4 slot.container 14 cooked_mutton 12
loot insert ~5 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~5 slot.container 2 leather 8
replaceitem block ~-5 ~1 ~5 slot.container 3 rabbit_foot 3
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~5 slot.container 9 leather_boots 1
replaceitem block ~-5 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~5 slot.container 11 flint_and_steel 1
replaceitem block ~-5 ~1 ~5 slot.container 12 campfire 2
replaceitem block ~-5 ~1 ~5 slot.container 13 lantern 5
replaceitem block ~-5 ~1 ~5 slot.container 14 cooked_mutton 10
loot insert ~-5 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~5 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
