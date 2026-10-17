# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3654/4224 | 主题内编号: b070/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·风化坍塌阶梯祭台 (crimson_forest_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 red_nether_brick []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 gold_ingot 17
replaceitem block ~4 ~-3 ~3 slot.container 1 blaze_rod 4
replaceitem block ~4 ~-3 ~3 slot.container 2 magma_cream 7
replaceitem block ~4 ~-3 ~3 slot.container 3 ghast_tear 5
replaceitem block ~4 ~-3 ~3 slot.container 4 string 13
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 8
replaceitem block ~4 ~-3 ~3 slot.container 9 netherite_scrap 4
replaceitem block ~4 ~-3 ~3 slot.container 10 golden_helmet 1
replaceitem block ~4 ~-3 ~3 slot.container 11 crossbow 1
replaceitem block ~4 ~-3 ~3 slot.container 12 arrow 30
replaceitem block ~4 ~-3 ~3 slot.container 13 golden_apple 2
replaceitem block ~4 ~-3 ~3 slot.container 14 golden_carrot 9
loot insert ~4 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 polished_blackstone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 crimson_planks []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 red_nether_brick []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 polished_blackstone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 polished_blackstone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 gilded_blackstone []
setblock ~0 ~4 ~-7 gilded_blackstone []
setblock ~0 ~5 ~-7 shroomlight []
fill ~0 ~0 ~7 ~0 ~3 ~7 gilded_blackstone []
setblock ~0 ~4 ~7 gilded_blackstone []
setblock ~0 ~5 ~7 shroomlight []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 gilded_blackstone []
setblock ~-8 ~4 ~0 gilded_blackstone []
setblock ~-8 ~5 ~0 shroomlight []
fill ~8 ~0 ~0 ~8 ~3 ~0 gilded_blackstone []
setblock ~8 ~4 ~0 gilded_blackstone []
setblock ~8 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~9 ~0 ~-6 ~9 ~9 ~-6 gilded_blackstone []
setblock ~9 ~10 ~-6 gold_block []
setblock ~9 ~11 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 16
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 11
replaceitem block ~-5 ~1 ~3 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 3 cooked_porkchop 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 5 blaze_rod 7
replaceitem block ~-5 ~1 ~3 slot.container 9 crimson_stem 16
replaceitem block ~-5 ~1 ~3 slot.container 10 shroomlight 7
replaceitem block ~-5 ~1 ~3 slot.container 11 crying_obsidian 8
replaceitem block ~-5 ~1 ~3 slot.container 12 obsidian 11
replaceitem block ~-5 ~1 ~3 slot.container 13 netherite_scrap 5
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_helmet 1
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
