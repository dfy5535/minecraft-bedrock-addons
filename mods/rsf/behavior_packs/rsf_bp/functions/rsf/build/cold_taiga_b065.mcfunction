# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0833/4224 | 主题内编号: b065/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·断柱露天古神庙废墟 (cold_taiga_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 cobblestone []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 leather 10
replaceitem block ~4 ~-2 ~4 slot.container 1 rabbit_foot 5
replaceitem block ~4 ~-2 ~4 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-2 ~4 slot.container 3 bone 17
replaceitem block ~4 ~-2 ~4 slot.container 4 arrow 22
replaceitem block ~4 ~-2 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-2 ~4 slot.container 9 coal 19
replaceitem block ~4 ~-2 ~4 slot.container 10 iron_ingot 10
replaceitem block ~4 ~-2 ~4 slot.container 11 leather_boots 1
replaceitem block ~4 ~-2 ~4 slot.container 12 golden_apple 7
replaceitem block ~4 ~-2 ~4 slot.container 13 flint_and_steel 1
replaceitem block ~4 ~-2 ~4 slot.container 14 campfire 3
loot insert ~4 ~-2 ~4 loot "rsf/cold_taiga"
loot insert ~4 ~-2 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 spruce_planks []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 spruce_log []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 spruce_log []
fill ~-4 ~1 ~-6 ~-4 ~5 ~-6 spruce_log []
fill ~-4 ~1 ~6 ~-4 ~5 ~6 spruce_log []
fill ~-2 ~1 ~-6 ~-2 ~5 ~-6 spruce_log []
fill ~-2 ~1 ~6 ~-2 ~5 ~6 spruce_log []
fill ~0 ~1 ~-6 ~0 ~5 ~-6 spruce_log []
fill ~0 ~1 ~6 ~0 ~5 ~6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~5 ~-6 spruce_log []
fill ~2 ~1 ~6 ~2 ~5 ~6 spruce_log []
fill ~4 ~1 ~-6 ~4 ~5 ~-6 spruce_log []
fill ~4 ~1 ~6 ~4 ~5 ~6 spruce_log []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 spruce_log []
fill ~6 ~1 ~6 ~6 ~5 ~6 spruce_log []
fill ~-6 ~1 ~-4 ~-6 ~5 ~-4 spruce_log []
fill ~6 ~1 ~-4 ~6 ~5 ~-4 spruce_log []
fill ~-6 ~1 ~-2 ~-6 ~5 ~-2 spruce_log []
fill ~6 ~1 ~-2 ~6 ~5 ~-2 spruce_log []
fill ~-6 ~1 ~0 ~-6 ~5 ~0 spruce_log []
fill ~6 ~1 ~0 ~6 ~5 ~0 spruce_log []
fill ~-6 ~1 ~2 ~-6 ~5 ~2 spruce_log []
fill ~6 ~1 ~2 ~6 ~5 ~2 spruce_log []
fill ~-6 ~1 ~4 ~-6 ~5 ~4 spruce_log []
fill ~6 ~1 ~4 ~6 ~5 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 deepslate_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 spruce_log []
setblock ~-8 ~5 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~4 ~8 spruce_log []
setblock ~-8 ~5 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 spruce_log []
setblock ~8 ~5 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~4 ~8 spruce_log []
setblock ~8 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-6 ~0 ~7 ~-7 ~12 ~8 cobblestone []
setblock ~-6 ~1 ~7 campfire []
setblock ~-6 ~13 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 string 11
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~4 slot.container 4 leather 13
replaceitem block ~5 ~1 ~4 slot.container 5 rabbit_foot 8
replaceitem block ~5 ~1 ~4 slot.container 9 lantern 4
replaceitem block ~5 ~1 ~4 slot.container 10 cooked_mutton 9
replaceitem block ~5 ~1 ~4 slot.container 11 sweet_berries 14
replaceitem block ~5 ~1 ~4 slot.container 12 spruce_log 19
replaceitem block ~5 ~1 ~4 slot.container 13 coal 20
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~5 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~5 slot.container 2 leather 8
replaceitem block ~-5 ~1 ~5 slot.container 3 rabbit_foot 3
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~5 slot.container 9 lantern 9
replaceitem block ~-5 ~1 ~5 slot.container 10 cooked_mutton 14
replaceitem block ~-5 ~1 ~5 slot.container 11 sweet_berries 12
replaceitem block ~-5 ~1 ~5 slot.container 12 spruce_log 17
replaceitem block ~-5 ~1 ~5 slot.container 13 coal 18
replaceitem block ~-5 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~-5 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~5 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
