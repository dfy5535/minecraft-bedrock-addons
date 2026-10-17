# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3653/4224 | 主题内编号: b069/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·藤蔓侵蚀十字修道院 (crimson_forest_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 polished_blackstone_bricks []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ender_pearl 8
replaceitem block ~0 ~-2 ~-3 slot.container 1 leather 17
replaceitem block ~0 ~-2 ~-3 slot.container 2 cooked_porkchop 16
replaceitem block ~0 ~-2 ~-3 slot.container 3 gold_ingot 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 blaze_rod 4
replaceitem block ~0 ~-2 ~-3 slot.container 5 magma_cream 7
replaceitem block ~0 ~-2 ~-3 slot.container 9 obsidian 10
replaceitem block ~0 ~-2 ~-3 slot.container 10 netherite_scrap 4
replaceitem block ~0 ~-2 ~-3 slot.container 11 golden_helmet 1
replaceitem block ~0 ~-2 ~-3 slot.container 12 crossbow 1
replaceitem block ~0 ~-2 ~-3 slot.container 13 arrow 30
replaceitem block ~0 ~-2 ~-3 slot.container 14 golden_apple 2
loot insert ~0 ~-2 ~-3 loot "rsf/crimson_forest"
loot insert ~0 ~-2 ~-3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 crimson_planks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 crimson_planks []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 crimson_fence []
setblock ~6 ~2 ~0 crimson_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 crimson_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 polished_blackstone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 crimson_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 crimson_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 crimson_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~9 ~0 ~-8 ~9 ~8 ~-8 gilded_blackstone []
setblock ~9 ~9 ~-8 gold_block []
setblock ~9 ~10 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ghast_tear 8
replaceitem block ~5 ~1 ~3 slot.container 1 string 16
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 3 leather 12
replaceitem block ~5 ~1 ~3 slot.container 4 cooked_porkchop 11
replaceitem block ~5 ~1 ~3 slot.container 5 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 9 arrow 30
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 11 golden_carrot 9
replaceitem block ~5 ~1 ~3 slot.container 12 crimson_stem 18
replaceitem block ~5 ~1 ~3 slot.container 13 shroomlight 9
replaceitem block ~5 ~1 ~3 slot.container 14 crying_obsidian 10
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 2 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 4 blaze_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 5 magma_cream 13
replaceitem block ~-5 ~1 ~4 slot.container 9 arrow 28
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_carrot 14
replaceitem block ~-5 ~1 ~4 slot.container 12 crimson_stem 16
replaceitem block ~-5 ~1 ~4 slot.container 13 shroomlight 7
replaceitem block ~-5 ~1 ~4 slot.container 14 crying_obsidian 8
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-2 ~0
