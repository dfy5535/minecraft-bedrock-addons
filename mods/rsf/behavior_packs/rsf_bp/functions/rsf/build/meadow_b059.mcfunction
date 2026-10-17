# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1979/4224 | 主题内编号: b059/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·阶梯金字塔法老墓室 (meadow_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 oak_planks []
setblock ~0 ~-7 ~0 honeycomb_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 leather 10
replaceitem block ~0 ~-4 ~-5 slot.container 1 emerald 7
replaceitem block ~0 ~-4 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 3 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-4 ~-5 slot.container 5 arrow 23
replaceitem block ~0 ~-4 ~-5 slot.container 9 emerald 7
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-4 ~-5 slot.container 11 coal 15
replaceitem block ~0 ~-4 ~-5 slot.container 12 saddle 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-4 ~-5 loot "rsf/meadow"
loot insert ~0 ~-4 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 oak_planks []
fill ~-4 ~5 ~-5 ~4 ~7 ~5 calcite []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 oak_planks []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 calcite []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 hay_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 oak_log []
setblock ~-8 ~5 ~-9 campfire []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 oak_log []
setblock ~-8 ~5 ~9 campfire []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 oak_log []
setblock ~8 ~5 ~-9 campfire []
fill ~8 ~0 ~9 ~8 ~4 ~9 oak_log []
setblock ~8 ~5 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~8 ~0 ~2 ~8 ~3 ~4 calcite []
setblock ~8 ~4 ~3 emerald_block []
setblock ~8 ~5 ~3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 2 leather 13
replaceitem block ~5 ~1 ~6 slot.container 3 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 bone 10
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_mutton 11
replaceitem block ~5 ~1 ~6 slot.container 13 bread 12
replaceitem block ~5 ~1 ~6 slot.container 14 honey_bottle 6
loot insert ~5 ~1 ~6 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
