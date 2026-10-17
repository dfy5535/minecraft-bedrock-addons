# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1939/4224 | 主题内编号: b019/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·琉璃穹顶圣物秘室 (meadow_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 calcite []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 hay_block []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 string 8
replaceitem block ~2 ~-3 ~0 slot.container 1 gunpowder 7
replaceitem block ~2 ~-3 ~0 slot.container 2 leather 10
replaceitem block ~2 ~-3 ~0 slot.container 3 emerald 7
replaceitem block ~2 ~-3 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-3 ~0 slot.container 5 bone 15
replaceitem block ~2 ~-3 ~0 slot.container 9 emerald 11
replaceitem block ~2 ~-3 ~0 slot.container 10 iron_ingot 12
replaceitem block ~2 ~-3 ~0 slot.container 11 coal 12
replaceitem block ~2 ~-3 ~0 slot.container 12 saddle 1
replaceitem block ~2 ~-3 ~0 slot.container 13 golden_apple 3
replaceitem block ~2 ~-3 ~0 slot.container 14 iron_pickaxe 1
loot insert ~2 ~-3 ~0 loot "rsf/meadow"
loot insert ~2 ~-3 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 oak_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 oak_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 oak_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 oak_planks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 oak_log []
setblock ~-6 ~5 ~-7 campfire []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 oak_log []
setblock ~-6 ~5 ~7 campfire []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 oak_log []
setblock ~6 ~5 ~-7 campfire []
fill ~6 ~0 ~7 ~6 ~4 ~7 oak_log []
setblock ~6 ~5 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~6 ~0 ~1 ~6 ~3 ~3 calcite []
setblock ~6 ~4 ~2 emerald_block []
setblock ~6 ~5 ~2 lantern []

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
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 1
replaceitem block ~3 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 6
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_mutton 13
replaceitem block ~3 ~1 ~4 slot.container 13 bread 14
replaceitem block ~3 ~1 ~4 slot.container 14 honey_bottle 8
loot insert ~3 ~1 ~4 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
