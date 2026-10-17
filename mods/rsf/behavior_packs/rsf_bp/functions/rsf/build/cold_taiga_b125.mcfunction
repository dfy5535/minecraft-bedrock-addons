# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0893/4224 | 主题内编号: b125/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·巨型阶梯金字塔神王殿 (cold_taiga_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 coal_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 leather 10
replaceitem block ~5 ~-3 ~0 slot.container 1 rabbit_foot 5
replaceitem block ~5 ~-3 ~0 slot.container 2 ender_pearl 6
replaceitem block ~5 ~-3 ~0 slot.container 3 bone 17
replaceitem block ~5 ~-3 ~0 slot.container 4 arrow 22
replaceitem block ~5 ~-3 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~5 ~-3 ~0 slot.container 9 leather_boots 1
replaceitem block ~5 ~-3 ~0 slot.container 10 golden_apple 4
replaceitem block ~5 ~-3 ~0 slot.container 11 flint_and_steel 1
replaceitem block ~5 ~-3 ~0 slot.container 12 campfire 7
replaceitem block ~5 ~-3 ~0 slot.container 13 lantern 10
replaceitem block ~5 ~-3 ~0 slot.container 14 cooked_mutton 8
loot insert ~5 ~-3 ~0 loot "rsf/cold_taiga"
loot insert ~5 ~-3 ~0 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 spruce_planks []
fill ~-5 ~5 ~-4 ~5 ~9 ~4 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~10 ~-6 ~7 ~10 ~6 spruce_planks []
fill ~-6 ~11 ~-5 ~6 ~11 ~5 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 coal_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 barrel []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 barrel []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 spruce_log []
setblock ~-9 ~4 ~0 barrel []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 spruce_log []
setblock ~9 ~4 ~0 barrel []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-7 ~0 ~7 ~-8 ~15 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~16 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 leather 13
replaceitem block ~6 ~1 ~4 slot.container 1 rabbit_foot 8
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 3 bone 12
replaceitem block ~6 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~6 ~1 ~4 slot.container 10 cooked_mutton 13
replaceitem block ~6 ~1 ~4 slot.container 11 sweet_berries 18
replaceitem block ~6 ~1 ~4 slot.container 12 spruce_log 16
replaceitem block ~6 ~1 ~4 slot.container 13 coal 17
replaceitem block ~6 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~6 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 1 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 4 string 14
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 13
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 6
replaceitem block ~-6 ~1 ~5 slot.container 10 cooked_mutton 11
replaceitem block ~-6 ~1 ~5 slot.container 11 sweet_berries 16
replaceitem block ~-6 ~1 ~5 slot.container 12 spruce_log 21
replaceitem block ~-6 ~1 ~5 slot.container 13 coal 22
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_ingot 6
loot insert ~-6 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
