# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2046/4224 | 主题内编号: b126/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子主塔天桥宫殿与暗牢 (meadow_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 lantern []
setblock ~4 ~-5 ~-4 lantern []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 bone 15
replaceitem block ~4 ~-3 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~-3 ~4 slot.container 2 arrow 23
replaceitem block ~4 ~-3 ~4 slot.container 3 string 8
replaceitem block ~4 ~-3 ~4 slot.container 4 gunpowder 7
replaceitem block ~4 ~-3 ~4 slot.container 5 leather 10
replaceitem block ~4 ~-3 ~4 slot.container 9 cooked_mutton 14
replaceitem block ~4 ~-3 ~4 slot.container 10 bread 15
replaceitem block ~4 ~-3 ~4 slot.container 11 honey_bottle 9
replaceitem block ~4 ~-3 ~4 slot.container 12 emerald 6
replaceitem block ~4 ~-3 ~4 slot.container 13 iron_ingot 7
replaceitem block ~4 ~-3 ~4 slot.container 14 coal 14
loot insert ~4 ~-3 ~4 loot "rsf/meadow"
loot insert ~4 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~10 ~6 stone_bricks []
fill ~2 ~1 ~-6 ~6 ~10 ~6 stone_bricks []
fill ~-5 ~1 ~-5 ~-3 ~9 ~5 air []
fill ~3 ~1 ~-5 ~5 ~9 ~5 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 spruce_planks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 spruce_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~15 ~0 emerald_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 spruce_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~0 ~-2 ~8 ~5 ~0 calcite []
setblock ~8 ~6 ~-1 emerald_block []
setblock ~8 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 emerald 10
replaceitem block ~-5 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~5 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~5 slot.container 4 arrow 18
replaceitem block ~-5 ~1 ~5 slot.container 5 string 11
replaceitem block ~-5 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~5 slot.container 10 lantern 7
replaceitem block ~-5 ~1 ~5 slot.container 11 cooked_mutton 14
replaceitem block ~-5 ~1 ~5 slot.container 12 bread 15
replaceitem block ~-5 ~1 ~5 slot.container 13 honey_bottle 9
replaceitem block ~-5 ~1 ~5 slot.container 14 emerald 6
loot insert ~-5 ~1 ~5 loot "rsf/meadow"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 bone 13
replaceitem block ~5 ~1 ~5 slot.container 1 rotten_flesh 14
replaceitem block ~5 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~5 slot.container 3 string 14
replaceitem block ~5 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~5 slot.container 5 leather 8
replaceitem block ~5 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~5 slot.container 10 lantern 5
replaceitem block ~5 ~1 ~5 slot.container 11 cooked_mutton 12
replaceitem block ~5 ~1 ~5 slot.container 12 bread 13
replaceitem block ~5 ~1 ~5 slot.container 13 honey_bottle 7
replaceitem block ~5 ~1 ~5 slot.container 14 emerald 11
loot insert ~5 ~1 ~5 loot "rsf/meadow"
loot insert ~5 ~1 ~5 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
