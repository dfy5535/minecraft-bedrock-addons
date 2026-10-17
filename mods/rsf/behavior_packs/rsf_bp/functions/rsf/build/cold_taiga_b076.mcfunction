# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0844/4224 | 主题内编号: b076/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·阶梯高台图腾战阵 (cold_taiga_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~-4 ~-5 ~-3 campfire []
setblock ~4 ~-5 ~3 campfire []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 gunpowder 7
replaceitem block ~0 ~-3 ~3 slot.container 1 leather 10
replaceitem block ~0 ~-3 ~3 slot.container 2 rabbit_foot 5
replaceitem block ~0 ~-3 ~3 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~3 slot.container 4 bone 17
replaceitem block ~0 ~-3 ~3 slot.container 5 arrow 22
replaceitem block ~0 ~-3 ~3 slot.container 9 iron_ingot 7
replaceitem block ~0 ~-3 ~3 slot.container 10 leather_boots 1
replaceitem block ~0 ~-3 ~3 slot.container 11 golden_apple 4
replaceitem block ~0 ~-3 ~3 slot.container 12 flint_and_steel 1
replaceitem block ~0 ~-3 ~3 slot.container 13 campfire 7
replaceitem block ~0 ~-3 ~3 slot.container 14 lantern 10
loot insert ~0 ~-3 ~3 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 packed_ice []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 packed_ice []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 stone_bricks []
fill ~0 ~14 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_spruce_log []
setblock ~0 ~4 ~-7 coal_block []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_spruce_log []
setblock ~0 ~4 ~7 coal_block []
setblock ~0 ~5 ~7 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_spruce_log []
setblock ~-8 ~4 ~0 coal_block []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_spruce_log []
setblock ~8 ~4 ~0 coal_block []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-6 ~0 ~6 ~-7 ~15 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~16 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 1 leather 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rabbit_foot 8
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~3 slot.container 9 spruce_log 20
replaceitem block ~-5 ~1 ~3 slot.container 10 coal 21
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 12 leather_boots 1
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 14 flint_and_steel 1
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
summon wolf ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1
