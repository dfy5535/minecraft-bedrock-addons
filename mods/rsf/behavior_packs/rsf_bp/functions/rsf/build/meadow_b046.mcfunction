# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1966/4224 | 主题内编号: b046/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·要塞校场比武演武台 (meadow_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~5 slot.container 0 arrow 23
replaceitem block ~4 ~-2 ~5 slot.container 1 string 8
replaceitem block ~4 ~-2 ~5 slot.container 2 gunpowder 7
replaceitem block ~4 ~-2 ~5 slot.container 3 leather 10
replaceitem block ~4 ~-2 ~5 slot.container 4 emerald 7
replaceitem block ~4 ~-2 ~5 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~5 slot.container 9 honey_bottle 5
replaceitem block ~4 ~-2 ~5 slot.container 10 emerald 9
replaceitem block ~4 ~-2 ~5 slot.container 11 iron_ingot 10
replaceitem block ~4 ~-2 ~5 slot.container 12 coal 17
replaceitem block ~4 ~-2 ~5 slot.container 13 saddle 1
replaceitem block ~4 ~-2 ~5 slot.container 14 golden_apple 1
loot insert ~4 ~-2 ~5 loot "rsf/meadow"
loot insert ~4 ~-2 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 spruce_planks []
setblock ~-6 ~9 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 spruce_planks []
setblock ~-6 ~9 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 spruce_planks []
setblock ~5 ~9 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~8 ~7 spruce_planks []
setblock ~5 ~9 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 oak_log []
setblock ~-5 ~10 ~-6 campfire []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 oak_log []
setblock ~-5 ~10 ~6 campfire []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 oak_log []
setblock ~5 ~10 ~-6 campfire []
fill ~5 ~7 ~6 ~5 ~9 ~6 oak_log []
setblock ~5 ~10 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 cobblestone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x10x4) ---
fill ~8 ~0 ~-4 ~8 ~5 ~-2 calcite []
setblock ~8 ~6 ~-3 emerald_block []
setblock ~8 ~7 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 emerald 10
replaceitem block ~-5 ~1 ~6 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~6 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~6 slot.container 4 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 5 string 11
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 4
replaceitem block ~-5 ~1 ~6 slot.container 11 cooked_mutton 11
replaceitem block ~-5 ~1 ~6 slot.container 12 bread 12
replaceitem block ~-5 ~1 ~6 slot.container 13 honey_bottle 6
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 10
loot insert ~-5 ~1 ~6 loot "rsf/meadow"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 13
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 14
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 3 string 14
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 5 leather 8
replaceitem block ~5 ~1 ~6 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 9
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_mutton 16
replaceitem block ~5 ~1 ~6 slot.container 12 bread 10
replaceitem block ~5 ~1 ~6 slot.container 13 honey_bottle 4
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 8
loot insert ~5 ~1 ~6 loot "rsf/meadow"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
