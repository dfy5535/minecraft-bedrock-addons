# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1923/4224 | 主题内编号: b003/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·环柱巨石方尖祭坛 (meadow_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 oak_planks []
setblock ~0 ~-6 ~0 honeycomb_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 leather 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 emerald 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 arrow 23
replaceitem block ~0 ~-3 ~-4 slot.container 9 coal 13
replaceitem block ~0 ~-3 ~-4 slot.container 10 saddle 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_mutton 16
loot insert ~0 ~-3 ~-4 loot "rsf/meadow"
loot insert ~0 ~-3 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 oak_planks []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 oak_log []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 oak_log []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 oak_log []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 oak_log []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 oak_log []
fill ~1 ~1 ~6 ~1 ~8 ~6 oak_log []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 oak_log []
fill ~3 ~1 ~6 ~3 ~8 ~6 oak_log []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 oak_log []
fill ~5 ~1 ~6 ~5 ~8 ~6 oak_log []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 oak_log []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 oak_log []
fill ~-5 ~1 ~-2 ~-5 ~8 ~-2 oak_log []
fill ~5 ~1 ~-2 ~5 ~8 ~-2 oak_log []
fill ~-5 ~1 ~0 ~-5 ~8 ~0 oak_log []
fill ~5 ~1 ~0 ~5 ~8 ~0 oak_log []
fill ~-5 ~1 ~2 ~-5 ~8 ~2 oak_log []
fill ~5 ~1 ~2 ~5 ~8 ~2 oak_log []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 oak_log []
fill ~5 ~1 ~4 ~5 ~8 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 oak_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~15 ~0 hay_block []
setblock ~0 ~16 ~0 campfire []

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

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~1 ~7 ~7 ~3 calcite []
setblock ~7 ~8 ~2 emerald_block []
setblock ~7 ~9 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 2 leather 13
replaceitem block ~4 ~1 ~5 slot.container 3 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_mutton 16
replaceitem block ~4 ~1 ~5 slot.container 11 bread 10
replaceitem block ~4 ~1 ~5 slot.container 12 honey_bottle 4
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
