# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0827/4224 | 主题内编号: b059/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·阶梯金字塔法老墓室 (cold_taiga_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 leather 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 rabbit_foot 5
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 22
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 flint_and_steel 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 campfire 7
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 12 cooked_mutton 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 sweet_berries 13
replaceitem block ~0 ~-3 ~-4 slot.container 14 spruce_log 18
loot insert ~0 ~-3 ~-4 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_planks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~5 ~-4 ~5 ~7 ~4 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 stone_bricks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 snow []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 spruce_log []
setblock ~-9 ~5 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 spruce_log []
setblock ~-9 ~5 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 spruce_log []
setblock ~9 ~5 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 spruce_log []
setblock ~9 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-7 ~0 ~7 ~-8 ~12 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~13 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~6 ~1 ~4 slot.container 2 leather 13
replaceitem block ~6 ~1 ~4 slot.container 3 rabbit_foot 8
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 12
replaceitem block ~6 ~1 ~4 slot.container 9 sweet_berries 13
replaceitem block ~6 ~1 ~4 slot.container 10 spruce_log 18
replaceitem block ~6 ~1 ~4 slot.container 11 coal 19
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 13 leather_boots 1
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~6 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 leather 8
replaceitem block ~-6 ~1 ~5 slot.container 1 rabbit_foot 3
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 sweet_berries 18
replaceitem block ~-6 ~1 ~5 slot.container 10 spruce_log 16
replaceitem block ~-6 ~1 ~5 slot.container 11 coal 17
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~-6 ~1 ~5 slot.container 13 leather_boots 1
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-6 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
