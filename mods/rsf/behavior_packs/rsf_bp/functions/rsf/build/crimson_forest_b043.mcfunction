# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3627/4224 | 主题内编号: b043/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·十字四门试炼擂台 (crimson_forest_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace fire
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 red_nether_brick [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 red_nether_brick [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 crimson_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-2 ~-6 ~7 ~-1 ~6 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 red_nether_brick []
fill ~-7 ~1 ~-2 ~7 ~7 ~2 red_nether_brick []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 nether_brick_fence []
setblock ~7 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 crimson_planks []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 nether_brick_fence []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 stripped_crimson_stem []
setblock ~-7 ~9 ~-6 lantern []
setblock ~-7 ~8 ~6 stripped_crimson_stem []
setblock ~-7 ~9 ~6 lantern []
setblock ~7 ~8 ~-6 stripped_crimson_stem []
setblock ~7 ~9 ~-6 lantern []
setblock ~7 ~8 ~6 stripped_crimson_stem []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~9 ~-2 gilded_blackstone []
fill ~-8 ~0 ~2 ~-8 ~9 ~2 gilded_blackstone []
fill ~8 ~0 ~-2 ~8 ~9 ~-2 gilded_blackstone []
fill ~8 ~0 ~2 ~8 ~9 ~2 gilded_blackstone []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x7x4) ---
fill ~10 ~0 ~-7 ~10 ~7 ~-7 gilded_blackstone []
setblock ~10 ~8 ~-7 gold_block []
setblock ~10 ~9 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~5 fletching_table []
setblock ~0 ~1 ~5 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 blaze_rod 7
replaceitem block ~6 ~1 ~4 slot.container 1 magma_cream 10
replaceitem block ~6 ~1 ~4 slot.container 2 ghast_tear 8
replaceitem block ~6 ~1 ~4 slot.container 3 string 16
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 11
replaceitem block ~6 ~1 ~4 slot.container 5 leather 12
replaceitem block ~6 ~1 ~4 slot.container 9 golden_carrot 9
replaceitem block ~6 ~1 ~4 slot.container 10 crimson_stem 18
replaceitem block ~6 ~1 ~4 slot.container 11 shroomlight 9
replaceitem block ~6 ~1 ~4 slot.container 12 crying_obsidian 10
replaceitem block ~6 ~1 ~4 slot.container 13 obsidian 13
replaceitem block ~6 ~1 ~4 slot.container 14 netherite_scrap 7
loot insert ~6 ~1 ~4 loot "rsf/crimson_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ghast_tear 3
replaceitem block ~-6 ~1 ~5 slot.container 1 string 11
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 6
replaceitem block ~-6 ~1 ~5 slot.container 3 leather 15
replaceitem block ~-6 ~1 ~5 slot.container 4 cooked_porkchop 14
replaceitem block ~-6 ~1 ~5 slot.container 5 gold_ingot 15
replaceitem block ~-6 ~1 ~5 slot.container 9 golden_carrot 14
replaceitem block ~-6 ~1 ~5 slot.container 10 crimson_stem 16
replaceitem block ~-6 ~1 ~5 slot.container 11 shroomlight 7
replaceitem block ~-6 ~1 ~5 slot.container 12 crying_obsidian 8
replaceitem block ~-6 ~1 ~5 slot.container 13 obsidian 11
replaceitem block ~-6 ~1 ~5 slot.container 14 netherite_scrap 5
loot insert ~-6 ~1 ~5 loot "rsf/crimson_forest"
loot insert ~-6 ~1 ~5 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
