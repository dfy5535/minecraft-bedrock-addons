# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1983/4224 | 主题内编号: b063/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·方尖碑镇压古墓穴 (meadow_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
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

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 leather 10
replaceitem block ~0 ~-4 ~3 slot.container 1 emerald 7
replaceitem block ~0 ~-4 ~3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 3 bone 15
replaceitem block ~0 ~-4 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-4 ~3 slot.container 5 arrow 23
replaceitem block ~0 ~-4 ~3 slot.container 9 bread 11
replaceitem block ~0 ~-4 ~3 slot.container 10 honey_bottle 5
replaceitem block ~0 ~-4 ~3 slot.container 11 emerald 9
replaceitem block ~0 ~-4 ~3 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-4 ~3 slot.container 13 coal 17
replaceitem block ~0 ~-4 ~3 slot.container 14 saddle 1
loot insert ~0 ~-4 ~3 loot "rsf/meadow"
loot insert ~0 ~-4 ~3 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 leather 8
replaceitem block ~0 ~-4 ~-3 slot.container 1 emerald 5
replaceitem block ~0 ~-4 ~-3 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 3 bone 13
replaceitem block ~0 ~-4 ~-3 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-4 ~-3 slot.container 5 arrow 21
replaceitem block ~0 ~-4 ~-3 slot.container 9 bread 10
replaceitem block ~0 ~-4 ~-3 slot.container 10 honey_bottle 4
replaceitem block ~0 ~-4 ~-3 slot.container 11 emerald 8
replaceitem block ~0 ~-4 ~-3 slot.container 12 iron_ingot 9
replaceitem block ~0 ~-4 ~-3 slot.container 13 coal 16
replaceitem block ~0 ~-4 ~-3 slot.container 14 saddle 1
loot insert ~0 ~-4 ~-3 loot "rsf/meadow"
loot insert ~0 ~-4 ~-3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~10 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~10 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~10 ~5 air []
fill ~4 ~1 ~5 ~4 ~10 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 oak_log []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 oak_log []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 oak_log []
fill ~3 ~1 ~4 ~3 ~9 ~4 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 oak_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~15 ~0 hay_block []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 oak_log []
fill ~-5 ~0 ~2 ~-5 ~8 ~2 oak_log []
fill ~5 ~0 ~-2 ~5 ~8 ~-2 oak_log []
fill ~5 ~0 ~2 ~5 ~8 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~0 ~0 ~6 ~7 ~2 calcite []
setblock ~6 ~8 ~1 emerald_block []
setblock ~6 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 bone 10
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 11
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 18
replaceitem block ~3 ~1 ~4 slot.container 4 string 11
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 6
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_mutton 13
replaceitem block ~3 ~1 ~4 slot.container 11 bread 14
replaceitem block ~3 ~1 ~4 slot.container 12 honey_bottle 8
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 12
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 6
loot insert ~3 ~1 ~4 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
