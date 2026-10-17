# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3589/4224 | 主题内编号: b005/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·下沉圣泉秘宝祭坛 (crimson_forest_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 crimson_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 crimson_planks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 crimson_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_nether_brick []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 polished_blackstone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-3 ~-3 ~2 slot.container 1 leather 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 cooked_porkchop 16
replaceitem block ~-3 ~-3 ~2 slot.container 3 gold_ingot 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 blaze_rod 4
replaceitem block ~-3 ~-3 ~2 slot.container 5 magma_cream 7
replaceitem block ~-3 ~-3 ~2 slot.container 9 shroomlight 12
replaceitem block ~-3 ~-3 ~2 slot.container 10 crying_obsidian 6
replaceitem block ~-3 ~-3 ~2 slot.container 11 obsidian 9
replaceitem block ~-3 ~-3 ~2 slot.container 12 netherite_scrap 3
replaceitem block ~-3 ~-3 ~2 slot.container 13 golden_helmet 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 crossbow 1
loot insert ~-3 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~-3 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 crimson_planks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-4 ~-5 ~8 ~-4 crimson_stem []
setblock ~-5 ~9 ~-4 lantern []
fill ~-5 ~6 ~4 ~-5 ~8 ~4 crimson_stem []
setblock ~-5 ~9 ~4 lantern []
fill ~5 ~6 ~-4 ~5 ~8 ~-4 crimson_stem []
setblock ~5 ~9 ~-4 lantern []
fill ~5 ~6 ~4 ~5 ~8 ~4 crimson_stem []
setblock ~5 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 crimson_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~8 ~0 ~-6 ~8 ~9 ~-6 gilded_blackstone []
setblock ~8 ~10 ~-6 gold_block []
setblock ~8 ~11 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ghast_tear 8
replaceitem block ~4 ~1 ~2 slot.container 1 string 16
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 11
replaceitem block ~4 ~1 ~2 slot.container 3 leather 12
replaceitem block ~4 ~1 ~2 slot.container 4 cooked_porkchop 11
replaceitem block ~4 ~1 ~2 slot.container 5 gold_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 9 golden_helmet 1
replaceitem block ~4 ~1 ~2 slot.container 10 crossbow 1
replaceitem block ~4 ~1 ~2 slot.container 11 arrow 24
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 13 golden_carrot 10
replaceitem block ~4 ~1 ~2 slot.container 14 crimson_stem 19
loot insert ~4 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-4 ~1 ~3 slot.container 1 leather 15
replaceitem block ~-4 ~1 ~3 slot.container 2 cooked_porkchop 14
replaceitem block ~-4 ~1 ~3 slot.container 3 gold_ingot 15
replaceitem block ~-4 ~1 ~3 slot.container 4 blaze_rod 10
replaceitem block ~-4 ~1 ~3 slot.container 5 magma_cream 13
replaceitem block ~-4 ~1 ~3 slot.container 9 golden_helmet 1
replaceitem block ~-4 ~1 ~3 slot.container 10 crossbow 1
replaceitem block ~-4 ~1 ~3 slot.container 11 arrow 29
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 8
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_carrot 8
replaceitem block ~-4 ~1 ~3 slot.container 14 crimson_stem 17
loot insert ~-4 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-4 ~1 ~3 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
