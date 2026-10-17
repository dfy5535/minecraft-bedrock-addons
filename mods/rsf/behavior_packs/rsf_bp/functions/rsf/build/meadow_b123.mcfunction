# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2043/4224 | 主题内编号: b123/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·四角塔楼领主城堡复合体 (meadow_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 campfire []
setblock ~4 ~-6 ~-5 campfire []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 leather 10
replaceitem block ~4 ~-4 ~5 slot.container 1 emerald 7
replaceitem block ~4 ~-4 ~5 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~5 slot.container 3 bone 15
replaceitem block ~4 ~-4 ~5 slot.container 4 rotten_flesh 16
replaceitem block ~4 ~-4 ~5 slot.container 5 arrow 23
replaceitem block ~4 ~-4 ~5 slot.container 9 bread 11
replaceitem block ~4 ~-4 ~5 slot.container 10 honey_bottle 5
replaceitem block ~4 ~-4 ~5 slot.container 11 emerald 9
replaceitem block ~4 ~-4 ~5 slot.container 12 iron_ingot 10
replaceitem block ~4 ~-4 ~5 slot.container 13 coal 17
replaceitem block ~4 ~-4 ~5 slot.container 14 saddle 1
loot insert ~4 ~-4 ~5 loot "rsf/meadow"
loot insert ~4 ~-4 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 cobblestone []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~10 ~-6 oak_planks []
setblock ~-6 ~11 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~10 ~7 oak_planks []
setblock ~-6 ~11 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~10 ~-6 oak_planks []
setblock ~5 ~11 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~10 ~7 oak_planks []
setblock ~5 ~11 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_brick_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 oak_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 oak_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~8 ~0 ~-4 ~8 ~7 ~-2 calcite []
setblock ~8 ~8 ~-3 emerald_block []
setblock ~8 ~9 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 2 leather 13
replaceitem block ~5 ~1 ~6 slot.container 3 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 bone 10
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_mutton 10
replaceitem block ~5 ~1 ~6 slot.container 11 bread 11
replaceitem block ~5 ~1 ~6 slot.container 12 honey_bottle 5
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 9
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~6 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
