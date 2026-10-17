# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0847/4224 | 主题内编号: b079/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·四角结界守护柱阵 (cold_taiga_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 8
replaceitem block ~4 ~-2 ~3 slot.container 1 gunpowder 7
replaceitem block ~4 ~-2 ~3 slot.container 2 leather 10
replaceitem block ~4 ~-2 ~3 slot.container 3 rabbit_foot 5
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 5 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 9 leather_boots 1
replaceitem block ~4 ~-2 ~3 slot.container 10 golden_apple 5
replaceitem block ~4 ~-2 ~3 slot.container 11 flint_and_steel 1
replaceitem block ~4 ~-2 ~3 slot.container 12 campfire 8
replaceitem block ~4 ~-2 ~3 slot.container 13 lantern 4
replaceitem block ~4 ~-2 ~3 slot.container 14 cooked_mutton 9
loot insert ~4 ~-2 ~3 loot "rsf/cold_taiga"
loot insert ~4 ~-2 ~3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 spruce_planks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 stone_bricks []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 stone_bricks []
setblock ~-6 ~10 ~4 lantern []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 stone_bricks []
setblock ~5 ~10 ~-5 lantern []
fill ~5 ~1 ~4 ~6 ~9 ~5 stone_bricks []
setblock ~5 ~10 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 packed_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-6 ~0 ~6 ~-7 ~12 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~13 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 snow []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 bone 12
replaceitem block ~5 ~1 ~3 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~3 slot.container 9 sweet_berries 12
replaceitem block ~5 ~1 ~3 slot.container 10 spruce_log 17
replaceitem block ~5 ~1 ~3 slot.container 11 coal 18
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 13 leather_boots 1
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~3 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 4 leather 8
replaceitem block ~-5 ~1 ~4 slot.container 5 rabbit_foot 3
replaceitem block ~-5 ~1 ~4 slot.container 9 sweet_berries 17
replaceitem block ~-5 ~1 ~4 slot.container 10 spruce_log 22
replaceitem block ~-5 ~1 ~4 slot.container 11 coal 16
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 13 leather_boots 1
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-5 ~1 ~4 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1
