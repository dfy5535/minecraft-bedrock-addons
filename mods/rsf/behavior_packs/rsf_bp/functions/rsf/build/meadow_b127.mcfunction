# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2047/4224 | 主题内编号: b127/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·万神殿巨型穹顶与试炼宫 (meadow_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 hay_block []
setblock ~-4 ~-6 ~-5 campfire []
setblock ~4 ~-6 ~5 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 15
replaceitem block ~0 ~-4 ~5 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-4 ~5 slot.container 3 arrow 23
replaceitem block ~0 ~-4 ~5 slot.container 4 string 8
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 9 emerald 6
replaceitem block ~0 ~-4 ~5 slot.container 10 iron_ingot 7
replaceitem block ~0 ~-4 ~5 slot.container 11 coal 14
replaceitem block ~0 ~-4 ~5 slot.container 12 saddle 1
replaceitem block ~0 ~-4 ~5 slot.container 13 golden_apple 5
replaceitem block ~0 ~-4 ~5 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-4 ~5 loot "rsf/meadow"
loot insert ~0 ~-4 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 oak_planks []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 oak_log []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 oak_log []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 oak_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 oak_log []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 oak_log []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 oak_log []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 oak_log []
fill ~0 ~1 ~7 ~0 ~7 ~7 oak_log []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 oak_log []
fill ~2 ~1 ~7 ~2 ~7 ~7 oak_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 oak_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 oak_log []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 oak_log []
fill ~6 ~1 ~7 ~6 ~7 ~7 oak_log []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 oak_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 oak_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 oak_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 oak_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 oak_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 oak_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 oak_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 oak_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 oak_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 oak_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 oak_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 oak_planks []
fill ~-5 ~9 ~-6 ~5 ~10 ~6 glass []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 oak_log []
setblock ~0 ~4 ~-9 honeycomb_block []
setblock ~0 ~5 ~-9 campfire []
fill ~0 ~0 ~9 ~0 ~3 ~9 oak_log []
setblock ~0 ~4 ~9 honeycomb_block []
setblock ~0 ~5 ~9 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 honeycomb_block []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 honeycomb_block []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x10x5) ---
fill ~8 ~0 ~0 ~8 ~6 ~2 calcite []
setblock ~8 ~7 ~1 emerald_block []
setblock ~8 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 1 bone 10
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 11
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 18
replaceitem block ~5 ~1 ~6 slot.container 4 string 11
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 9 bread 13
replaceitem block ~5 ~1 ~6 slot.container 10 honey_bottle 7
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 11
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 13 coal 12
replaceitem block ~5 ~1 ~6 slot.container 14 saddle 1
loot insert ~5 ~1 ~6 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
