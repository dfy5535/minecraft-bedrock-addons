# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2042/4224 | 主题内编号: b122/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·十字穹顶宏伟圣堂与墓窟 (meadow_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 spruce_planks []
setblock ~0 ~-6 ~0 hay_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 gunpowder 7
replaceitem block ~0 ~-3 ~-5 slot.container 1 leather 10
replaceitem block ~0 ~-3 ~-5 slot.container 2 emerald 7
replaceitem block ~0 ~-3 ~-5 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 4 bone 15
replaceitem block ~0 ~-3 ~-5 slot.container 5 rotten_flesh 16
replaceitem block ~0 ~-3 ~-5 slot.container 9 honey_bottle 4
replaceitem block ~0 ~-3 ~-5 slot.container 10 emerald 8
replaceitem block ~0 ~-3 ~-5 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-3 ~-5 slot.container 12 coal 16
replaceitem block ~0 ~-3 ~-5 slot.container 13 saddle 1
replaceitem block ~0 ~-3 ~-5 slot.container 14 golden_apple 7
loot insert ~0 ~-3 ~-5 loot "rsf/meadow"
loot insert ~0 ~-3 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~9 ~7 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~9 ~2 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~8 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~8 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 spruce_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~15 ~0 emerald_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~8 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~8 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~0 ~2 ~8 ~6 ~4 calcite []
setblock ~8 ~7 ~3 emerald_block []
setblock ~8 ~8 ~3 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 arrow 18
replaceitem block ~-5 ~1 ~6 slot.container 1 string 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 3 leather 13
replaceitem block ~-5 ~1 ~6 slot.container 4 emerald 10
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 saddle 1
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 5
replaceitem block ~-5 ~1 ~6 slot.container 13 cooked_mutton 12
replaceitem block ~-5 ~1 ~6 slot.container 14 bread 13
loot insert ~-5 ~1 ~6 loot "rsf/meadow"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 1 leather 8
replaceitem block ~5 ~1 ~6 slot.container 2 emerald 5
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 bone 13
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 14
replaceitem block ~5 ~1 ~6 slot.container 9 saddle 1
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_mutton 10
replaceitem block ~5 ~1 ~6 slot.container 14 bread 11
loot insert ~5 ~1 ~6 loot "rsf/meadow"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon sheep ~1 ~1 ~1
summon donkey ~0 ~-3 ~0
