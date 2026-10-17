# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2016/4224 | 主题内编号: b096/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·高台三阶献祭神祠 (meadow_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 campfire []
setblock ~2 ~-7 ~-3 campfire []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~2 ~-5 ~3 slot.container 1 arrow 23
replaceitem block ~2 ~-5 ~3 slot.container 2 string 8
replaceitem block ~2 ~-5 ~3 slot.container 3 gunpowder 7
replaceitem block ~2 ~-5 ~3 slot.container 4 leather 10
replaceitem block ~2 ~-5 ~3 slot.container 5 emerald 7
replaceitem block ~2 ~-5 ~3 slot.container 9 golden_apple 6
replaceitem block ~2 ~-5 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~-5 ~3 slot.container 11 lantern 4
replaceitem block ~2 ~-5 ~3 slot.container 12 cooked_mutton 11
replaceitem block ~2 ~-5 ~3 slot.container 13 bread 12
replaceitem block ~2 ~-5 ~3 slot.container 14 honey_bottle 6
loot insert ~2 ~-5 ~3 loot "rsf/meadow"
loot insert ~2 ~-5 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 calcite []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 mossy_stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 honeycomb_block []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~6 ~0 ~-2 ~6 ~5 ~0 calcite []
setblock ~6 ~6 ~-1 emerald_block []
setblock ~6 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-3 ~1 ~4 slot.container 2 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 3 string 11
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 5
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_mutton 12
replaceitem block ~-3 ~1 ~4 slot.container 12 bread 13
replaceitem block ~-3 ~1 ~4 slot.container 13 honey_bottle 7
replaceitem block ~-3 ~1 ~4 slot.container 14 emerald 11
loot insert ~-3 ~1 ~4 loot "rsf/meadow"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 3 leather 8
replaceitem block ~3 ~1 ~4 slot.container 4 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 10
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_mutton 10
replaceitem block ~3 ~1 ~4 slot.container 12 bread 11
replaceitem block ~3 ~1 ~4 slot.container 13 honey_bottle 5
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 9
loot insert ~3 ~1 ~4 loot "rsf/meadow"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
