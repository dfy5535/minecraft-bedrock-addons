# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3634/4224 | 主题内编号: b050/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·L型探险家补给驿站 (crimson_forest_outpost_l_waystation)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 polished_blackstone_bricks []
fill ~-6 ~1 ~0 ~6 ~6 ~5 red_nether_brick []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 polished_blackstone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 polished_blackstone_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 crimson_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 crimson_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 crimson_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 crimson_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 blackstone_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~9 ~0 ~-7 ~9 ~9 ~-7 gilded_blackstone []
setblock ~9 ~10 ~-7 gold_block []
setblock ~9 ~11 ~-7 shroomlight []

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
replaceitem block ~-5 ~1 ~3 slot.container 9 crimson_stem 17
replaceitem block ~-5 ~1 ~3 slot.container 10 shroomlight 8
replaceitem block ~-5 ~1 ~3 slot.container 11 crying_obsidian 9
replaceitem block ~-5 ~1 ~3 slot.container 12 obsidian 12
replaceitem block ~-5 ~1 ~3 slot.container 13 netherite_scrap 6
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_helmet 1
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
