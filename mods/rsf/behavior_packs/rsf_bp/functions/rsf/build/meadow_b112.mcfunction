# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2032/4224 | 主题内编号: b112/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·U型回廊学者修道院 (meadow_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 calcite [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 calcite [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 hay_block []
setblock ~-3 ~-6 ~-4 campfire []
setblock ~3 ~-6 ~4 campfire []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 string 8
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~0 ~-4 ~4 slot.container 2 leather 10
replaceitem block ~0 ~-4 ~4 slot.container 3 emerald 7
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 bone 15
replaceitem block ~0 ~-4 ~4 slot.container 9 coal 15
replaceitem block ~0 ~-4 ~4 slot.container 10 saddle 1
replaceitem block ~0 ~-4 ~4 slot.container 11 golden_apple 6
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~4 slot.container 13 lantern 4
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_mutton 11
loot insert ~0 ~-4 ~4 loot "rsf/meadow"
loot insert ~0 ~-4 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 calcite []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 stone_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 stone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~7 ~0 ~-4 ~7 ~6 ~-2 calcite []
setblock ~7 ~7 ~-3 emerald_block []
setblock ~7 ~8 ~-3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~5 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~5 slot.container 2 arrow 18
replaceitem block ~-4 ~1 ~5 slot.container 3 string 11
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~5 slot.container 9 saddle 1
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 9
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_mutton 16
replaceitem block ~-4 ~1 ~5 slot.container 14 bread 10
loot insert ~-4 ~1 ~5 loot "rsf/meadow"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 3 leather 8
replaceitem block ~4 ~1 ~5 slot.container 4 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_mutton 14
replaceitem block ~4 ~1 ~5 slot.container 14 bread 15
loot insert ~4 ~1 ~5 loot "rsf/meadow"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
