# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1927/4224 | 主题内编号: b007/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·八角星芒图腾祭坛 (meadow_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

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

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 air []
fill ~5 ~1 ~6 ~5 ~9 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 oak_log []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 oak_log []
fill ~4 ~1 ~5 ~4 ~8 ~5 oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 oak_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobblestone []
fill ~0 ~14 ~0 ~0 ~14 ~0 hay_block []
setblock ~0 ~15 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 oak_log []
setblock ~0 ~4 ~-8 honeycomb_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 oak_log []
setblock ~0 ~4 ~8 honeycomb_block []
setblock ~0 ~5 ~8 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 oak_log []
setblock ~-7 ~4 ~0 honeycomb_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 oak_log []
setblock ~7 ~4 ~0 honeycomb_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~7 ~0 ~-1 ~7 ~6 ~1 calcite []
setblock ~7 ~7 ~0 emerald_block []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 4 string 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 9 bread 12
replaceitem block ~4 ~1 ~5 slot.container 10 honey_bottle 6
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 13 coal 18
replaceitem block ~4 ~1 ~5 slot.container 14 saddle 1
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
