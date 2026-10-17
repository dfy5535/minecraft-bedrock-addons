# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1959/4224 | 主题内编号: b039/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·永恒圣火图腾方尖塔 (meadow_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone [] replace water
fill ~-4 ~1 ~-5 ~4 ~12 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 cobblestone []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 string 8
replaceitem block ~1 ~-3 ~2 slot.container 1 gunpowder 7
replaceitem block ~1 ~-3 ~2 slot.container 2 leather 10
replaceitem block ~1 ~-3 ~2 slot.container 3 emerald 7
replaceitem block ~1 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~1 ~-3 ~2 slot.container 5 bone 15
replaceitem block ~1 ~-3 ~2 slot.container 9 emerald 11
replaceitem block ~1 ~-3 ~2 slot.container 10 iron_ingot 12
replaceitem block ~1 ~-3 ~2 slot.container 11 coal 12
replaceitem block ~1 ~-3 ~2 slot.container 12 saddle 1
replaceitem block ~1 ~-3 ~2 slot.container 13 golden_apple 3
replaceitem block ~1 ~-3 ~2 slot.container 14 iron_pickaxe 1
loot insert ~1 ~-3 ~2 loot "rsf/meadow"
loot insert ~1 ~-3 ~2 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 oak_log []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 oak_log []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 oak_log []
fill ~3 ~1 ~4 ~3 ~10 ~4 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 oak_fence []
setblock ~3 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 oak_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cobblestone []
fill ~0 ~16 ~0 ~0 ~16 ~0 hay_block []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 oak_log []
setblock ~0 ~4 ~-6 honeycomb_block []
setblock ~0 ~5 ~-6 campfire []
fill ~0 ~0 ~6 ~0 ~3 ~6 oak_log []
setblock ~0 ~4 ~6 honeycomb_block []
setblock ~0 ~5 ~6 campfire []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 oak_log []
setblock ~-5 ~4 ~0 honeycomb_block []
setblock ~-5 ~5 ~0 campfire []
fill ~5 ~0 ~0 ~5 ~3 ~0 oak_log []
setblock ~5 ~4 ~0 honeycomb_block []
setblock ~5 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 5x6x2) ---
fill ~5 ~0 ~0 ~5 ~3 ~2 calcite []
setblock ~5 ~4 ~1 emerald_block []
setblock ~5 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 1 bone 10
replaceitem block ~2 ~1 ~3 slot.container 2 rotten_flesh 11
replaceitem block ~2 ~1 ~3 slot.container 3 arrow 18
replaceitem block ~2 ~1 ~3 slot.container 4 string 11
replaceitem block ~2 ~1 ~3 slot.container 5 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 9 golden_apple 7
replaceitem block ~2 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 11 lantern 5
replaceitem block ~2 ~1 ~3 slot.container 12 cooked_mutton 12
replaceitem block ~2 ~1 ~3 slot.container 13 bread 13
replaceitem block ~2 ~1 ~3 slot.container 14 honey_bottle 7
loot insert ~2 ~1 ~3 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
