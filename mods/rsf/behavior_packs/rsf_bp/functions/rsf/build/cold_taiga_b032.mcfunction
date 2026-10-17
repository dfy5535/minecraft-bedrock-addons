# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0800/4224 | 主题内编号: b032/128
# 地形主题 #07: 寒冷针叶林与覆雪树林 (cold_taiga) —— 带积雪双层斜顶与防风地暖火塘
# 建筑名称: 霜林抗寒系·断顶残垣古哨塔 (cold_taiga_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_taiga, cold_taiga_hills, cold_taiga_mutated, grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace leaves
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace leaves2
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace log
fill ~-6 ~1 ~-6 ~6 ~13 ~6 air [] replace log2
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 stone_bricks [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 stone_bricks [] replace water
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_brick_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 spruce_planks []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 deepslate_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
setblock ~0 ~-6 ~0 coal_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 2 gunpowder 7
replaceitem block ~0 ~-3 ~-2 slot.container 3 leather 10
replaceitem block ~0 ~-3 ~-2 slot.container 4 rabbit_foot 5
replaceitem block ~0 ~-3 ~-2 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 golden_apple 6
replaceitem block ~0 ~-3 ~-2 slot.container 10 flint_and_steel 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 campfire 2
replaceitem block ~0 ~-3 ~-2 slot.container 12 lantern 5
replaceitem block ~0 ~-3 ~-2 slot.container 13 cooked_mutton 10
replaceitem block ~0 ~-3 ~-2 slot.container 14 sweet_berries 15
loot insert ~0 ~-3 ~-2 loot "rsf/cold_taiga"
loot insert ~0 ~-3 ~-2 loot "chests/igloo_chest"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~9 ~4 stone_bricks []
fill ~-3 ~1 ~-3 ~3 ~8 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~9 ~-4 stripped_spruce_log []
fill ~-4 ~1 ~4 ~-4 ~9 ~4 stripped_spruce_log []
fill ~4 ~1 ~-4 ~4 ~9 ~-4 stripped_spruce_log []
fill ~4 ~1 ~4 ~4 ~9 ~4 stripped_spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~9 ~-4 ~4 ~9 ~4 stone_brick_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-4 ~8 ~-1 ~-4 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 stripped_spruce_log []
fill ~-5 ~0 ~2 ~-5 ~8 ~2 stripped_spruce_log []
fill ~5 ~0 ~-2 ~5 ~8 ~-2 stripped_spruce_log []
fill ~5 ~0 ~2 ~5 ~8 ~2 stripped_spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (cold_taiga 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~-4 ~0 ~5 ~-5 ~17 ~6 cobblestone []
setblock ~-4 ~1 ~5 campfire []
setblock ~-4 ~18 ~5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 12
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 17
replaceitem block ~-3 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~2 slot.container 3 string 11
replaceitem block ~-3 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~2 slot.container 5 leather 13
replaceitem block ~-3 ~1 ~2 slot.container 9 cooked_mutton 10
replaceitem block ~-3 ~1 ~2 slot.container 10 sweet_berries 15
replaceitem block ~-3 ~1 ~2 slot.container 11 spruce_log 20
replaceitem block ~-3 ~1 ~2 slot.container 12 coal 21
replaceitem block ~-3 ~1 ~2 slot.container 13 iron_ingot 12
replaceitem block ~-3 ~1 ~2 slot.container 14 leather_boots 1
loot insert ~-3 ~1 ~2 loot "rsf/cold_taiga"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon wolf ~1 ~1 ~1
summon fox ~0 ~-3 ~0
