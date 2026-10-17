# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2031/4224 | 主题内编号: b111/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·地下禁忌书库与炼药室 (meadow_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 campfire []
setblock ~3 ~-6 ~0 campfire []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 leather 10
replaceitem block ~0 ~-4 ~4 slot.container 1 emerald 7
replaceitem block ~0 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 3 bone 15
replaceitem block ~0 ~-4 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-4 ~4 slot.container 5 arrow 23
replaceitem block ~0 ~-4 ~4 slot.container 9 coal 12
replaceitem block ~0 ~-4 ~4 slot.container 10 saddle 1
replaceitem block ~0 ~-4 ~4 slot.container 11 golden_apple 3
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~4 slot.container 13 lantern 8
replaceitem block ~0 ~-4 ~4 slot.container 14 cooked_mutton 15
loot insert ~0 ~-4 ~4 loot "rsf/meadow"
loot insert ~0 ~-4 ~4 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 leather 8
replaceitem block ~0 ~-4 ~-4 slot.container 1 emerald 5
replaceitem block ~0 ~-4 ~-4 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 3 bone 13
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-4 ~-4 slot.container 5 arrow 21
replaceitem block ~0 ~-4 ~-4 slot.container 9 coal 18
replaceitem block ~0 ~-4 ~-4 slot.container 10 saddle 1
replaceitem block ~0 ~-4 ~-4 slot.container 11 golden_apple 2
replaceitem block ~0 ~-4 ~-4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-4 slot.container 13 lantern 7
replaceitem block ~0 ~-4 ~-4 slot.container 14 cooked_mutton 14
loot insert ~0 ~-4 ~-4 loot "rsf/meadow"
loot insert ~0 ~-4 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 oak_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 oak_planks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 calcite []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 hay_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 oak_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~0 ~1 ~7 ~5 ~3 calcite []
setblock ~7 ~6 ~2 emerald_block []
setblock ~7 ~7 ~2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 bone 10
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 18
replaceitem block ~4 ~1 ~5 slot.container 4 string 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 7
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 11 coal 15
replaceitem block ~4 ~1 ~5 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon zombie ~0 ~1 ~-1
summon sheep ~-1 ~1 ~1
