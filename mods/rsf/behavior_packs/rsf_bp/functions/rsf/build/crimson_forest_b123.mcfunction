# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3707/4224 | 主题内编号: b123/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·四角塔楼领主城堡复合体 (crimson_forest_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 red_nether_brick [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 red_nether_brick [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 crimson_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 lantern []
setblock ~5 ~-5 ~-4 lantern []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 ghast_tear 5
replaceitem block ~5 ~-3 ~4 slot.container 1 string 13
replaceitem block ~5 ~-3 ~4 slot.container 2 ender_pearl 8
replaceitem block ~5 ~-3 ~4 slot.container 3 leather 17
replaceitem block ~5 ~-3 ~4 slot.container 4 cooked_porkchop 16
replaceitem block ~5 ~-3 ~4 slot.container 5 gold_ingot 17
replaceitem block ~5 ~-3 ~4 slot.container 9 shroomlight 12
replaceitem block ~5 ~-3 ~4 slot.container 10 crying_obsidian 6
replaceitem block ~5 ~-3 ~4 slot.container 11 obsidian 9
replaceitem block ~5 ~-3 ~4 slot.container 12 netherite_scrap 3
replaceitem block ~5 ~-3 ~4 slot.container 13 golden_helmet 1
replaceitem block ~5 ~-3 ~4 slot.container 14 crossbow 1
loot insert ~5 ~-3 ~4 loot "rsf/crimson_forest"
loot insert ~5 ~-3 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 red_nether_brick []
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~11 ~-5 crimson_planks []
setblock ~-7 ~12 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~11 ~6 crimson_planks []
setblock ~-7 ~12 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~11 ~-5 crimson_planks []
setblock ~6 ~12 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~11 ~6 crimson_planks []
setblock ~6 ~12 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 crimson_planks []
fill ~-7 ~10 ~-6 ~7 ~10 ~6 nether_brick_fence []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 air []
setblock ~-7 ~10 ~-6 stripped_crimson_stem []
setblock ~-7 ~11 ~-6 lantern []
setblock ~-7 ~10 ~6 stripped_crimson_stem []
setblock ~-7 ~11 ~6 lantern []
setblock ~7 ~10 ~-6 stripped_crimson_stem []
setblock ~7 ~11 ~-6 lantern []
setblock ~7 ~10 ~6 stripped_crimson_stem []
setblock ~7 ~11 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 nether_brick_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x9x4) ---
fill ~10 ~0 ~-9 ~10 ~7 ~-9 gilded_blackstone []
setblock ~10 ~8 ~-9 gold_block []
setblock ~10 ~9 ~-9 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 blaze_rod 7
replaceitem block ~6 ~1 ~4 slot.container 1 magma_cream 10
replaceitem block ~6 ~1 ~4 slot.container 2 ghast_tear 8
replaceitem block ~6 ~1 ~4 slot.container 3 string 16
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 11
replaceitem block ~6 ~1 ~4 slot.container 5 leather 12
replaceitem block ~6 ~1 ~4 slot.container 9 golden_carrot 12
replaceitem block ~6 ~1 ~4 slot.container 10 crimson_stem 21
replaceitem block ~6 ~1 ~4 slot.container 11 shroomlight 12
replaceitem block ~6 ~1 ~4 slot.container 12 crying_obsidian 6
replaceitem block ~6 ~1 ~4 slot.container 13 obsidian 9
replaceitem block ~6 ~1 ~4 slot.container 14 netherite_scrap 3
loot insert ~6 ~1 ~4 loot "rsf/crimson_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ghast_tear 3
replaceitem block ~-6 ~1 ~5 slot.container 1 string 11
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 6
replaceitem block ~-6 ~1 ~5 slot.container 3 leather 15
replaceitem block ~-6 ~1 ~5 slot.container 4 cooked_porkchop 14
replaceitem block ~-6 ~1 ~5 slot.container 5 gold_ingot 15
replaceitem block ~-6 ~1 ~5 slot.container 9 golden_carrot 10
replaceitem block ~-6 ~1 ~5 slot.container 10 crimson_stem 19
replaceitem block ~-6 ~1 ~5 slot.container 11 shroomlight 10
replaceitem block ~-6 ~1 ~5 slot.container 12 crying_obsidian 11
replaceitem block ~-6 ~1 ~5 slot.container 13 obsidian 14
replaceitem block ~-6 ~1 ~5 slot.container 14 netherite_scrap 1
loot insert ~-6 ~1 ~5 loot "rsf/crimson_forest"
loot insert ~-6 ~1 ~5 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-3 ~0
