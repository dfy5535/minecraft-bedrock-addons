# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1954/4224 | 主题内编号: b034/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子对称铭文方尖碑 (meadow_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 emerald 7
replaceitem block ~3 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 2 bone 15
replaceitem block ~3 ~-2 ~2 slot.container 3 rotten_flesh 16
replaceitem block ~3 ~-2 ~2 slot.container 4 arrow 23
replaceitem block ~3 ~-2 ~2 slot.container 5 string 8
replaceitem block ~3 ~-2 ~2 slot.container 9 saddle 1
replaceitem block ~3 ~-2 ~2 slot.container 10 golden_apple 6
replaceitem block ~3 ~-2 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-2 ~2 slot.container 12 lantern 4
replaceitem block ~3 ~-2 ~2 slot.container 13 cooked_mutton 11
replaceitem block ~3 ~-2 ~2 slot.container 14 bread 12
loot insert ~3 ~-2 ~2 loot "rsf/meadow"
loot insert ~3 ~-2 ~2 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~11 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~5 ~11 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~10 ~3 air []
fill ~3 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 spruce_planks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 spruce_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~16 ~0 emerald_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-1 ~7 ~3 ~1 calcite []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 arrow 18
replaceitem block ~-4 ~1 ~3 slot.container 1 string 11
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~3 slot.container 3 leather 13
replaceitem block ~-4 ~1 ~3 slot.container 4 emerald 10
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~3 slot.container 9 honey_bottle 4
replaceitem block ~-4 ~1 ~3 slot.container 10 emerald 8
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 9
replaceitem block ~-4 ~1 ~3 slot.container 12 coal 16
replaceitem block ~-4 ~1 ~3 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~3 loot "rsf/meadow"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~3 slot.container 1 leather 8
replaceitem block ~4 ~1 ~3 slot.container 2 emerald 5
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~3 slot.container 4 bone 13
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 14
replaceitem block ~4 ~1 ~3 slot.container 9 honey_bottle 9
replaceitem block ~4 ~1 ~3 slot.container 10 emerald 6
replaceitem block ~4 ~1 ~3 slot.container 11 iron_ingot 7
replaceitem block ~4 ~1 ~3 slot.container 12 coal 14
replaceitem block ~4 ~1 ~3 slot.container 13 saddle 1
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~4 ~1 ~3 loot "rsf/meadow"
loot insert ~4 ~1 ~3 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
