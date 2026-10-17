# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1952/4224 | 主题内编号: b032/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·断顶残垣古哨塔 (meadow_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 9x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 calcite [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 calcite [] replace water
fill ~-4 ~1 ~-6 ~4 ~11 ~6 air []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_brick_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mossy_cobblestone []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 mossy_stone_bricks []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 arrow 23
replaceitem block ~0 ~-2 ~-3 slot.container 1 string 8
replaceitem block ~0 ~-2 ~-3 slot.container 2 gunpowder 7
replaceitem block ~0 ~-2 ~-3 slot.container 3 leather 10
replaceitem block ~0 ~-2 ~-3 slot.container 4 emerald 7
replaceitem block ~0 ~-2 ~-3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 9 honey_bottle 5
replaceitem block ~0 ~-2 ~-3 slot.container 10 emerald 9
replaceitem block ~0 ~-2 ~-3 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-2 ~-3 slot.container 12 coal 17
replaceitem block ~0 ~-2 ~-3 slot.container 13 saddle 1
replaceitem block ~0 ~-2 ~-3 slot.container 14 golden_apple 1
loot insert ~0 ~-2 ~-3 loot "rsf/meadow"
loot insert ~0 ~-2 ~-3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~9 ~5 calcite []
fill ~-2 ~1 ~-4 ~2 ~8 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~9 ~-5 spruce_log []
fill ~-3 ~1 ~5 ~-3 ~9 ~5 spruce_log []
fill ~3 ~1 ~-5 ~3 ~9 ~-5 spruce_log []
fill ~3 ~1 ~5 ~3 ~9 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 spruce_fence []
setblock ~3 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~9 ~-5 ~3 ~9 ~5 stone_brick_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-3 ~8 ~-1 ~-3 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~8 ~-2 spruce_log []
fill ~-4 ~0 ~2 ~-4 ~8 ~2 spruce_log []
fill ~4 ~0 ~-2 ~4 ~8 ~-2 spruce_log []
fill ~4 ~0 ~2 ~4 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 5x6x5) ---
fill ~5 ~0 ~-1 ~5 ~6 ~1 calcite []
setblock ~5 ~7 ~0 emerald_block []
setblock ~5 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-2 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-2 ~1 ~4 slot.container 2 arrow 18
replaceitem block ~-2 ~1 ~4 slot.container 3 string 11
replaceitem block ~-2 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-2 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-2 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-2 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~-2 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-2 ~1 ~4 slot.container 12 lantern 6
replaceitem block ~-2 ~1 ~4 slot.container 13 cooked_mutton 13
replaceitem block ~-2 ~1 ~4 slot.container 14 bread 14
loot insert ~-2 ~1 ~4 loot "rsf/meadow"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~2 ~1 ~4 slot.container 1 string 14
replaceitem block ~2 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~2 ~1 ~4 slot.container 3 leather 8
replaceitem block ~2 ~1 ~4 slot.container 4 emerald 5
replaceitem block ~2 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~2 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~2 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~2 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~2 ~1 ~4 slot.container 12 lantern 4
replaceitem block ~2 ~1 ~4 slot.container 13 cooked_mutton 11
replaceitem block ~2 ~1 ~4 slot.container 14 bread 12
loot insert ~2 ~1 ~4 loot "rsf/meadow"
loot insert ~2 ~1 ~4 loot "chests/pillager_outpost"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon sheep ~1 ~1 ~1
summon donkey ~0 ~-2 ~0
