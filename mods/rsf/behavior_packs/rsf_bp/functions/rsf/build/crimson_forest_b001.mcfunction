# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3585/4224 | 主题内编号: b001/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·三层阶梯圣火祭坛 (crimson_forest_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 crimson_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 crimson_planks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 crimson_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_nether_brick []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 polished_blackstone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 ghast_tear 5
replaceitem block ~3 ~-2 ~2 slot.container 1 string 13
replaceitem block ~3 ~-2 ~2 slot.container 2 ender_pearl 8
replaceitem block ~3 ~-2 ~2 slot.container 3 leather 17
replaceitem block ~3 ~-2 ~2 slot.container 4 cooked_porkchop 16
replaceitem block ~3 ~-2 ~2 slot.container 5 gold_ingot 17
replaceitem block ~3 ~-2 ~2 slot.container 9 arrow 28
replaceitem block ~3 ~-2 ~2 slot.container 10 golden_apple 7
replaceitem block ~3 ~-2 ~2 slot.container 11 golden_carrot 14
replaceitem block ~3 ~-2 ~2 slot.container 12 crimson_stem 16
replaceitem block ~3 ~-2 ~2 slot.container 13 shroomlight 7
replaceitem block ~3 ~-2 ~2 slot.container 14 crying_obsidian 8
loot insert ~3 ~-2 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-2 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 crimson_planks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 polished_blackstone_bricks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 polished_blackstone_bricks []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 crimson_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-4 ~-5 ~9 ~-4 crimson_stem []
setblock ~-5 ~10 ~-4 lantern []
fill ~-5 ~7 ~4 ~-5 ~9 ~4 crimson_stem []
setblock ~-5 ~10 ~4 lantern []
fill ~5 ~7 ~-4 ~5 ~9 ~-4 crimson_stem []
setblock ~5 ~10 ~-4 lantern []
fill ~5 ~7 ~4 ~5 ~9 ~4 crimson_stem []
setblock ~5 ~10 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 crimson_stem []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 crimson_stem []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 crimson_stem []
fill ~6 ~0 ~2 ~6 ~8 ~2 crimson_stem []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~8 ~0 ~-5 ~8 ~5 ~-5 gilded_blackstone []
setblock ~8 ~6 ~-5 gold_block []
setblock ~8 ~7 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 shroomlight []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 cooked_porkchop 11
replaceitem block ~4 ~1 ~2 slot.container 1 gold_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 2 blaze_rod 7
replaceitem block ~4 ~1 ~2 slot.container 3 magma_cream 10
replaceitem block ~4 ~1 ~2 slot.container 4 ghast_tear 8
replaceitem block ~4 ~1 ~2 slot.container 5 string 16
replaceitem block ~4 ~1 ~2 slot.container 9 obsidian 9
replaceitem block ~4 ~1 ~2 slot.container 10 netherite_scrap 3
replaceitem block ~4 ~1 ~2 slot.container 11 golden_helmet 1
replaceitem block ~4 ~1 ~2 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~2 slot.container 13 arrow 29
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 8
loot insert ~4 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 blaze_rod 10
replaceitem block ~-4 ~1 ~3 slot.container 1 magma_cream 13
replaceitem block ~-4 ~1 ~3 slot.container 2 ghast_tear 3
replaceitem block ~-4 ~1 ~3 slot.container 3 string 11
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 6
replaceitem block ~-4 ~1 ~3 slot.container 5 leather 15
replaceitem block ~-4 ~1 ~3 slot.container 9 obsidian 14
replaceitem block ~-4 ~1 ~3 slot.container 10 netherite_scrap 1
replaceitem block ~-4 ~1 ~3 slot.container 11 golden_helmet 1
replaceitem block ~-4 ~1 ~3 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~3 slot.container 13 arrow 27
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-4 ~1 ~3 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
