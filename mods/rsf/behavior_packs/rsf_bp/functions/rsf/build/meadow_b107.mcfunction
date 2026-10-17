# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2027/4224 | 主题内编号: b107/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·观星高塔与秘术地宫 (meadow_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 calcite []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 hay_block []
setblock ~0 ~-7 ~0 campfire []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 string 8
replaceitem block ~2 ~-4 ~0 slot.container 1 gunpowder 7
replaceitem block ~2 ~-4 ~0 slot.container 2 leather 10
replaceitem block ~2 ~-4 ~0 slot.container 3 emerald 7
replaceitem block ~2 ~-4 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-4 ~0 slot.container 5 bone 15
replaceitem block ~2 ~-4 ~0 slot.container 9 golden_apple 3
replaceitem block ~2 ~-4 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~-4 ~0 slot.container 11 lantern 8
replaceitem block ~2 ~-4 ~0 slot.container 12 cooked_mutton 15
replaceitem block ~2 ~-4 ~0 slot.container 13 bread 16
replaceitem block ~2 ~-4 ~0 slot.container 14 honey_bottle 3
loot insert ~2 ~-4 ~0 loot "rsf/meadow"
loot insert ~2 ~-4 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~9 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 oak_planks []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 glass []
fill ~-2 ~10 ~-3 ~2 ~10 ~3 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 oak_log []
fill ~-5 ~0 ~2 ~-5 ~8 ~2 oak_log []
fill ~5 ~0 ~-2 ~5 ~8 ~-2 oak_log []
fill ~5 ~0 ~2 ~5 ~8 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~6 ~0 ~-1 ~6 ~6 ~1 calcite []
setblock ~6 ~7 ~0 emerald_block []
setblock ~6 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 11
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 2 leather 13
replaceitem block ~3 ~1 ~4 slot.container 3 emerald 10
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 bread 14
replaceitem block ~3 ~1 ~4 slot.container 10 honey_bottle 8
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 12
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 13 coal 13
replaceitem block ~3 ~1 ~4 slot.container 14 saddle 1
loot insert ~3 ~1 ~4 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
