# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3672/4224 | 主题内编号: b088/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·矿车铁轨转运仓库 (crimson_forest_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~10 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 blackstone [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 blackstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_blackstone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 crimson_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 magma_cream 7
replaceitem block ~3 ~-3 ~4 slot.container 1 ghast_tear 5
replaceitem block ~3 ~-3 ~4 slot.container 2 string 13
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 8
replaceitem block ~3 ~-3 ~4 slot.container 4 leather 17
replaceitem block ~3 ~-3 ~4 slot.container 5 cooked_porkchop 16
replaceitem block ~3 ~-3 ~4 slot.container 9 golden_apple 2
replaceitem block ~3 ~-3 ~4 slot.container 10 golden_carrot 9
replaceitem block ~3 ~-3 ~4 slot.container 11 crimson_stem 18
replaceitem block ~3 ~-3 ~4 slot.container 12 shroomlight 9
replaceitem block ~3 ~-3 ~4 slot.container 13 crying_obsidian 10
replaceitem block ~3 ~-3 ~4 slot.container 14 obsidian 13
loot insert ~3 ~-3 ~4 loot "rsf/crimson_forest"
loot insert ~3 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 blackstone []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 crimson_stem []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 crimson_stem []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 crimson_stem []
fill ~5 ~1 ~6 ~5 ~7 ~6 crimson_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 crimson_fence []
setblock ~5 ~2 ~0 crimson_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 blackstone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 blackstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 blackstone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 blackstone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 blackstone_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 crimson_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 crimson_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 shroomlight []
setblock ~2 ~4 ~-9 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~-7 ~8 ~7 ~-7 gilded_blackstone []
setblock ~8 ~8 ~-7 gold_block []
setblock ~8 ~9 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~4 slot.container 1 cooked_porkchop 11
replaceitem block ~-4 ~1 ~4 slot.container 2 gold_ingot 12
replaceitem block ~-4 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-4 ~1 ~4 slot.container 4 magma_cream 10
replaceitem block ~-4 ~1 ~4 slot.container 5 ghast_tear 8
replaceitem block ~-4 ~1 ~4 slot.container 9 netherite_scrap 5
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_helmet 1
replaceitem block ~-4 ~1 ~4 slot.container 11 crossbow 1
replaceitem block ~-4 ~1 ~4 slot.container 12 arrow 24
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_carrot 10
loot insert ~-4 ~1 ~4 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
