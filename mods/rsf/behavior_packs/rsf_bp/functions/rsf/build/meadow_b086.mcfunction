# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2006/4224 | 主题内编号: b086/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·重装矿石金库碉堡 (meadow_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 calcite []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 hay_block []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 bone 15
replaceitem block ~3 ~-3 ~0 slot.container 2 rotten_flesh 16
replaceitem block ~3 ~-3 ~0 slot.container 3 arrow 23
replaceitem block ~3 ~-3 ~0 slot.container 4 string 8
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 7
replaceitem block ~3 ~-3 ~0 slot.container 9 golden_apple 1
replaceitem block ~3 ~-3 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~-3 ~0 slot.container 11 lantern 6
replaceitem block ~3 ~-3 ~0 slot.container 12 cooked_mutton 13
replaceitem block ~3 ~-3 ~0 slot.container 13 bread 14
replaceitem block ~3 ~-3 ~0 slot.container 14 honey_bottle 8
loot insert ~3 ~-3 ~0 loot "rsf/meadow"
loot insert ~3 ~-3 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~8 ~-5 spruce_planks []
setblock ~-5 ~9 ~-6 lantern []
fill ~-5 ~1 ~5 ~-4 ~8 ~6 spruce_planks []
setblock ~-5 ~9 ~5 lantern []
fill ~4 ~1 ~-6 ~5 ~8 ~-5 spruce_planks []
setblock ~4 ~9 ~-6 lantern []
fill ~4 ~1 ~5 ~5 ~8 ~6 spruce_planks []
setblock ~4 ~9 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 spruce_planks []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 cobblestone_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 spruce_log []
setblock ~-5 ~8 ~-6 lantern []
setblock ~-5 ~7 ~6 spruce_log []
setblock ~-5 ~8 ~6 lantern []
setblock ~5 ~7 ~-6 spruce_log []
setblock ~5 ~8 ~-6 lantern []
setblock ~5 ~7 ~6 spruce_log []
setblock ~5 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~7 ~0 ~0 ~7 ~5 ~2 calcite []
setblock ~7 ~6 ~1 emerald_block []
setblock ~7 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 emerald 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 bone 10
replaceitem block ~-4 ~1 ~5 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~5 slot.container 4 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 5 string 11
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 9
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_mutton 16
replaceitem block ~-4 ~1 ~5 slot.container 12 bread 10
replaceitem block ~-4 ~1 ~5 slot.container 13 honey_bottle 4
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 8
loot insert ~-4 ~1 ~5 loot "rsf/meadow"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 13
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 14
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 string 14
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 5 leather 8
replaceitem block ~4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_mutton 14
replaceitem block ~4 ~1 ~5 slot.container 12 bread 15
replaceitem block ~4 ~1 ~5 slot.container 13 honey_bottle 9
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 6
loot insert ~4 ~1 ~5 loot "rsf/meadow"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon sheep ~1 ~1 ~1
summon donkey ~0 ~-2 ~0
