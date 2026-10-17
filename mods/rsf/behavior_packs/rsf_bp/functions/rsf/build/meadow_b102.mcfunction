# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2022/4224 | 主题内编号: b102/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子箭塔联防碉楼 (meadow_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 lantern []
setblock ~4 ~-4 ~-3 lantern []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 15
replaceitem block ~4 ~-2 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~-2 ~3 slot.container 2 arrow 23
replaceitem block ~4 ~-2 ~3 slot.container 3 string 8
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 7
replaceitem block ~4 ~-2 ~3 slot.container 5 leather 10
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 10 lantern 6
replaceitem block ~4 ~-2 ~3 slot.container 11 cooked_mutton 13
replaceitem block ~4 ~-2 ~3 slot.container 12 bread 14
replaceitem block ~4 ~-2 ~3 slot.container 13 honey_bottle 8
replaceitem block ~4 ~-2 ~3 slot.container 14 emerald 12
loot insert ~4 ~-2 ~3 loot "rsf/meadow"
loot insert ~4 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~9 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 spruce_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 spruce_planks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone_wall []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 lantern []
setblock ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 lantern []
setblock ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 lantern []
setblock ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~-1 ~8 ~6 ~1 calcite []
setblock ~8 ~7 ~0 emerald_block []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 honeycomb_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 emerald 10
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 18
replaceitem block ~-5 ~1 ~4 slot.container 5 string 11
replaceitem block ~-5 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 1
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_mutton 13
replaceitem block ~-5 ~1 ~4 slot.container 14 bread 14
loot insert ~-5 ~1 ~4 loot "rsf/meadow"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 13
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 14
replaceitem block ~5 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 3 string 14
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~4 slot.container 5 leather 8
replaceitem block ~5 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 4
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_mutton 11
replaceitem block ~5 ~1 ~4 slot.container 14 bread 12
loot insert ~5 ~1 ~4 loot "rsf/meadow"
loot insert ~5 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
