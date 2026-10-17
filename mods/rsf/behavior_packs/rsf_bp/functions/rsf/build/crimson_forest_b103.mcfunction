# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3687/4224 | 主题内编号: b103/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·十字全向防御方堡 (crimson_forest_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 blackstone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 blaze_rod 4
replaceitem block ~4 ~-2 ~3 slot.container 1 magma_cream 7
replaceitem block ~4 ~-2 ~3 slot.container 2 ghast_tear 5
replaceitem block ~4 ~-2 ~3 slot.container 3 string 13
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 8
replaceitem block ~4 ~-2 ~3 slot.container 5 leather 17
replaceitem block ~4 ~-2 ~3 slot.container 9 obsidian 9
replaceitem block ~4 ~-2 ~3 slot.container 10 netherite_scrap 3
replaceitem block ~4 ~-2 ~3 slot.container 11 golden_helmet 1
replaceitem block ~4 ~-2 ~3 slot.container 12 crossbow 1
replaceitem block ~4 ~-2 ~3 slot.container 13 arrow 29
replaceitem block ~4 ~-2 ~3 slot.container 14 golden_apple 8
loot insert ~4 ~-2 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-2 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 red_nether_brick []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 red_nether_brick []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 nether_brick_fence []
setblock ~6 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 crimson_planks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 nether_brick_fence []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 stripped_crimson_stem []
setblock ~-6 ~10 ~-5 lantern []
setblock ~-6 ~9 ~5 stripped_crimson_stem []
setblock ~-6 ~10 ~5 lantern []
setblock ~6 ~9 ~-5 stripped_crimson_stem []
setblock ~6 ~10 ~-5 lantern []
setblock ~6 ~9 ~5 stripped_crimson_stem []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 stripped_crimson_stem []
setblock ~-8 ~6 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 stripped_crimson_stem []
setblock ~-8 ~6 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 stripped_crimson_stem []
setblock ~8 ~6 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 stripped_crimson_stem []
setblock ~8 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~9 ~0 ~-6 ~9 ~7 ~-6 gilded_blackstone []
setblock ~9 ~8 ~-6 gold_block []
setblock ~9 ~9 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 1 leather 12
replaceitem block ~5 ~1 ~3 slot.container 2 cooked_porkchop 11
replaceitem block ~5 ~1 ~3 slot.container 3 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 4 blaze_rod 7
replaceitem block ~5 ~1 ~3 slot.container 5 magma_cream 10
replaceitem block ~5 ~1 ~3 slot.container 9 golden_carrot 13
replaceitem block ~5 ~1 ~3 slot.container 10 crimson_stem 22
replaceitem block ~5 ~1 ~3 slot.container 11 shroomlight 6
replaceitem block ~5 ~1 ~3 slot.container 12 crying_obsidian 7
replaceitem block ~5 ~1 ~3 slot.container 13 obsidian 10
replaceitem block ~5 ~1 ~3 slot.container 14 netherite_scrap 4
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 2 blaze_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 3 magma_cream 13
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 3
replaceitem block ~-5 ~1 ~4 slot.container 5 string 11
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_carrot 11
replaceitem block ~-5 ~1 ~4 slot.container 10 crimson_stem 20
replaceitem block ~-5 ~1 ~4 slot.container 11 shroomlight 11
replaceitem block ~-5 ~1 ~4 slot.container 12 crying_obsidian 12
replaceitem block ~-5 ~1 ~4 slot.container 13 obsidian 8
replaceitem block ~-5 ~1 ~4 slot.container 14 netherite_scrap 2
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
