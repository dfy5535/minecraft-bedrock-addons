# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0879/4224 | 主题内编号: b111/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·地下禁忌书库与炼药室 (cold_taiga_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 lantern []
setblock ~4 ~-5 ~0 lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 leather 10
replaceitem block ~0 ~-3 ~3 slot.container 1 rabbit_foot 5
replaceitem block ~0 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~3 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~3 slot.container 4 arrow 22
replaceitem block ~0 ~-3 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~3 slot.container 9 lantern 7
replaceitem block ~0 ~-3 ~3 slot.container 10 cooked_mutton 12
replaceitem block ~0 ~-3 ~3 slot.container 11 sweet_berries 17
replaceitem block ~0 ~-3 ~3 slot.container 12 spruce_log 22
replaceitem block ~0 ~-3 ~3 slot.container 13 coal 16
replaceitem block ~0 ~-3 ~3 slot.container 14 iron_ingot 7
loot insert ~0 ~-3 ~3 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~3 loot "chests/igloo_chest"
setblock ~0 ~-3 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-3 slot.container 0 leather 8
replaceitem block ~0 ~-3 ~-3 slot.container 1 rabbit_foot 3
replaceitem block ~0 ~-3 ~-3 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-3 ~-3 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~-3 slot.container 4 arrow 20
replaceitem block ~0 ~-3 ~-3 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-3 ~-3 slot.container 9 lantern 6
replaceitem block ~0 ~-3 ~-3 slot.container 10 cooked_mutton 11
replaceitem block ~0 ~-3 ~-3 slot.container 11 sweet_berries 16
replaceitem block ~0 ~-3 ~-3 slot.container 12 spruce_log 21
replaceitem block ~0 ~-3 ~-3 slot.container 13 coal 22
replaceitem block ~0 ~-3 ~-3 slot.container 14 iron_ingot 6
loot insert ~0 ~-3 ~-3 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~-3 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 spruce_planks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 snow []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 spruce_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-6 ~0 ~6 ~-7 ~13 ~7 cobblestone []
setblock ~-6 ~1 ~6 campfire []
setblock ~-6 ~14 ~6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 bone 12
replaceitem block ~5 ~1 ~3 slot.container 2 arrow 17
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~3 slot.container 9 flint_and_steel 1
replaceitem block ~5 ~1 ~3 slot.container 10 campfire 7
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~5 ~1 ~3 slot.container 12 cooked_mutton 8
replaceitem block ~5 ~1 ~3 slot.container 13 sweet_berries 13
replaceitem block ~5 ~1 ~3 slot.container 14 spruce_log 18
loot insert ~5 ~1 ~3 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 4 leather 8
replaceitem block ~-5 ~1 ~4 slot.container 5 rabbit_foot 3
replaceitem block ~-5 ~1 ~4 slot.container 9 flint_and_steel 1
replaceitem block ~-5 ~1 ~4 slot.container 10 campfire 5
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_mutton 13
replaceitem block ~-5 ~1 ~4 slot.container 13 sweet_berries 18
replaceitem block ~-5 ~1 ~4 slot.container 14 spruce_log 16
loot insert ~-5 ~1 ~4 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~4 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
