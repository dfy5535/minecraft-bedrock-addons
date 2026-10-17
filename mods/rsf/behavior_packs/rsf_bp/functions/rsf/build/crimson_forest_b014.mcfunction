# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3598/4224 | 主题内编号: b014/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·暗渠蓄水池秘境地牢 (crimson_forest_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 6格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 crimson_planks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 lava []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-5 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-5 ~3 slot.container 0 leather 17
replaceitem block ~-4 ~-5 ~3 slot.container 1 cooked_porkchop 16
replaceitem block ~-4 ~-5 ~3 slot.container 2 gold_ingot 17
replaceitem block ~-4 ~-5 ~3 slot.container 3 blaze_rod 4
replaceitem block ~-4 ~-5 ~3 slot.container 4 magma_cream 7
replaceitem block ~-4 ~-5 ~3 slot.container 5 ghast_tear 5
replaceitem block ~-4 ~-5 ~3 slot.container 9 golden_apple 3
replaceitem block ~-4 ~-5 ~3 slot.container 10 golden_carrot 10
replaceitem block ~-4 ~-5 ~3 slot.container 11 crimson_stem 19
replaceitem block ~-4 ~-5 ~3 slot.container 12 shroomlight 10
replaceitem block ~-4 ~-5 ~3 slot.container 13 crying_obsidian 11
replaceitem block ~-4 ~-5 ~3 slot.container 14 obsidian 14
loot insert ~-4 ~-5 ~3 loot "rsf/crimson_forest"
loot insert ~-4 ~-5 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 polished_blackstone_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 polished_blackstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 polished_blackstone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 crimson_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 shroomlight []
setblock ~2 ~4 ~-8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~9 ~0 ~-7 ~9 ~8 ~-7 gilded_blackstone []
setblock ~9 ~9 ~-7 gold_block []
setblock ~9 ~10 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 16
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 11
replaceitem block ~-5 ~1 ~3 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 3 cooked_porkchop 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 5 blaze_rod 7
replaceitem block ~-5 ~1 ~3 slot.container 9 crying_obsidian 6
replaceitem block ~-5 ~1 ~3 slot.container 10 obsidian 9
replaceitem block ~-5 ~1 ~3 slot.container 11 netherite_scrap 3
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_helmet 1
replaceitem block ~-5 ~1 ~3 slot.container 13 crossbow 1
replaceitem block ~-5 ~1 ~3 slot.container 14 arrow 29
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
