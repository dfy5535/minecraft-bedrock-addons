# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2002/4224 | 主题内编号: b082/128
# 地形主题 #16: 高山草甸与牧场石堡 (meadow) —— 带方解石山花露台与绿宝石祭坛
# 建筑名称: 高山牧场系·竖井井架矿工物资站 (meadow_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: meadow
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-6 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-6 ~3 lantern []
setblock ~2 ~-6 ~-3 lantern []
setblock ~2 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-4 ~3 slot.container 0 gunpowder 7
replaceitem block ~2 ~-4 ~3 slot.container 1 leather 10
replaceitem block ~2 ~-4 ~3 slot.container 2 emerald 7
replaceitem block ~2 ~-4 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-4 ~3 slot.container 4 bone 15
replaceitem block ~2 ~-4 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~2 ~-4 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~-4 ~3 slot.container 10 lantern 7
replaceitem block ~2 ~-4 ~3 slot.container 11 cooked_mutton 14
replaceitem block ~2 ~-4 ~3 slot.container 12 bread 15
replaceitem block ~2 ~-4 ~3 slot.container 13 honey_bottle 9
replaceitem block ~2 ~-4 ~3 slot.container 14 emerald 6
loot insert ~2 ~-4 ~3 loot "rsf/meadow"
loot insert ~2 ~-4 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 stone_brick_slab []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 cobblestone []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 spruce_planks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 emerald_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (meadow 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~6 ~0 ~-1 ~6 ~6 ~1 calcite []
setblock ~6 ~7 ~0 emerald_block []
setblock ~6 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 arrow 18
replaceitem block ~-3 ~1 ~4 slot.container 1 string 11
replaceitem block ~-3 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 3 leather 13
replaceitem block ~-3 ~1 ~4 slot.container 4 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~-3 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 7
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_mutton 14
replaceitem block ~-3 ~1 ~4 slot.container 14 bread 15
loot insert ~-3 ~1 ~4 loot "rsf/meadow"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 1 leather 8
replaceitem block ~3 ~1 ~4 slot.container 2 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 4 bone 13
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 14
replaceitem block ~3 ~1 ~4 slot.container 9 saddle 1
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_mutton 12
replaceitem block ~3 ~1 ~4 slot.container 14 bread 13
loot insert ~3 ~1 ~4 loot "rsf/meadow"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon sheep ~0 ~1 ~-1
summon donkey ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
