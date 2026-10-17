# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3703/4224 | 主题内编号: b119/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·半地下恒温洞穴苗圃 (crimson_forest_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace fire
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 red_nether_brick [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 red_nether_brick [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 crimson_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 crimson_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~3 slot.container 0 cooked_porkchop 16
replaceitem block ~-3 ~-3 ~3 slot.container 1 gold_ingot 17
replaceitem block ~-3 ~-3 ~3 slot.container 2 blaze_rod 4
replaceitem block ~-3 ~-3 ~3 slot.container 3 magma_cream 7
replaceitem block ~-3 ~-3 ~3 slot.container 4 ghast_tear 5
replaceitem block ~-3 ~-3 ~3 slot.container 5 string 13
replaceitem block ~-3 ~-3 ~3 slot.container 9 obsidian 9
replaceitem block ~-3 ~-3 ~3 slot.container 10 netherite_scrap 3
replaceitem block ~-3 ~-3 ~3 slot.container 11 golden_helmet 1
replaceitem block ~-3 ~-3 ~3 slot.container 12 crossbow 1
replaceitem block ~-3 ~-3 ~3 slot.container 13 arrow 29
replaceitem block ~-3 ~-3 ~3 slot.container 14 golden_apple 8
loot insert ~-3 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~-3 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 red_nether_brick []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 crimson_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 crimson_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 crimson_planks []
fill ~-4 ~7 ~-4 ~4 ~8 ~4 glass []
fill ~-3 ~7 ~-3 ~3 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 nether_brick_fence []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~0 ~-7 ~8 ~8 ~-7 gilded_blackstone []
setblock ~8 ~9 ~-7 gold_block []
setblock ~8 ~10 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 11
replaceitem block ~4 ~1 ~3 slot.container 1 leather 12
replaceitem block ~4 ~1 ~3 slot.container 2 cooked_porkchop 11
replaceitem block ~4 ~1 ~3 slot.container 3 gold_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 4 blaze_rod 7
replaceitem block ~4 ~1 ~3 slot.container 5 magma_cream 10
replaceitem block ~4 ~1 ~3 slot.container 9 arrow 24
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~3 slot.container 11 golden_carrot 10
replaceitem block ~4 ~1 ~3 slot.container 12 crimson_stem 19
replaceitem block ~4 ~1 ~3 slot.container 13 shroomlight 10
replaceitem block ~4 ~1 ~3 slot.container 14 crying_obsidian 11
loot insert ~4 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 cooked_porkchop 14
replaceitem block ~-4 ~1 ~4 slot.container 1 gold_ingot 15
replaceitem block ~-4 ~1 ~4 slot.container 2 blaze_rod 10
replaceitem block ~-4 ~1 ~4 slot.container 3 magma_cream 13
replaceitem block ~-4 ~1 ~4 slot.container 4 ghast_tear 3
replaceitem block ~-4 ~1 ~4 slot.container 5 string 11
replaceitem block ~-4 ~1 ~4 slot.container 9 arrow 29
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~-4 ~1 ~4 slot.container 11 golden_carrot 8
replaceitem block ~-4 ~1 ~4 slot.container 12 crimson_stem 17
replaceitem block ~-4 ~1 ~4 slot.container 13 shroomlight 8
replaceitem block ~-4 ~1 ~4 slot.container 14 crying_obsidian 9
loot insert ~-4 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-4 ~1 ~4 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
