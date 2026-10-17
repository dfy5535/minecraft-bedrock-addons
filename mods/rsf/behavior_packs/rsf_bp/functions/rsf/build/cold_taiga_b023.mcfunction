# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0791/4224 | 主题内编号: b023/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·双层露台阁楼宝室 (cold_taiga_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 spruce_planks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 spruce_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 spruce_planks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 spruce_slab []
fill ~-4 ~5 ~-4 ~4 ~8 ~4 stone_bricks []
fill ~-3 ~5 ~-3 ~3 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 spruce_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 stone_bricks []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 snow []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-5 ~0 ~6 ~-6 ~12 ~7 cobblestone []
setblock ~-5 ~1 ~6 campfire []
setblock ~-5 ~13 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 1 bone 12
replaceitem block ~4 ~1 ~3 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 4 string 11
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 9 coal 16
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 7
replaceitem block ~4 ~1 ~3 slot.container 11 leather_boots 1
replaceitem block ~4 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 13 flint_and_steel 1
replaceitem block ~4 ~1 ~3 slot.container 14 campfire 7
loot insert ~4 ~1 ~3 loot "rsf/cold_taiga"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 2 string 14
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~4 slot.container 4 leather 8
replaceitem block ~-4 ~1 ~4 slot.container 5 rabbit_foot 3
replaceitem block ~-4 ~1 ~4 slot.container 9 coal 21
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~-4 ~1 ~4 slot.container 11 leather_boots 1
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~-4 ~1 ~4 slot.container 13 flint_and_steel 1
replaceitem block ~-4 ~1 ~4 slot.container 14 campfire 5
loot insert ~-4 ~1 ~4 loot "rsf/cold_taiga"
loot insert ~-4 ~1 ~4 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~2 ~0
