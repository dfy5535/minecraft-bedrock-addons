# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0876/4224 | 主题内编号: b108/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·十字四相元素秘法殿 (cold_taiga_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 gunpowder 7
replaceitem block ~4 ~-3 ~0 slot.container 1 leather 10
replaceitem block ~4 ~-3 ~0 slot.container 2 rabbit_foot 5
replaceitem block ~4 ~-3 ~0 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~0 slot.container 4 bone 17
replaceitem block ~4 ~-3 ~0 slot.container 5 arrow 22
replaceitem block ~4 ~-3 ~0 slot.container 9 iron_ingot 12
replaceitem block ~4 ~-3 ~0 slot.container 10 leather_boots 1
replaceitem block ~4 ~-3 ~0 slot.container 11 golden_apple 2
replaceitem block ~4 ~-3 ~0 slot.container 12 flint_and_steel 1
replaceitem block ~4 ~-3 ~0 slot.container 13 campfire 5
replaceitem block ~4 ~-3 ~0 slot.container 14 lantern 8
loot insert ~4 ~-3 ~0 loot "rsf/cold_taiga"
loot insert ~4 ~-3 ~0 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 packed_ice []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 deepslate_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_stone_bricks []
setblock ~0 ~11 ~0 campfire []

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

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-6 ~0 ~6 ~-7 ~11 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~12 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 blast_furnace []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 1 leather 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rabbit_foot 8
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~3 slot.container 9 campfire 3
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_mutton 11
replaceitem block ~-5 ~1 ~3 slot.container 12 sweet_berries 16
replaceitem block ~-5 ~1 ~3 slot.container 13 spruce_log 21
replaceitem block ~-5 ~1 ~3 slot.container 14 coal 22
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
