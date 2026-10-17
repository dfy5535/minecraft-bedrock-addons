# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0769/4224 | 主题内编号: b001/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·三层阶梯圣火祭坛 (cold_taiga_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 leather 10
replaceitem block ~3 ~-2 ~2 slot.container 1 rabbit_foot 5
replaceitem block ~3 ~-2 ~2 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 3 bone 17
replaceitem block ~3 ~-2 ~2 slot.container 4 arrow 22
replaceitem block ~3 ~-2 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-2 ~2 slot.container 9 sweet_berries 14
replaceitem block ~3 ~-2 ~2 slot.container 10 spruce_log 19
replaceitem block ~3 ~-2 ~2 slot.container 11 coal 20
replaceitem block ~3 ~-2 ~2 slot.container 12 iron_ingot 11
replaceitem block ~3 ~-2 ~2 slot.container 13 leather_boots 1
replaceitem block ~3 ~-2 ~2 slot.container 14 golden_apple 1
loot insert ~3 ~-2 ~2 loot "rsf/cold_taiga"
loot insert ~3 ~-2 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 spruce_planks []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 cobblestone []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-4 ~-5 ~8 ~-4 spruce_log []
setblock ~-5 ~9 ~-4 lantern []
fill ~-5 ~6 ~4 ~-5 ~8 ~4 spruce_log []
setblock ~-5 ~9 ~4 lantern []
fill ~5 ~6 ~-4 ~5 ~8 ~-4 spruce_log []
setblock ~5 ~9 ~-4 lantern []
fill ~5 ~6 ~4 ~5 ~8 ~4 spruce_log []
setblock ~5 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 packed_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-5 ~0 ~5 ~-6 ~13 ~6 cobblestone []
setblock ~-5 ~1 ~5 campfire []
setblock ~-5 ~14 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 coal_block []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 arrow 17
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 2 string 11
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 4 leather 13
replaceitem block ~4 ~1 ~2 slot.container 5 rabbit_foot 8
replaceitem block ~4 ~1 ~2 slot.container 9 flint_and_steel 1
replaceitem block ~4 ~1 ~2 slot.container 10 campfire 2
replaceitem block ~4 ~1 ~2 slot.container 11 lantern 5
replaceitem block ~4 ~1 ~2 slot.container 12 cooked_mutton 10
replaceitem block ~4 ~1 ~2 slot.container 13 sweet_berries 15
replaceitem block ~4 ~1 ~2 slot.container 14 spruce_log 20
loot insert ~4 ~1 ~2 loot "rsf/cold_taiga"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 14
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 2 leather 8
replaceitem block ~-4 ~1 ~3 slot.container 3 rabbit_foot 3
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~3 slot.container 9 flint_and_steel 1
replaceitem block ~-4 ~1 ~3 slot.container 10 campfire 7
replaceitem block ~-4 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~-4 ~1 ~3 slot.container 12 cooked_mutton 8
replaceitem block ~-4 ~1 ~3 slot.container 13 sweet_berries 13
replaceitem block ~-4 ~1 ~3 slot.container 14 spruce_log 18
loot insert ~-4 ~1 ~3 loot "rsf/cold_taiga"
loot insert ~-4 ~1 ~3 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
