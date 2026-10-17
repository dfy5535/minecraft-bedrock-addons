# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2039/4224 | 主题内编号: b119/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·半地下恒温洞穴苗圃 (meadow_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cobblestone [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cobblestone [] replace water
fill ~-5 ~1 ~-7 ~5 ~7 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 oak_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 oak_planks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~-2 ~-4 ~4 slot.container 1 arrow 23
replaceitem block ~-2 ~-4 ~4 slot.container 2 string 8
replaceitem block ~-2 ~-4 ~4 slot.container 3 gunpowder 7
replaceitem block ~-2 ~-4 ~4 slot.container 4 leather 10
replaceitem block ~-2 ~-4 ~4 slot.container 5 emerald 7
replaceitem block ~-2 ~-4 ~4 slot.container 9 emerald 9
replaceitem block ~-2 ~-4 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-2 ~-4 ~4 slot.container 11 coal 17
replaceitem block ~-2 ~-4 ~4 slot.container 12 saddle 1
replaceitem block ~-2 ~-4 ~4 slot.container 13 golden_apple 1
replaceitem block ~-2 ~-4 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-2 ~-4 ~4 loot "rsf/meadow"
loot insert ~-2 ~-4 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 cobblestone []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 oak_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~5 ~-6 ~4 ~5 ~6 oak_planks []
fill ~-3 ~6 ~-5 ~3 ~7 ~5 glass []
fill ~-2 ~6 ~-4 ~2 ~6 ~4 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 oak_fence []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~0 ~-3 ~6 ~3 ~-1 calcite []
setblock ~6 ~4 ~-2 emerald_block []
setblock ~6 ~5 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 bone 10
replaceitem block ~3 ~1 ~5 slot.container 2 rotten_flesh 11
replaceitem block ~3 ~1 ~5 slot.container 3 arrow 18
replaceitem block ~3 ~1 ~5 slot.container 4 string 11
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~3 ~1 ~5 slot.container 9 golden_apple 3
replaceitem block ~3 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~1 ~5 slot.container 11 lantern 8
replaceitem block ~3 ~1 ~5 slot.container 12 cooked_mutton 15
replaceitem block ~3 ~1 ~5 slot.container 13 bread 16
replaceitem block ~3 ~1 ~5 slot.container 14 honey_bottle 3
loot insert ~3 ~1 ~5 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
