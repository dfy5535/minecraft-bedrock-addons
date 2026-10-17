# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3679/4224 | 主题内编号: b095/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子灯笼守卫神龛 (crimson_forest_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-5 ~8 ~11 ~5 air [] replace lava
fill ~-8 ~0 ~-5 ~8 ~11 ~5 air [] replace fire
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 red_nether_brick [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 red_nether_brick [] replace lava
fill ~-7 ~0 ~-4 ~7 ~0 ~4 crimson_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 red_nether_brick []
fill ~2 ~1 ~-3 ~6 ~9 ~3 red_nether_brick []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 crimson_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 crimson_slab []
fill ~-5 ~9 ~-2 ~5 ~10 ~2 blackstone []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 blackstone_slab []
setblock ~0 ~12 ~0 gilded_blackstone []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~5 ~-5 stripped_crimson_stem []
setblock ~-8 ~6 ~-5 lantern []
fill ~-8 ~0 ~5 ~-8 ~5 ~5 stripped_crimson_stem []
setblock ~-8 ~6 ~5 lantern []
fill ~8 ~0 ~-5 ~8 ~5 ~-5 stripped_crimson_stem []
setblock ~8 ~6 ~-5 lantern []
fill ~8 ~0 ~5 ~8 ~5 ~5 stripped_crimson_stem []
setblock ~8 ~6 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x5x6) ---
fill ~9 ~0 ~-5 ~9 ~9 ~-5 gilded_blackstone []
setblock ~9 ~10 ~-5 gold_block []
setblock ~9 ~11 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 shroomlight []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 ender_pearl 11
replaceitem block ~5 ~1 ~1 slot.container 1 leather 12
replaceitem block ~5 ~1 ~1 slot.container 2 cooked_porkchop 11
replaceitem block ~5 ~1 ~1 slot.container 3 gold_ingot 12
replaceitem block ~5 ~1 ~1 slot.container 4 blaze_rod 7
replaceitem block ~5 ~1 ~1 slot.container 5 magma_cream 10
replaceitem block ~5 ~1 ~1 slot.container 9 golden_helmet 1
replaceitem block ~5 ~1 ~1 slot.container 10 crossbow 1
replaceitem block ~5 ~1 ~1 slot.container 11 arrow 30
replaceitem block ~5 ~1 ~1 slot.container 12 golden_apple 2
replaceitem block ~5 ~1 ~1 slot.container 13 golden_carrot 9
replaceitem block ~5 ~1 ~1 slot.container 14 crimson_stem 18
loot insert ~5 ~1 ~1 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 cooked_porkchop 14
replaceitem block ~-5 ~1 ~2 slot.container 1 gold_ingot 15
replaceitem block ~-5 ~1 ~2 slot.container 2 blaze_rod 10
replaceitem block ~-5 ~1 ~2 slot.container 3 magma_cream 13
replaceitem block ~-5 ~1 ~2 slot.container 4 ghast_tear 3
replaceitem block ~-5 ~1 ~2 slot.container 5 string 11
replaceitem block ~-5 ~1 ~2 slot.container 9 golden_helmet 1
replaceitem block ~-5 ~1 ~2 slot.container 10 crossbow 1
replaceitem block ~-5 ~1 ~2 slot.container 11 arrow 28
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_apple 7
replaceitem block ~-5 ~1 ~2 slot.container 13 golden_carrot 14
replaceitem block ~-5 ~1 ~2 slot.container 14 crimson_stem 16
loot insert ~-5 ~1 ~2 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~2 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
