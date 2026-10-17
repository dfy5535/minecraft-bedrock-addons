# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1981/4224 | 主题内编号: b061/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子封土古墓地宫 (meadow_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 spruce_planks []
setblock ~0 ~-7 ~0 emerald_block []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 15
replaceitem block ~0 ~-4 ~-3 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-4 ~-3 slot.container 3 arrow 23
replaceitem block ~0 ~-4 ~-3 slot.container 4 string 8
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 7
replaceitem block ~0 ~-4 ~-3 slot.container 9 lantern 7
replaceitem block ~0 ~-4 ~-3 slot.container 10 cooked_mutton 14
replaceitem block ~0 ~-4 ~-3 slot.container 11 bread 15
replaceitem block ~0 ~-4 ~-3 slot.container 12 honey_bottle 9
replaceitem block ~0 ~-4 ~-3 slot.container 13 emerald 6
replaceitem block ~0 ~-4 ~-3 slot.container 14 iron_ingot 7
loot insert ~0 ~-4 ~-3 loot "rsf/meadow"
loot insert ~0 ~-4 ~-3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 mossy_stone_bricks []
fill ~2 ~1 ~-5 ~6 ~7 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 spruce_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 spruce_planks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_stone_bricks []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 spruce_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~8 ~0 ~-2 ~8 ~5 ~0 calcite []
setblock ~8 ~6 ~-1 emerald_block []
setblock ~8 ~7 ~-1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 leather 13
replaceitem block ~5 ~1 ~4 slot.container 1 emerald 10
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 bone 10
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~4 slot.container 5 arrow 18
replaceitem block ~5 ~1 ~4 slot.container 9 emerald 6
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 7
replaceitem block ~5 ~1 ~4 slot.container 11 coal 14
replaceitem block ~5 ~1 ~4 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~5 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~4 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
