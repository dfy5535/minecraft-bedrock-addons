# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3701/4224 | 主题内编号: b117/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·环柱生态标本采集馆 (crimson_forest_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 cooked_porkchop 16
replaceitem block ~4 ~-2 ~3 slot.container 1 gold_ingot 17
replaceitem block ~4 ~-2 ~3 slot.container 2 blaze_rod 4
replaceitem block ~4 ~-2 ~3 slot.container 3 magma_cream 7
replaceitem block ~4 ~-2 ~3 slot.container 4 ghast_tear 5
replaceitem block ~4 ~-2 ~3 slot.container 5 string 13
replaceitem block ~4 ~-2 ~3 slot.container 9 golden_helmet 1
replaceitem block ~4 ~-2 ~3 slot.container 10 crossbow 1
replaceitem block ~4 ~-2 ~3 slot.container 11 arrow 27
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 6
replaceitem block ~4 ~-2 ~3 slot.container 13 golden_carrot 13
replaceitem block ~4 ~-2 ~3 slot.container 14 crimson_stem 22
loot insert ~4 ~-2 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-2 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 polished_blackstone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 crimson_stem []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 crimson_stem []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 crimson_stem []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 crimson_stem []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 crimson_stem []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 crimson_stem []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 crimson_stem []
fill ~0 ~1 ~5 ~0 ~7 ~5 crimson_stem []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 crimson_stem []
fill ~2 ~1 ~5 ~2 ~7 ~5 crimson_stem []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 crimson_stem []
fill ~4 ~1 ~5 ~4 ~7 ~5 crimson_stem []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 crimson_stem []
fill ~6 ~1 ~5 ~6 ~7 ~5 crimson_stem []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 crimson_stem []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 crimson_stem []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 crimson_stem []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 crimson_stem []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 crimson_stem []
fill ~6 ~1 ~1 ~6 ~7 ~1 crimson_stem []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 crimson_stem []
fill ~6 ~1 ~3 ~6 ~7 ~3 crimson_stem []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 polished_blackstone_bricks []
fill ~-5 ~9 ~-4 ~5 ~10 ~4 glass []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 crimson_stem []
setblock ~-8 ~6 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 crimson_stem []
setblock ~-8 ~6 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 crimson_stem []
setblock ~8 ~6 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 crimson_stem []
setblock ~8 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~9 ~0 ~-8 ~9 ~6 ~-8 gilded_blackstone []
setblock ~9 ~7 ~-8 gold_block []
setblock ~9 ~8 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ghast_tear 8
replaceitem block ~5 ~1 ~3 slot.container 1 string 16
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 3 leather 12
replaceitem block ~5 ~1 ~3 slot.container 4 cooked_porkchop 11
replaceitem block ~5 ~1 ~3 slot.container 5 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 9 shroomlight 11
replaceitem block ~5 ~1 ~3 slot.container 10 crying_obsidian 12
replaceitem block ~5 ~1 ~3 slot.container 11 obsidian 8
replaceitem block ~5 ~1 ~3 slot.container 12 netherite_scrap 2
replaceitem block ~5 ~1 ~3 slot.container 13 golden_helmet 1
replaceitem block ~5 ~1 ~3 slot.container 14 crossbow 1
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 2 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 4 blaze_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 5 magma_cream 13
replaceitem block ~-5 ~1 ~4 slot.container 9 shroomlight 9
replaceitem block ~-5 ~1 ~4 slot.container 10 crying_obsidian 10
replaceitem block ~-5 ~1 ~4 slot.container 11 obsidian 13
replaceitem block ~-5 ~1 ~4 slot.container 12 netherite_scrap 7
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_helmet 1
replaceitem block ~-5 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-2 ~0
