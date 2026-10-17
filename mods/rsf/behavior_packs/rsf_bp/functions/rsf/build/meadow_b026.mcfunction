# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1946/4224 | 主题内编号: b026/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·尖顶信标引航高塔 (meadow_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~13 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 cobblestone []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 emerald 7
replaceitem block ~1 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~1 ~-2 ~2 slot.container 2 bone 15
replaceitem block ~1 ~-2 ~2 slot.container 3 rotten_flesh 16
replaceitem block ~1 ~-2 ~2 slot.container 4 arrow 23
replaceitem block ~1 ~-2 ~2 slot.container 5 string 8
replaceitem block ~1 ~-2 ~2 slot.container 9 honey_bottle 6
replaceitem block ~1 ~-2 ~2 slot.container 10 emerald 10
replaceitem block ~1 ~-2 ~2 slot.container 11 iron_ingot 11
replaceitem block ~1 ~-2 ~2 slot.container 12 coal 18
replaceitem block ~1 ~-2 ~2 slot.container 13 saddle 1
replaceitem block ~1 ~-2 ~2 slot.container 14 golden_apple 2
loot insert ~1 ~-2 ~2 loot "rsf/meadow"
loot insert ~1 ~-2 ~2 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~12 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~12 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~12 ~4 air []
fill ~3 ~1 ~4 ~3 ~12 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~11 ~-3 spruce_log []
fill ~2 ~1 ~-3 ~2 ~11 ~-3 spruce_log []
fill ~-2 ~1 ~3 ~-2 ~11 ~3 spruce_log []
fill ~2 ~1 ~3 ~2 ~11 ~3 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 spruce_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 stone_bricks []
fill ~0 ~17 ~0 ~0 ~17 ~0 emerald_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~10 ~-2 spruce_log []
fill ~-4 ~0 ~2 ~-4 ~10 ~2 spruce_log []
fill ~4 ~0 ~-2 ~4 ~10 ~-2 spruce_log []
fill ~4 ~0 ~2 ~4 ~10 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 5x5x4) ---
fill ~5 ~0 ~-1 ~5 ~5 ~1 calcite []
setblock ~5 ~6 ~0 emerald_block []
setblock ~5 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 arrow 18
replaceitem block ~-2 ~1 ~3 slot.container 1 string 11
replaceitem block ~-2 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-2 ~1 ~3 slot.container 3 leather 13
replaceitem block ~-2 ~1 ~3 slot.container 4 emerald 10
replaceitem block ~-2 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-2 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~-2 ~1 ~3 slot.container 10 lantern 5
replaceitem block ~-2 ~1 ~3 slot.container 11 cooked_mutton 12
replaceitem block ~-2 ~1 ~3 slot.container 12 bread 13
replaceitem block ~-2 ~1 ~3 slot.container 13 honey_bottle 7
replaceitem block ~-2 ~1 ~3 slot.container 14 emerald 11
loot insert ~-2 ~1 ~3 loot "rsf/meadow"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~2 ~1 ~3 slot.container 1 leather 8
replaceitem block ~2 ~1 ~3 slot.container 2 emerald 5
replaceitem block ~2 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~2 ~1 ~3 slot.container 4 bone 13
replaceitem block ~2 ~1 ~3 slot.container 5 rotten_flesh 14
replaceitem block ~2 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 10 lantern 10
replaceitem block ~2 ~1 ~3 slot.container 11 cooked_mutton 10
replaceitem block ~2 ~1 ~3 slot.container 12 bread 11
replaceitem block ~2 ~1 ~3 slot.container 13 honey_bottle 5
replaceitem block ~2 ~1 ~3 slot.container 14 emerald 9
loot insert ~2 ~1 ~3 loot "rsf/meadow"
loot insert ~2 ~1 ~3 loot "chests/pillager_outpost"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon sheep ~1 ~1 ~1
summon donkey ~0 ~-2 ~0
