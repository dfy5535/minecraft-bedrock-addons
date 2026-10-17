# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2048/4224 | 主题内编号: b128/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·U型紫禁朝堂大殿与地底金库 (meadow_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 calcite [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 calcite [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 7
replaceitem block ~4 ~-3 ~5 slot.container 1 leather 10
replaceitem block ~4 ~-3 ~5 slot.container 2 emerald 7
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 bone 15
replaceitem block ~4 ~-3 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~-3 ~5 slot.container 9 cooked_mutton 13
replaceitem block ~4 ~-3 ~5 slot.container 10 bread 14
replaceitem block ~4 ~-3 ~5 slot.container 11 honey_bottle 8
replaceitem block ~4 ~-3 ~5 slot.container 12 emerald 12
replaceitem block ~4 ~-3 ~5 slot.container 13 iron_ingot 6
replaceitem block ~4 ~-3 ~5 slot.container 14 coal 13
loot insert ~4 ~-3 ~5 loot "rsf/meadow"
loot insert ~4 ~-3 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 calcite []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-8 ~7 ~8 ~8 stone_brick_slab []
fill ~-5 ~9 ~-6 ~5 ~10 ~6 mossy_stone_bricks []
fill ~-6 ~11 ~-7 ~6 ~11 ~7 spruce_slab []
setblock ~0 ~12 ~0 honeycomb_block []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 spruce_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~1 ~8 ~7 ~3 calcite []
setblock ~8 ~8 ~2 emerald_block []
setblock ~8 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~6 slot.container 2 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 3 string 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 5 leather 13
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~6 slot.container 10 coal 17
replaceitem block ~-5 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 12 golden_apple 1
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 6
loot insert ~-5 ~1 ~6 loot "rsf/meadow"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 3 leather 8
replaceitem block ~5 ~1 ~6 slot.container 4 emerald 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 10 coal 15
replaceitem block ~5 ~1 ~6 slot.container 11 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 4
loot insert ~5 ~1 ~6 loot "rsf/meadow"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon sheep ~1 ~1 ~1
summon donkey ~0 ~-3 ~0
