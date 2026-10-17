# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1928/4224 | 主题内编号: b008/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·凯旋双拱圣物祭坛 (meadow_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 calcite [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 calcite [] replace water
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 calcite []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_bricks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 spruce_fence []
fill ~-4 ~8 ~-4 ~4 ~8 ~4 air []
setblock ~-5 ~8 ~-5 spruce_log []
setblock ~-5 ~9 ~-5 torch []
setblock ~-5 ~8 ~5 spruce_log []
setblock ~-5 ~9 ~5 torch []
setblock ~5 ~8 ~-5 spruce_log []
setblock ~5 ~9 ~-5 torch []
setblock ~5 ~8 ~5 spruce_log []
setblock ~5 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~0 ~0 ~7 ~7 ~2 calcite []
setblock ~7 ~8 ~1 emerald_block []
setblock ~7 ~9 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 2 arrow 18
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 5 leather 13
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 10 coal 16
replaceitem block ~-4 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~4 slot.container 14 lantern 5
loot insert ~-4 ~1 ~4 loot "rsf/meadow"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~4 slot.container 1 string 14
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 3 leather 8
replaceitem block ~4 ~1 ~4 slot.container 4 emerald 5
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 iron_ingot 7
replaceitem block ~4 ~1 ~4 slot.container 10 coal 14
replaceitem block ~4 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~4 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 14 lantern 10
loot insert ~4 ~1 ~4 loot "rsf/meadow"
loot insert ~4 ~1 ~4 loot "chests/pillager_outpost"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon sheep ~1 ~1 ~1
summon donkey ~0 ~2 ~0
