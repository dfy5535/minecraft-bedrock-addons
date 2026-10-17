# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3673/4224 | 主题内编号: b089/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·四柱挑檐祈愿凉亭 (crimson_forest_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-5 ~6 ~11 ~5 air [] replace lava
fill ~-6 ~0 ~-5 ~6 ~11 ~5 air [] replace fire
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 crimson_planks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 crimson_planks [] replace lava
fill ~-5 ~0 ~-4 ~5 ~0 ~4 crimson_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_nether_brick []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~8 ~3 crimson_planks []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 crimson_stem []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 crimson_stem []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 crimson_stem []
fill ~4 ~1 ~3 ~4 ~8 ~3 crimson_stem []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 crimson_fence []
setblock ~4 ~2 ~0 crimson_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 crimson_slab []
fill ~-3 ~9 ~-2 ~3 ~10 ~2 polished_blackstone_bricks []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 polished_blackstone_brick_slab []
setblock ~0 ~12 ~0 shroomlight []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 polished_blackstone_bricks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 crimson_stem []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 crimson_stem []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 crimson_slab []
setblock ~0 ~3 ~-5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~7 ~0 ~-5 ~7 ~8 ~-5 gilded_blackstone []
setblock ~7 ~9 ~-5 gold_block []
setblock ~7 ~10 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 cooked_porkchop 11
replaceitem block ~3 ~1 ~1 slot.container 1 gold_ingot 12
replaceitem block ~3 ~1 ~1 slot.container 2 blaze_rod 7
replaceitem block ~3 ~1 ~1 slot.container 3 magma_cream 10
replaceitem block ~3 ~1 ~1 slot.container 4 ghast_tear 8
replaceitem block ~3 ~1 ~1 slot.container 5 string 16
replaceitem block ~3 ~1 ~1 slot.container 9 arrow 29
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 8
replaceitem block ~3 ~1 ~1 slot.container 11 golden_carrot 8
replaceitem block ~3 ~1 ~1 slot.container 12 crimson_stem 17
replaceitem block ~3 ~1 ~1 slot.container 13 shroomlight 8
replaceitem block ~3 ~1 ~1 slot.container 14 crying_obsidian 9
loot insert ~3 ~1 ~1 loot "rsf/crimson_forest"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 blaze_rod 10
replaceitem block ~-3 ~1 ~2 slot.container 1 magma_cream 13
replaceitem block ~-3 ~1 ~2 slot.container 2 ghast_tear 3
replaceitem block ~-3 ~1 ~2 slot.container 3 string 11
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 6
replaceitem block ~-3 ~1 ~2 slot.container 5 leather 15
replaceitem block ~-3 ~1 ~2 slot.container 9 arrow 27
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 6
replaceitem block ~-3 ~1 ~2 slot.container 11 golden_carrot 13
replaceitem block ~-3 ~1 ~2 slot.container 12 crimson_stem 22
replaceitem block ~-3 ~1 ~2 slot.container 13 shroomlight 6
replaceitem block ~-3 ~1 ~2 slot.container 14 crying_obsidian 7
loot insert ~-3 ~1 ~2 loot "rsf/crimson_forest"
loot insert ~-3 ~1 ~2 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
