# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3641/4224 | 主题内编号: b057/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·中央石棺帝王地下陵寝 (crimson_forest_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~9 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~9 ~8 air [] replace fire
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 crimson_planks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 crimson_planks [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 crimson_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 red_nether_brick []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 polished_blackstone_bricks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 blaze_rod 4
replaceitem block ~0 ~-3 ~-4 slot.container 1 magma_cream 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 ghast_tear 5
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 13
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 8
replaceitem block ~0 ~-3 ~-4 slot.container 5 leather 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 arrow 28
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_apple 7
replaceitem block ~0 ~-3 ~-4 slot.container 11 golden_carrot 14
replaceitem block ~0 ~-3 ~-4 slot.container 12 crimson_stem 16
replaceitem block ~0 ~-3 ~-4 slot.container 13 shroomlight 7
replaceitem block ~0 ~-3 ~-4 slot.container 14 crying_obsidian 8
loot insert ~0 ~-3 ~-4 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 crimson_planks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 polished_blackstone_bricks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 polished_blackstone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 shroomlight []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 polished_blackstone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 crimson_stem []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 crimson_stem []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 crimson_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~9 ~0 ~-9 ~9 ~6 ~-9 gilded_blackstone []
setblock ~9 ~7 ~-9 gold_block []
setblock ~9 ~8 ~-9 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-4 ~1 ~3 crafting_table []
setblock ~-3 ~1 ~3 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 cooked_porkchop 11
replaceitem block ~5 ~1 ~4 slot.container 1 gold_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 2 blaze_rod 7
replaceitem block ~5 ~1 ~4 slot.container 3 magma_cream 10
replaceitem block ~5 ~1 ~4 slot.container 4 ghast_tear 8
replaceitem block ~5 ~1 ~4 slot.container 5 string 16
replaceitem block ~5 ~1 ~4 slot.container 9 shroomlight 7
replaceitem block ~5 ~1 ~4 slot.container 10 crying_obsidian 8
replaceitem block ~5 ~1 ~4 slot.container 11 obsidian 11
replaceitem block ~5 ~1 ~4 slot.container 12 netherite_scrap 5
replaceitem block ~5 ~1 ~4 slot.container 13 golden_helmet 1
replaceitem block ~5 ~1 ~4 slot.container 14 crossbow 1
loot insert ~5 ~1 ~4 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 blaze_rod 10
replaceitem block ~-5 ~1 ~5 slot.container 1 magma_cream 13
replaceitem block ~-5 ~1 ~5 slot.container 2 ghast_tear 3
replaceitem block ~-5 ~1 ~5 slot.container 3 string 11
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 6
replaceitem block ~-5 ~1 ~5 slot.container 5 leather 15
replaceitem block ~-5 ~1 ~5 slot.container 9 shroomlight 12
replaceitem block ~-5 ~1 ~5 slot.container 10 crying_obsidian 6
replaceitem block ~-5 ~1 ~5 slot.container 11 obsidian 9
replaceitem block ~-5 ~1 ~5 slot.container 12 netherite_scrap 3
replaceitem block ~-5 ~1 ~5 slot.container 13 golden_helmet 1
replaceitem block ~-5 ~1 ~5 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~5 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~5 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-3 ~0
