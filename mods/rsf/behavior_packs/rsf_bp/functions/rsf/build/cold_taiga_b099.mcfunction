# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0867/4224 | 主题内编号: b099/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·铁闸门瓮城防御堡 (cold_taiga_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 spruce_planks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 spruce_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 snow []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 stone_bricks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 ender_pearl 6
replaceitem block ~4 ~-2 ~2 slot.container 1 bone 17
replaceitem block ~4 ~-2 ~2 slot.container 2 arrow 22
replaceitem block ~4 ~-2 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~2 slot.container 4 string 8
replaceitem block ~4 ~-2 ~2 slot.container 5 gunpowder 7
replaceitem block ~4 ~-2 ~2 slot.container 9 leather_boots 1
replaceitem block ~4 ~-2 ~2 slot.container 10 golden_apple 4
replaceitem block ~4 ~-2 ~2 slot.container 11 flint_and_steel 1
replaceitem block ~4 ~-2 ~2 slot.container 12 campfire 7
replaceitem block ~4 ~-2 ~2 slot.container 13 lantern 10
replaceitem block ~4 ~-2 ~2 slot.container 14 cooked_mutton 8
loot insert ~4 ~-2 ~2 loot "rsf/cold_taiga"
loot insert ~4 ~-2 ~2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 spruce_planks []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 stone_bricks []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 spruce_fence []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 spruce_log []
setblock ~-6 ~9 ~-4 lantern []
setblock ~-6 ~8 ~4 spruce_log []
setblock ~-6 ~9 ~4 lantern []
setblock ~6 ~8 ~-4 spruce_log []
setblock ~6 ~9 ~-4 lantern []
setblock ~6 ~8 ~4 spruce_log []
setblock ~6 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-6 ~0 ~5 ~-7 ~12 ~6 cobblestone []
setblock ~-6 ~1 ~5 campfire []
setblock ~-6 ~13 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 string 11
replaceitem block ~5 ~1 ~2 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~2 slot.container 2 leather 13
replaceitem block ~5 ~1 ~2 slot.container 3 rabbit_foot 8
replaceitem block ~5 ~1 ~2 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 5 bone 12
replaceitem block ~5 ~1 ~2 slot.container 9 sweet_berries 18
replaceitem block ~5 ~1 ~2 slot.container 10 spruce_log 16
replaceitem block ~5 ~1 ~2 slot.container 11 coal 17
replaceitem block ~5 ~1 ~2 slot.container 12 iron_ingot 8
replaceitem block ~5 ~1 ~2 slot.container 13 leather_boots 1
replaceitem block ~5 ~1 ~2 slot.container 14 golden_apple 5
loot insert ~5 ~1 ~2 loot "rsf/cold_taiga"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 leather 8
replaceitem block ~-5 ~1 ~3 slot.container 1 rabbit_foot 3
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 9 sweet_berries 16
replaceitem block ~-5 ~1 ~3 slot.container 10 spruce_log 21
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 22
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 13 leather_boots 1
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 3
loot insert ~-5 ~1 ~3 loot "rsf/cold_taiga"
loot insert ~-5 ~1 ~3 loot "chests/igloo_chest"
summon spider ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
