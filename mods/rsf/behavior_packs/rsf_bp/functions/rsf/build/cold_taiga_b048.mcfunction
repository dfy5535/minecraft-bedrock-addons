# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0816/4224 | 主题内编号: b048/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·阶梯王座巅峰试炼台 (cold_taiga_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
setblock ~0 ~-6 ~0 coal_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 7
replaceitem block ~0 ~-3 ~-4 slot.container 3 leather 10
replaceitem block ~0 ~-3 ~-4 slot.container 4 rabbit_foot 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_ingot 6
replaceitem block ~0 ~-3 ~-4 slot.container 10 leather_boots 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 golden_apple 3
replaceitem block ~0 ~-3 ~-4 slot.container 12 flint_and_steel 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 campfire 6
replaceitem block ~0 ~-3 ~-4 slot.container 14 lantern 9
loot insert ~0 ~-3 ~-4 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 stone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 packed_ice []
fill ~-5 ~5 ~-4 ~5 ~7 ~4 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 stripped_spruce_log []
setblock ~-7 ~10 ~-6 campfire []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 stripped_spruce_log []
setblock ~-7 ~10 ~6 campfire []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 stripped_spruce_log []
setblock ~7 ~10 ~-6 campfire []
fill ~7 ~7 ~6 ~7 ~9 ~6 stripped_spruce_log []
setblock ~7 ~10 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_spruce_log []
setblock ~0 ~4 ~-8 coal_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_spruce_log []
setblock ~0 ~4 ~8 coal_block []
setblock ~0 ~5 ~8 campfire []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 stripped_spruce_log []
setblock ~-9 ~4 ~0 coal_block []
setblock ~-9 ~5 ~0 campfire []
fill ~9 ~0 ~0 ~9 ~3 ~0 stripped_spruce_log []
setblock ~9 ~4 ~0 coal_block []
setblock ~9 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-7 ~0 ~7 ~-8 ~11 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~12 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-6 ~1 ~4 slot.container 9 campfire 6
replaceitem block ~-6 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~-6 ~1 ~4 slot.container 11 cooked_mutton 14
replaceitem block ~-6 ~1 ~4 slot.container 12 sweet_berries 12
replaceitem block ~-6 ~1 ~4 slot.container 13 spruce_log 17
replaceitem block ~-6 ~1 ~4 slot.container 14 coal 18
loot insert ~-6 ~1 ~4 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
