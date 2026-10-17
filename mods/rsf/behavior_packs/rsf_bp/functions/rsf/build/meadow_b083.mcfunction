# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2003/4224 | 主题内编号: b083/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·铁砧锻造与模具工坊 (meadow_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 1 bone 15
replaceitem block ~3 ~-3 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~3 ~-3 ~4 slot.container 3 arrow 23
replaceitem block ~3 ~-3 ~4 slot.container 4 string 8
replaceitem block ~3 ~-3 ~4 slot.container 5 gunpowder 7
replaceitem block ~3 ~-3 ~4 slot.container 9 coal 12
replaceitem block ~3 ~-3 ~4 slot.container 10 saddle 1
replaceitem block ~3 ~-3 ~4 slot.container 11 golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 13 lantern 8
replaceitem block ~3 ~-3 ~4 slot.container 14 cooked_mutton 15
loot insert ~3 ~-3 ~4 loot "rsf/meadow"
loot insert ~3 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 cobblestone []
fill ~-5 ~1 ~0 ~5 ~5 ~6 calcite []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-7 ~-6 ~7 ~7 oak_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-7 ~6 ~7 ~7 oak_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-6 ~-5 ~8 ~6 oak_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-6 ~5 ~8 ~6 oak_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~4 ~8 ~6 oak_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 oak_log []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 oak_log []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 oak_log []
fill ~6 ~0 ~2 ~6 ~5 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~0 ~-3 ~7 ~7 ~-1 calcite []
setblock ~7 ~8 ~-2 emerald_block []
setblock ~7 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 2 leather 13
replaceitem block ~4 ~1 ~5 slot.container 3 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 5
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_mutton 12
replaceitem block ~4 ~1 ~5 slot.container 11 bread 13
replaceitem block ~4 ~1 ~5 slot.container 12 honey_bottle 7
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 11
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 12
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0
