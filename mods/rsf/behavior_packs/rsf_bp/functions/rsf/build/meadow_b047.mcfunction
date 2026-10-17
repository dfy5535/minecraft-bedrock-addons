# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1967/4224 | 主题内编号: b047/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·深渊跨桥决斗长台 (meadow_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 oak_log []
setblock ~-6 ~9 ~-5 campfire []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 oak_log []
setblock ~-6 ~9 ~5 campfire []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 oak_log []
setblock ~6 ~9 ~-5 campfire []
fill ~6 ~6 ~5 ~6 ~8 ~5 oak_log []
setblock ~6 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 oak_log []
setblock ~-8 ~5 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 oak_log []
setblock ~-8 ~5 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 oak_log []
setblock ~8 ~5 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~4 ~7 oak_log []
setblock ~8 ~5 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~8 ~0 ~-1 ~8 ~6 ~1 calcite []
setblock ~8 ~7 ~0 emerald_block []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 1 bone 10
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 11
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 18
replaceitem block ~5 ~1 ~4 slot.container 4 string 11
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~4 slot.container 9 bread 10
replaceitem block ~5 ~1 ~4 slot.container 10 honey_bottle 4
replaceitem block ~5 ~1 ~4 slot.container 11 emerald 8
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 13 coal 16
replaceitem block ~5 ~1 ~4 slot.container 14 saddle 1
loot insert ~5 ~1 ~4 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~-4 ~0
