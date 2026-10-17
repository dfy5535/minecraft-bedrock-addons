# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1943/4224 | 主题内编号: b023/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·双层露台阁楼宝室 (meadow_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 cobblestone [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 cobblestone [] replace water
fill ~-5 ~1 ~-7 ~5 ~10 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 oak_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 oak_planks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~4 ~6 cobblestone []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-5 ~4 ~-7 ~5 ~4 ~7 oak_slab []
fill ~-3 ~5 ~-5 ~3 ~8 ~5 calcite []
fill ~-2 ~5 ~-4 ~2 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-7 ~5 ~8 ~7 oak_slab []
fill ~-3 ~9 ~-5 ~3 ~10 ~5 calcite []
fill ~-4 ~11 ~-6 ~4 ~11 ~6 stone_brick_slab []
setblock ~0 ~12 ~0 hay_block []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~10 ~2 calcite []
fill ~5 ~1 ~-1 ~6 ~9 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~11 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~0 ~-3 ~6 ~7 ~-1 calcite []
setblock ~6 ~8 ~-2 emerald_block []
setblock ~6 ~9 ~-2 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 bone 10
replaceitem block ~3 ~1 ~5 slot.container 2 rotten_flesh 11
replaceitem block ~3 ~1 ~5 slot.container 3 arrow 18
replaceitem block ~3 ~1 ~5 slot.container 4 string 11
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~3 ~1 ~5 slot.container 9 lantern 8
replaceitem block ~3 ~1 ~5 slot.container 10 cooked_mutton 15
replaceitem block ~3 ~1 ~5 slot.container 11 bread 16
replaceitem block ~3 ~1 ~5 slot.container 12 honey_bottle 3
replaceitem block ~3 ~1 ~5 slot.container 13 emerald 7
replaceitem block ~3 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~3 ~1 ~5 loot "rsf/meadow"
summon donkey ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1
summon skeleton ~0 ~2 ~0
