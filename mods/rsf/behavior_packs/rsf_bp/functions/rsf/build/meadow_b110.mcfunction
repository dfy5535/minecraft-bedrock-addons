# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2030/4224 | 主题内编号: b110/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子附魔与酿造实验楼 (meadow_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 arrow 23
replaceitem block ~4 ~-2 ~3 slot.container 1 string 8
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 7
replaceitem block ~4 ~-2 ~3 slot.container 3 leather 10
replaceitem block ~4 ~-2 ~3 slot.container 4 emerald 7
replaceitem block ~4 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_ingot 9
replaceitem block ~4 ~-2 ~3 slot.container 10 coal 16
replaceitem block ~4 ~-2 ~3 slot.container 11 saddle 1
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 7
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 14 lantern 5
loot insert ~4 ~-2 ~3 loot "rsf/meadow"
loot insert ~4 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 spruce_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_brick_slab []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 cobblestone []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 oak_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 oak_log []
setblock ~0 ~4 ~-8 honeycomb_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 oak_log []
setblock ~0 ~4 ~8 honeycomb_block []
setblock ~0 ~5 ~8 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 oak_log []
setblock ~-7 ~4 ~0 honeycomb_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 oak_log []
setblock ~7 ~4 ~0 honeycomb_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~8 ~0 ~-3 ~8 ~4 ~-1 calcite []
setblock ~8 ~5 ~-2 emerald_block []
setblock ~8 ~6 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 emerald_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 emerald 10
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-5 ~1 ~4 slot.container 5 string 11
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_mutton 10
replaceitem block ~-5 ~1 ~4 slot.container 10 bread 11
replaceitem block ~-5 ~1 ~4 slot.container 11 honey_bottle 5
replaceitem block ~-5 ~1 ~4 slot.container 12 emerald 9
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 14 coal 17
loot insert ~-5 ~1 ~4 loot "rsf/meadow"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 13
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 14
replaceitem block ~5 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 3 string 14
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~4 slot.container 5 leather 8
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_mutton 15
replaceitem block ~5 ~1 ~4 slot.container 10 bread 16
replaceitem block ~5 ~1 ~4 slot.container 11 honey_bottle 3
replaceitem block ~5 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~5 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 14 coal 15
loot insert ~5 ~1 ~4 loot "rsf/meadow"
loot insert ~5 ~1 ~4 loot "chests/pillager_outpost"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon sheep ~1 ~1 ~1
summon donkey ~0 ~-2 ~0
