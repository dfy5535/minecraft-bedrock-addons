# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3694/4224 | 主题内编号: b110/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子附魔与酿造实验楼 (crimson_forest_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~11 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~11 ~6 air [] replace fire
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 blackstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 red_nether_brick []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 gold_ingot 17
replaceitem block ~5 ~-3 ~2 slot.container 1 blaze_rod 4
replaceitem block ~5 ~-3 ~2 slot.container 2 magma_cream 7
replaceitem block ~5 ~-3 ~2 slot.container 3 ghast_tear 5
replaceitem block ~5 ~-3 ~2 slot.container 4 string 13
replaceitem block ~5 ~-3 ~2 slot.container 5 ender_pearl 8
replaceitem block ~5 ~-3 ~2 slot.container 9 netherite_scrap 2
replaceitem block ~5 ~-3 ~2 slot.container 10 golden_helmet 1
replaceitem block ~5 ~-3 ~2 slot.container 11 crossbow 1
replaceitem block ~5 ~-3 ~2 slot.container 12 arrow 28
replaceitem block ~5 ~-3 ~2 slot.container 13 golden_apple 7
replaceitem block ~5 ~-3 ~2 slot.container 14 golden_carrot 14
loot insert ~5 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~5 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 polished_blackstone_bricks []
fill ~2 ~1 ~-4 ~7 ~9 ~4 polished_blackstone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 crimson_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~8 ~-5 ~8 ~8 ~5 polished_blackstone_brick_slab []
fill ~-6 ~9 ~-3 ~6 ~10 ~3 red_nether_brick []
fill ~-7 ~11 ~-4 ~7 ~11 ~4 crimson_slab []
setblock ~0 ~12 ~0 gold_block []
setblock ~0 ~13 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 crimson_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 shroomlight []
setblock ~2 ~4 ~-7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x6x6) ---
fill ~10 ~0 ~-6 ~10 ~9 ~-6 gilded_blackstone []
setblock ~10 ~10 ~-6 gold_block []
setblock ~10 ~11 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 string 16
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 11
replaceitem block ~-6 ~1 ~2 slot.container 2 leather 12
replaceitem block ~-6 ~1 ~2 slot.container 3 cooked_porkchop 11
replaceitem block ~-6 ~1 ~2 slot.container 4 gold_ingot 12
replaceitem block ~-6 ~1 ~2 slot.container 5 blaze_rod 7
replaceitem block ~-6 ~1 ~2 slot.container 9 crimson_stem 21
replaceitem block ~-6 ~1 ~2 slot.container 10 shroomlight 12
replaceitem block ~-6 ~1 ~2 slot.container 11 crying_obsidian 6
replaceitem block ~-6 ~1 ~2 slot.container 12 obsidian 9
replaceitem block ~-6 ~1 ~2 slot.container 13 netherite_scrap 3
replaceitem block ~-6 ~1 ~2 slot.container 14 golden_helmet 1
loot insert ~-6 ~1 ~2 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
