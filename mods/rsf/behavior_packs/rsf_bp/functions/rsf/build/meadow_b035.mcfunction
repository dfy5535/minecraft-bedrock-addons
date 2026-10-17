# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1955/4224 | 主题内编号: b035/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·巨石垒砌古战石冢 (meadow_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~0 ~-4 ~3 slot.container 1 arrow 23
replaceitem block ~0 ~-4 ~3 slot.container 2 string 8
replaceitem block ~0 ~-4 ~3 slot.container 3 gunpowder 7
replaceitem block ~0 ~-4 ~3 slot.container 4 leather 10
replaceitem block ~0 ~-4 ~3 slot.container 5 emerald 7
replaceitem block ~0 ~-4 ~3 slot.container 9 golden_apple 2
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-4 ~3 slot.container 11 lantern 7
replaceitem block ~0 ~-4 ~3 slot.container 12 cooked_mutton 14
replaceitem block ~0 ~-4 ~3 slot.container 13 bread 15
replaceitem block ~0 ~-4 ~3 slot.container 14 honey_bottle 9
loot insert ~0 ~-4 ~3 loot "rsf/meadow"
loot insert ~0 ~-4 ~3 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 rotten_flesh 14
replaceitem block ~0 ~-4 ~-3 slot.container 1 arrow 21
replaceitem block ~0 ~-4 ~-3 slot.container 2 string 14
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 13
replaceitem block ~0 ~-4 ~-3 slot.container 4 leather 8
replaceitem block ~0 ~-4 ~-3 slot.container 5 emerald 5
replaceitem block ~0 ~-4 ~-3 slot.container 9 golden_apple 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-3 slot.container 11 lantern 6
replaceitem block ~0 ~-4 ~-3 slot.container 12 cooked_mutton 13
replaceitem block ~0 ~-4 ~-3 slot.container 13 bread 14
replaceitem block ~0 ~-4 ~-3 slot.container 14 honey_bottle 8
loot insert ~0 ~-4 ~-3 loot "rsf/meadow"
loot insert ~0 ~-4 ~-3 loot "chests/pillager_outpost"

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

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 oak_planks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 calcite []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 hay_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 honeycomb_block []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 honeycomb_block []
setblock ~0 ~5 ~7 campfire []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 oak_log []
setblock ~-6 ~4 ~0 honeycomb_block []
setblock ~-6 ~5 ~0 campfire []
fill ~6 ~0 ~0 ~6 ~3 ~0 oak_log []
setblock ~6 ~4 ~0 honeycomb_block []
setblock ~6 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~6 ~0 ~-3 ~6 ~4 ~-1 calcite []
setblock ~6 ~5 ~-2 emerald_block []
setblock ~6 ~6 ~-2 lantern []

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
replaceitem block ~3 ~1 ~4 slot.container 9 coal 14
replaceitem block ~3 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 5
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 10
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_mutton 10
loot insert ~3 ~1 ~4 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
