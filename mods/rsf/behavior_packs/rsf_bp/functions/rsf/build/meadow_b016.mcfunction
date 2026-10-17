# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1936/4224 | 主题内编号: b016/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·要塞地底重装暗牢 (meadow_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 calcite [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 calcite [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 calcite []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 torch []
setblock ~4 ~-5 ~0 torch []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 emerald 7
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 2 bone 15
replaceitem block ~0 ~-3 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~0 ~-3 ~5 slot.container 4 arrow 23
replaceitem block ~0 ~-3 ~5 slot.container 5 string 8
replaceitem block ~0 ~-3 ~5 slot.container 9 cooked_mutton 13
replaceitem block ~0 ~-3 ~5 slot.container 10 bread 14
replaceitem block ~0 ~-3 ~5 slot.container 11 honey_bottle 8
replaceitem block ~0 ~-3 ~5 slot.container 12 emerald 12
replaceitem block ~0 ~-3 ~5 slot.container 13 iron_ingot 6
replaceitem block ~0 ~-3 ~5 slot.container 14 coal 13
loot insert ~0 ~-3 ~5 loot "rsf/meadow"
loot insert ~0 ~-3 ~5 loot "chests/pillager_outpost"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 emerald 5
replaceitem block ~0 ~-3 ~-5 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-3 ~-5 slot.container 2 bone 13
replaceitem block ~0 ~-3 ~-5 slot.container 3 rotten_flesh 14
replaceitem block ~0 ~-3 ~-5 slot.container 4 arrow 21
replaceitem block ~0 ~-3 ~-5 slot.container 5 string 14
replaceitem block ~0 ~-3 ~-5 slot.container 9 cooked_mutton 12
replaceitem block ~0 ~-3 ~-5 slot.container 10 bread 13
replaceitem block ~0 ~-3 ~-5 slot.container 11 honey_bottle 7
replaceitem block ~0 ~-3 ~-5 slot.container 12 emerald 11
replaceitem block ~0 ~-3 ~-5 slot.container 13 iron_ingot 12
replaceitem block ~0 ~-3 ~-5 slot.container 14 coal 12
loot insert ~0 ~-3 ~-5 loot "rsf/meadow"
loot insert ~0 ~-3 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 calcite []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 stone_bricks []
setblock ~-6 ~9 ~-7 torch []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 stone_bricks []
setblock ~-6 ~9 ~6 torch []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 stone_bricks []
setblock ~5 ~9 ~-7 torch []
fill ~5 ~1 ~6 ~6 ~8 ~7 stone_bricks []
setblock ~5 ~9 ~6 torch []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 stone_bricks []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 spruce_fence []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 spruce_log []
setblock ~-6 ~8 ~-7 torch []
setblock ~-6 ~7 ~7 spruce_log []
setblock ~-6 ~8 ~7 torch []
setblock ~6 ~7 ~-7 spruce_log []
setblock ~6 ~8 ~-7 torch []
setblock ~6 ~7 ~7 spruce_log []
setblock ~6 ~8 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 spruce_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x10x4) ---
fill ~8 ~0 ~1 ~8 ~5 ~3 calcite []
setblock ~8 ~6 ~2 emerald_block []
setblock ~8 ~7 ~2 lantern []

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
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 9
replaceitem block ~-5 ~1 ~6 slot.container 11 cooked_mutton 16
replaceitem block ~-5 ~1 ~6 slot.container 12 bread 10
replaceitem block ~-5 ~1 ~6 slot.container 13 honey_bottle 4
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 8
loot insert ~-5 ~1 ~6 loot "rsf/meadow"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 3 leather 8
replaceitem block ~5 ~1 ~6 slot.container 4 emerald 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 7
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_mutton 14
replaceitem block ~5 ~1 ~6 slot.container 12 bread 15
replaceitem block ~5 ~1 ~6 slot.container 13 honey_bottle 9
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 6
loot insert ~5 ~1 ~6 loot "rsf/meadow"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
