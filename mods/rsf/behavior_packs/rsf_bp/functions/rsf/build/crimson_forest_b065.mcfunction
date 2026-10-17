# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3649/4224 | 主题内编号: b065/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·断柱露天古神庙废墟 (crimson_forest_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~10 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~10 ~8 air [] replace fire
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 crimson_planks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 crimson_planks [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 crimson_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 red_nether_brick []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 polished_blackstone_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 ghast_tear 5
replaceitem block ~4 ~-2 ~4 slot.container 1 string 13
replaceitem block ~4 ~-2 ~4 slot.container 2 ender_pearl 8
replaceitem block ~4 ~-2 ~4 slot.container 3 leather 17
replaceitem block ~4 ~-2 ~4 slot.container 4 cooked_porkchop 16
replaceitem block ~4 ~-2 ~4 slot.container 5 gold_ingot 17
replaceitem block ~4 ~-2 ~4 slot.container 9 golden_carrot 13
replaceitem block ~4 ~-2 ~4 slot.container 10 crimson_stem 22
replaceitem block ~4 ~-2 ~4 slot.container 11 shroomlight 6
replaceitem block ~4 ~-2 ~4 slot.container 12 crying_obsidian 7
replaceitem block ~4 ~-2 ~4 slot.container 13 obsidian 10
replaceitem block ~4 ~-2 ~4 slot.container 14 netherite_scrap 4
loot insert ~4 ~-2 ~4 loot "rsf/crimson_forest"
loot insert ~4 ~-2 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 polished_blackstone_bricks []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 crimson_stem []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 crimson_stem []
fill ~-4 ~1 ~-6 ~-4 ~6 ~-6 crimson_stem []
fill ~-4 ~1 ~6 ~-4 ~6 ~6 crimson_stem []
fill ~-2 ~1 ~-6 ~-2 ~6 ~-6 crimson_stem []
fill ~-2 ~1 ~6 ~-2 ~6 ~6 crimson_stem []
fill ~0 ~1 ~-6 ~0 ~6 ~-6 crimson_stem []
fill ~0 ~1 ~6 ~0 ~6 ~6 crimson_stem []
fill ~2 ~1 ~-6 ~2 ~6 ~-6 crimson_stem []
fill ~2 ~1 ~6 ~2 ~6 ~6 crimson_stem []
fill ~4 ~1 ~-6 ~4 ~6 ~-6 crimson_stem []
fill ~4 ~1 ~6 ~4 ~6 ~6 crimson_stem []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 crimson_stem []
fill ~6 ~1 ~6 ~6 ~6 ~6 crimson_stem []
fill ~-6 ~1 ~-4 ~-6 ~6 ~-4 crimson_stem []
fill ~6 ~1 ~-4 ~6 ~6 ~-4 crimson_stem []
fill ~-6 ~1 ~-2 ~-6 ~6 ~-2 crimson_stem []
fill ~6 ~1 ~-2 ~6 ~6 ~-2 crimson_stem []
fill ~-6 ~1 ~0 ~-6 ~6 ~0 crimson_stem []
fill ~6 ~1 ~0 ~6 ~6 ~0 crimson_stem []
fill ~-6 ~1 ~2 ~-6 ~6 ~2 crimson_stem []
fill ~6 ~1 ~2 ~6 ~6 ~2 crimson_stem []
fill ~-6 ~1 ~4 ~-6 ~6 ~4 crimson_stem []
fill ~6 ~1 ~4 ~6 ~6 ~4 crimson_stem []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 crimson_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 crimson_stem []
setblock ~-8 ~6 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~5 ~8 crimson_stem []
setblock ~-8 ~6 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 crimson_stem []
setblock ~8 ~6 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~5 ~8 crimson_stem []
setblock ~8 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~9 ~0 ~-8 ~9 ~9 ~-8 gilded_blackstone []
setblock ~9 ~10 ~-8 gold_block []
setblock ~9 ~11 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 cooked_porkchop 11
replaceitem block ~5 ~1 ~4 slot.container 1 gold_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 2 blaze_rod 7
replaceitem block ~5 ~1 ~4 slot.container 3 magma_cream 10
replaceitem block ~5 ~1 ~4 slot.container 4 ghast_tear 8
replaceitem block ~5 ~1 ~4 slot.container 5 string 16
replaceitem block ~5 ~1 ~4 slot.container 9 golden_helmet 1
replaceitem block ~5 ~1 ~4 slot.container 10 crossbow 1
replaceitem block ~5 ~1 ~4 slot.container 11 arrow 28
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~5 ~1 ~4 slot.container 13 golden_carrot 14
replaceitem block ~5 ~1 ~4 slot.container 14 crimson_stem 16
loot insert ~5 ~1 ~4 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 blaze_rod 10
replaceitem block ~-5 ~1 ~5 slot.container 1 magma_cream 13
replaceitem block ~-5 ~1 ~5 slot.container 2 ghast_tear 3
replaceitem block ~-5 ~1 ~5 slot.container 3 string 11
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 6
replaceitem block ~-5 ~1 ~5 slot.container 5 leather 15
replaceitem block ~-5 ~1 ~5 slot.container 9 golden_helmet 1
replaceitem block ~-5 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~-5 ~1 ~5 slot.container 11 arrow 26
replaceitem block ~-5 ~1 ~5 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~5 slot.container 13 golden_carrot 12
replaceitem block ~-5 ~1 ~5 slot.container 14 crimson_stem 21
loot insert ~-5 ~1 ~5 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~5 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
