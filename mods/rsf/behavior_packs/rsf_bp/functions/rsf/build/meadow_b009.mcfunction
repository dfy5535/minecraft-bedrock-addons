# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1929/4224 | 主题内编号: b009/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·铁栏双室地下死牢 (meadow_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 lantern []
setblock ~3 ~-6 ~-4 lantern []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 string 8
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~3 ~-4 ~4 slot.container 2 leather 10
replaceitem block ~3 ~-4 ~4 slot.container 3 emerald 7
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 bone 15
replaceitem block ~3 ~-4 ~4 slot.container 9 lantern 10
replaceitem block ~3 ~-4 ~4 slot.container 10 cooked_mutton 10
replaceitem block ~3 ~-4 ~4 slot.container 11 bread 11
replaceitem block ~3 ~-4 ~4 slot.container 12 honey_bottle 5
replaceitem block ~3 ~-4 ~4 slot.container 13 emerald 9
replaceitem block ~3 ~-4 ~4 slot.container 14 iron_ingot 10
loot insert ~3 ~-4 ~4 loot "rsf/meadow"
loot insert ~3 ~-4 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 spruce_planks []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 cobblestone_wall []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 air []
setblock ~-5 ~6 ~-6 stripped_spruce_log []
setblock ~-5 ~7 ~-6 lantern []
setblock ~-5 ~6 ~6 stripped_spruce_log []
setblock ~-5 ~7 ~6 lantern []
setblock ~5 ~6 ~-6 stripped_spruce_log []
setblock ~5 ~7 ~-6 lantern []
setblock ~5 ~6 ~6 stripped_spruce_log []
setblock ~5 ~7 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 spruce_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~0 ~1 ~7 ~3 ~3 calcite []
setblock ~7 ~4 ~2 emerald_block []
setblock ~7 ~5 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 11
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 2 string 11
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 4 leather 13
replaceitem block ~4 ~1 ~5 slot.container 5 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_mutton 10
replaceitem block ~4 ~1 ~5 slot.container 13 bread 11
replaceitem block ~4 ~1 ~5 slot.container 14 honey_bottle 5
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
