# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3612/4224 | 主题内编号: b028/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·重檐挑角古钟楼 (crimson_forest_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~14 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~14 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 blackstone []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 blackstone_slab []
fill ~-4 ~6 ~-3 ~4 ~11 ~3 crimson_planks []
fill ~-3 ~6 ~-2 ~3 ~10 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~6 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~11 ~-5 ~6 ~11 ~5 blackstone_slab []
fill ~-4 ~12 ~-3 ~4 ~13 ~3 crimson_planks []
fill ~-5 ~14 ~-4 ~5 ~14 ~4 crimson_slab []
setblock ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 crimson_stem []
setblock ~-7 ~6 ~-6 shroomlight []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 crimson_stem []
setblock ~-7 ~6 ~6 shroomlight []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 crimson_stem []
setblock ~7 ~6 ~-6 shroomlight []
fill ~7 ~0 ~6 ~7 ~5 ~6 crimson_stem []
setblock ~7 ~6 ~6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~8 ~0 ~-5 ~8 ~7 ~-5 gilded_blackstone []
setblock ~8 ~8 ~-5 gold_block []
setblock ~8 ~9 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 magma_cream 10
replaceitem block ~-4 ~1 ~2 slot.container 1 ghast_tear 8
replaceitem block ~-4 ~1 ~2 slot.container 2 string 16
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 5 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 9 netherite_scrap 1
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_helmet 1
replaceitem block ~-4 ~1 ~2 slot.container 11 crossbow 1
replaceitem block ~-4 ~1 ~2 slot.container 12 arrow 27
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_carrot 13
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
