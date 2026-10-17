# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0843/4224 | 主题内编号: b075/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·远古巨石环廊法阵 (cold_taiga_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
fill ~0 ~-4 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-4 slot.container 0 leather 10
replaceitem block ~0 ~-2 ~-4 slot.container 1 rabbit_foot 5
replaceitem block ~0 ~-2 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-2 ~-4 slot.container 3 bone 17
replaceitem block ~0 ~-2 ~-4 slot.container 4 arrow 22
replaceitem block ~0 ~-2 ~-4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-2 ~-4 slot.container 9 leather_boots 1
replaceitem block ~0 ~-2 ~-4 slot.container 10 golden_apple 1
replaceitem block ~0 ~-2 ~-4 slot.container 11 flint_and_steel 1
replaceitem block ~0 ~-2 ~-4 slot.container 12 campfire 4
replaceitem block ~0 ~-2 ~-4 slot.container 13 lantern 7
replaceitem block ~0 ~-2 ~-4 slot.container 14 cooked_mutton 12
loot insert ~0 ~-2 ~-4 loot "rsf/cold_taiga"
loot insert ~0 ~-2 ~-4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 spruce_log []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 spruce_log []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~6 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~6 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~6 ~6 spruce_log []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 spruce_log []
fill ~7 ~1 ~6 ~7 ~6 ~6 spruce_log []
fill ~-7 ~1 ~-4 ~-7 ~6 ~-4 spruce_log []
fill ~7 ~1 ~-4 ~7 ~6 ~-4 spruce_log []
fill ~-7 ~1 ~-2 ~-7 ~6 ~-2 spruce_log []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 spruce_log []
fill ~-7 ~1 ~0 ~-7 ~6 ~0 spruce_log []
fill ~7 ~1 ~0 ~7 ~6 ~0 spruce_log []
fill ~-7 ~1 ~2 ~-7 ~6 ~2 spruce_log []
fill ~7 ~1 ~2 ~7 ~6 ~2 spruce_log []
fill ~-7 ~1 ~4 ~-7 ~6 ~4 spruce_log []
fill ~7 ~1 ~4 ~7 ~6 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 spruce_log []
setblock ~-7 ~10 ~-6 lantern []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 spruce_log []
setblock ~-7 ~10 ~6 lantern []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 spruce_log []
setblock ~7 ~10 ~-6 lantern []
fill ~7 ~7 ~6 ~7 ~9 ~6 spruce_log []
setblock ~7 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 spruce_log []
setblock ~-9 ~4 ~0 chiseled_stone_bricks []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 spruce_log []
setblock ~9 ~4 ~0 chiseled_stone_bricks []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-7 ~0 ~7 ~-8 ~13 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~14 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~6 ~1 ~4 slot.container 2 leather 13
replaceitem block ~6 ~1 ~4 slot.container 3 rabbit_foot 8
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 12
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 7
replaceitem block ~6 ~1 ~4 slot.container 10 cooked_mutton 12
replaceitem block ~6 ~1 ~4 slot.container 11 sweet_berries 17
replaceitem block ~6 ~1 ~4 slot.container 12 spruce_log 22
replaceitem block ~6 ~1 ~4 slot.container 13 coal 16
replaceitem block ~6 ~1 ~4 slot.container 14 iron_ingot 7
loot insert ~6 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 leather 8
replaceitem block ~-6 ~1 ~5 slot.container 1 rabbit_foot 3
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 5
replaceitem block ~-6 ~1 ~5 slot.container 10 cooked_mutton 10
replaceitem block ~-6 ~1 ~5 slot.container 11 sweet_berries 15
replaceitem block ~-6 ~1 ~5 slot.container 12 spruce_log 20
replaceitem block ~-6 ~1 ~5 slot.container 13 coal 21
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_ingot 12
loot insert ~-6 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
