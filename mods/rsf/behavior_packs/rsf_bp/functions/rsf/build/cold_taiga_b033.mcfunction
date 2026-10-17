# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0801/4224 | 主题内编号: b033/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·太阳金顶高耸方尖碑 (cold_taiga_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log2
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 spruce_planks []
setblock ~0 ~-5 ~0 barrel []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 string 8
replaceitem block ~0 ~-2 ~-1 slot.container 1 gunpowder 7
replaceitem block ~0 ~-2 ~-1 slot.container 2 leather 10
replaceitem block ~0 ~-2 ~-1 slot.container 3 rabbit_foot 5
replaceitem block ~0 ~-2 ~-1 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-2 ~-1 slot.container 5 bone 17
replaceitem block ~0 ~-2 ~-1 slot.container 9 lantern 10
replaceitem block ~0 ~-2 ~-1 slot.container 10 cooked_mutton 8
replaceitem block ~0 ~-2 ~-1 slot.container 11 sweet_berries 13
replaceitem block ~0 ~-2 ~-1 slot.container 12 spruce_log 18
replaceitem block ~0 ~-2 ~-1 slot.container 13 coal 19
replaceitem block ~0 ~-2 ~-1 slot.container 14 iron_ingot 10
loot insert ~0 ~-2 ~-1 loot "rsf/cold_taiga"
loot insert ~0 ~-2 ~-1 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 deepslate_bricks []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 spruce_planks []
fill ~-2 ~5 ~-1 ~2 ~11 ~1 cobblestone []
fill ~-2 ~1 ~-1 ~2 ~10 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 spruce_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 deepslate_bricks []
fill ~0 ~17 ~0 ~0 ~20 ~0 coal_block []
setblock ~0 ~21 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~4 ~-5 spruce_log []
setblock ~-6 ~5 ~-5 lantern []
fill ~-6 ~0 ~5 ~-6 ~4 ~5 spruce_log []
setblock ~-6 ~5 ~5 lantern []
fill ~6 ~0 ~-5 ~6 ~4 ~-5 spruce_log []
setblock ~6 ~5 ~-5 lantern []
fill ~6 ~0 ~5 ~6 ~4 ~5 spruce_log []
setblock ~6 ~5 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~-4 ~0 ~4 ~-5 ~15 ~5 cobblestone []
setblock ~-4 ~1 ~4 campfire []
setblock ~-4 ~16 ~4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~1 slot.container 4 leather 13
replaceitem block ~3 ~1 ~1 slot.container 5 rabbit_foot 8
replaceitem block ~3 ~1 ~1 slot.container 9 coal 19
replaceitem block ~3 ~1 ~1 slot.container 10 iron_ingot 10
replaceitem block ~3 ~1 ~1 slot.container 11 leather_boots 1
replaceitem block ~3 ~1 ~1 slot.container 12 golden_apple 7
replaceitem block ~3 ~1 ~1 slot.container 13 flint_and_steel 1
replaceitem block ~3 ~1 ~1 slot.container 14 campfire 3
loot insert ~3 ~1 ~1 loot "rsf/cold_taiga"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-3 ~1 ~2 slot.container 2 leather 8
replaceitem block ~-3 ~1 ~2 slot.container 3 rabbit_foot 3
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~2 slot.container 9 coal 17
replaceitem block ~-3 ~1 ~2 slot.container 10 iron_ingot 8
replaceitem block ~-3 ~1 ~2 slot.container 11 leather_boots 1
replaceitem block ~-3 ~1 ~2 slot.container 12 golden_apple 5
replaceitem block ~-3 ~1 ~2 slot.container 13 flint_and_steel 1
replaceitem block ~-3 ~1 ~2 slot.container 14 campfire 8
loot insert ~-3 ~1 ~2 loot "rsf/cold_taiga"
loot insert ~-3 ~1 ~2 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
