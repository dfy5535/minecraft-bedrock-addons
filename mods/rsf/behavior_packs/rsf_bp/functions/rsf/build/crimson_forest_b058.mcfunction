# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3642/4224 | 主题内编号: b058/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·十字拱顶家族陵墓 (crimson_forest_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 shroomlight []
setblock ~4 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 leather 17
replaceitem block ~0 ~-4 ~3 slot.container 1 cooked_porkchop 16
replaceitem block ~0 ~-4 ~3 slot.container 2 gold_ingot 17
replaceitem block ~0 ~-4 ~3 slot.container 3 blaze_rod 4
replaceitem block ~0 ~-4 ~3 slot.container 4 magma_cream 7
replaceitem block ~0 ~-4 ~3 slot.container 5 ghast_tear 5
replaceitem block ~0 ~-4 ~3 slot.container 9 crossbow 1
replaceitem block ~0 ~-4 ~3 slot.container 10 arrow 26
replaceitem block ~0 ~-4 ~3 slot.container 11 golden_apple 5
replaceitem block ~0 ~-4 ~3 slot.container 12 golden_carrot 12
replaceitem block ~0 ~-4 ~3 slot.container 13 crimson_stem 21
replaceitem block ~0 ~-4 ~3 slot.container 14 shroomlight 12
loot insert ~0 ~-4 ~3 loot "rsf/crimson_forest"
loot insert ~0 ~-4 ~3 loot "chests/bastion_treasure"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 leather 15
replaceitem block ~0 ~-4 ~-3 slot.container 1 cooked_porkchop 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 gold_ingot 15
replaceitem block ~0 ~-4 ~-3 slot.container 3 blaze_rod 10
replaceitem block ~0 ~-4 ~-3 slot.container 4 magma_cream 13
replaceitem block ~0 ~-4 ~-3 slot.container 5 ghast_tear 3
replaceitem block ~0 ~-4 ~-3 slot.container 9 crossbow 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 arrow 25
replaceitem block ~0 ~-4 ~-3 slot.container 11 golden_apple 4
replaceitem block ~0 ~-4 ~-3 slot.container 12 golden_carrot 11
replaceitem block ~0 ~-4 ~-3 slot.container 13 crimson_stem 20
replaceitem block ~0 ~-4 ~-3 slot.container 14 shroomlight 11
loot insert ~0 ~-4 ~-3 loot "rsf/crimson_forest"
loot insert ~0 ~-4 ~-3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 polished_blackstone_bricks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 polished_blackstone_wall []
setblock ~6 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 polished_blackstone_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 crimson_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 gilded_blackstone []
setblock ~-8 ~6 ~-7 shroomlight []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 gilded_blackstone []
setblock ~-8 ~6 ~7 shroomlight []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 gilded_blackstone []
setblock ~8 ~6 ~-7 shroomlight []
fill ~8 ~0 ~7 ~8 ~5 ~7 gilded_blackstone []
setblock ~8 ~6 ~7 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~9 ~0 ~-6 ~9 ~7 ~-6 gilded_blackstone []
setblock ~9 ~8 ~-6 gold_block []
setblock ~9 ~9 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 1 blaze_rod 7
replaceitem block ~-5 ~1 ~3 slot.container 2 magma_cream 10
replaceitem block ~-5 ~1 ~3 slot.container 3 ghast_tear 8
replaceitem block ~-5 ~1 ~3 slot.container 4 string 16
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 11
replaceitem block ~-5 ~1 ~3 slot.container 9 netherite_scrap 3
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_helmet 1
replaceitem block ~-5 ~1 ~3 slot.container 11 crossbow 1
replaceitem block ~-5 ~1 ~3 slot.container 12 arrow 29
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_carrot 8
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
