# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1997/4224 | 主题内编号: b077/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双子鸟居图腾神道 (meadow_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
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

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 spruce_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~7 ~0 ~-1 ~7 ~6 ~1 calcite []
setblock ~7 ~7 ~0 emerald_block []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 leather 13
replaceitem block ~4 ~1 ~4 slot.container 1 emerald 10
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 3 bone 10
replaceitem block ~4 ~1 ~4 slot.container 4 rotten_flesh 11
replaceitem block ~4 ~1 ~4 slot.container 5 arrow 18
replaceitem block ~4 ~1 ~4 slot.container 9 bread 12
replaceitem block ~4 ~1 ~4 slot.container 10 honey_bottle 6
replaceitem block ~4 ~1 ~4 slot.container 11 emerald 10
replaceitem block ~4 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 13 coal 18
replaceitem block ~4 ~1 ~4 slot.container 14 saddle 1
loot insert ~4 ~1 ~4 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
