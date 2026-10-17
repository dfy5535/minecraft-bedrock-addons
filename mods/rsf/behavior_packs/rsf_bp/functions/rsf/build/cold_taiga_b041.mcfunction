# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0809/4224 | 主题内编号: b041/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·八角看台古罗马斗技场 (cold_taiga_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 coal_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 coal_block []
setblock ~-5 ~-4 ~-4 lantern []
setblock ~5 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 arrow 22
replaceitem block ~0 ~-2 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-2 ~4 slot.container 2 string 8
replaceitem block ~0 ~-2 ~4 slot.container 3 gunpowder 7
replaceitem block ~0 ~-2 ~4 slot.container 4 leather 10
replaceitem block ~0 ~-2 ~4 slot.container 5 rabbit_foot 5
replaceitem block ~0 ~-2 ~4 slot.container 9 lantern 5
replaceitem block ~0 ~-2 ~4 slot.container 10 cooked_mutton 10
replaceitem block ~0 ~-2 ~4 slot.container 11 sweet_berries 15
replaceitem block ~0 ~-2 ~4 slot.container 12 spruce_log 20
replaceitem block ~0 ~-2 ~4 slot.container 13 coal 21
replaceitem block ~0 ~-2 ~4 slot.container 14 iron_ingot 12
loot insert ~0 ~-2 ~4 loot "rsf/cold_taiga"
loot insert ~0 ~-2 ~4 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 deepslate_bricks []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 air []
fill ~7 ~1 ~6 ~7 ~7 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 spruce_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 spruce_log []
setblock ~-7 ~9 ~-6 lantern []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 spruce_log []
setblock ~-7 ~9 ~6 lantern []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 spruce_log []
setblock ~7 ~9 ~-6 lantern []
fill ~7 ~6 ~6 ~7 ~8 ~6 spruce_log []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 spruce_log []
setblock ~-9 ~5 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 spruce_log []
setblock ~-9 ~5 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 spruce_log []
setblock ~9 ~5 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 spruce_log []
setblock ~9 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-7 ~0 ~7 ~-8 ~13 ~8 cobblestone []
setblock ~-7 ~1 ~7 campfire []
setblock ~-7 ~14 ~7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 2 string 11
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 10
replaceitem block ~6 ~1 ~4 slot.container 4 leather 13
replaceitem block ~6 ~1 ~4 slot.container 5 rabbit_foot 8
replaceitem block ~6 ~1 ~4 slot.container 9 flint_and_steel 1
replaceitem block ~6 ~1 ~4 slot.container 10 campfire 7
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~6 ~1 ~4 slot.container 12 cooked_mutton 8
replaceitem block ~6 ~1 ~4 slot.container 13 sweet_berries 13
replaceitem block ~6 ~1 ~4 slot.container 14 spruce_log 18
loot insert ~6 ~1 ~4 loot "rsf/cold_taiga"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 string 14
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 13
replaceitem block ~-6 ~1 ~5 slot.container 2 leather 8
replaceitem block ~-6 ~1 ~5 slot.container 3 rabbit_foot 3
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 15
replaceitem block ~-6 ~1 ~5 slot.container 9 flint_and_steel 1
replaceitem block ~-6 ~1 ~5 slot.container 10 campfire 5
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 8
replaceitem block ~-6 ~1 ~5 slot.container 12 cooked_mutton 13
replaceitem block ~-6 ~1 ~5 slot.container 13 sweet_berries 18
replaceitem block ~-6 ~1 ~5 slot.container 14 spruce_log 16
loot insert ~-6 ~1 ~5 loot "rsf/cold_taiga"
loot insert ~-6 ~1 ~5 loot "chests/igloo_chest"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
