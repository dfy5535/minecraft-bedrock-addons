# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1987/4224 | 主题内编号: b067/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·半掩埋下沉庭院遗迹 (meadow_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 bone 15
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-4 ~5 slot.container 2 arrow 23
replaceitem block ~0 ~-4 ~5 slot.container 3 string 8
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 5 leather 10
replaceitem block ~0 ~-4 ~5 slot.container 9 honey_bottle 7
replaceitem block ~0 ~-4 ~5 slot.container 10 emerald 11
replaceitem block ~0 ~-4 ~5 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-4 ~5 slot.container 12 coal 12
replaceitem block ~0 ~-4 ~5 slot.container 13 saddle 1
replaceitem block ~0 ~-4 ~5 slot.container 14 golden_apple 3
loot insert ~0 ~-4 ~5 loot "rsf/meadow"
loot insert ~0 ~-4 ~5 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 bone 13
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 arrow 21
replaceitem block ~0 ~-4 ~-5 slot.container 3 string 14
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 13
replaceitem block ~0 ~-4 ~-5 slot.container 5 leather 8
replaceitem block ~0 ~-4 ~-5 slot.container 9 honey_bottle 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 emerald 10
replaceitem block ~0 ~-4 ~-5 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-4 ~-5 slot.container 12 coal 18
replaceitem block ~0 ~-4 ~-5 slot.container 13 saddle 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 golden_apple 2
loot insert ~0 ~-4 ~-5 loot "rsf/meadow"
loot insert ~0 ~-4 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 oak_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 oak_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~7 ~0 ~-1 ~7 ~6 ~1 calcite []
setblock ~7 ~7 ~0 emerald_block []
setblock ~7 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 hay_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 2 leather 13
replaceitem block ~4 ~1 ~5 slot.container 3 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 bone 10
replaceitem block ~4 ~1 ~5 slot.container 9 bread 16
replaceitem block ~4 ~1 ~5 slot.container 10 honey_bottle 3
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 7
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 13 coal 15
replaceitem block ~4 ~1 ~5 slot.container 14 saddle 1
loot insert ~4 ~1 ~5 loot "rsf/meadow"
summon vindicator ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
