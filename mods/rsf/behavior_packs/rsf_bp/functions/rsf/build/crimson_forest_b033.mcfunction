# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3617/4224 | 主题内编号: b033/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·太阳金顶高耸方尖碑 (crimson_forest_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 12格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-5 ~6 ~15 ~5 air [] replace lava
fill ~-6 ~0 ~-5 ~6 ~15 ~5 air [] replace fire
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 crimson_planks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 crimson_planks [] replace lava
fill ~-5 ~0 ~-4 ~5 ~0 ~4 crimson_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_nether_brick []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 polished_blackstone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 polished_blackstone_bricks []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 blaze_rod 4
replaceitem block ~0 ~-2 ~-1 slot.container 1 magma_cream 7
replaceitem block ~0 ~-2 ~-1 slot.container 2 ghast_tear 5
replaceitem block ~0 ~-2 ~-1 slot.container 3 string 13
replaceitem block ~0 ~-2 ~-1 slot.container 4 ender_pearl 8
replaceitem block ~0 ~-2 ~-1 slot.container 5 leather 17
replaceitem block ~0 ~-2 ~-1 slot.container 9 golden_helmet 1
replaceitem block ~0 ~-2 ~-1 slot.container 10 crossbow 1
replaceitem block ~0 ~-2 ~-1 slot.container 11 arrow 27
replaceitem block ~0 ~-2 ~-1 slot.container 12 golden_apple 6
replaceitem block ~0 ~-2 ~-1 slot.container 13 golden_carrot 13
replaceitem block ~0 ~-2 ~-1 slot.container 14 crimson_stem 22
loot insert ~0 ~-2 ~-1 loot "rsf/crimson_forest"
loot insert ~0 ~-2 ~-1 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 crimson_planks []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 polished_blackstone_bricks []
fill ~-2 ~5 ~-1 ~2 ~12 ~1 polished_blackstone_bricks []
fill ~-2 ~1 ~-1 ~2 ~11 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 crimson_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 polished_blackstone_bricks []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 crimson_planks []
fill ~0 ~18 ~0 ~0 ~19 ~0 shroomlight []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~5 ~-5 crimson_stem []
setblock ~-6 ~6 ~-5 lantern []
fill ~-6 ~0 ~5 ~-6 ~5 ~5 crimson_stem []
setblock ~-6 ~6 ~5 lantern []
fill ~6 ~0 ~-5 ~6 ~5 ~-5 crimson_stem []
setblock ~6 ~6 ~-5 lantern []
fill ~6 ~0 ~5 ~6 ~5 ~5 crimson_stem []
setblock ~6 ~6 ~5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~0 ~-6 ~7 ~7 ~-6 gilded_blackstone []
setblock ~7 ~8 ~-6 gold_block []
setblock ~7 ~9 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 cooked_porkchop 11
replaceitem block ~3 ~1 ~1 slot.container 1 gold_ingot 12
replaceitem block ~3 ~1 ~1 slot.container 2 blaze_rod 7
replaceitem block ~3 ~1 ~1 slot.container 3 magma_cream 10
replaceitem block ~3 ~1 ~1 slot.container 4 ghast_tear 8
replaceitem block ~3 ~1 ~1 slot.container 5 string 16
replaceitem block ~3 ~1 ~1 slot.container 9 golden_carrot 13
replaceitem block ~3 ~1 ~1 slot.container 10 crimson_stem 22
replaceitem block ~3 ~1 ~1 slot.container 11 shroomlight 6
replaceitem block ~3 ~1 ~1 slot.container 12 crying_obsidian 7
replaceitem block ~3 ~1 ~1 slot.container 13 obsidian 10
replaceitem block ~3 ~1 ~1 slot.container 14 netherite_scrap 4
loot insert ~3 ~1 ~1 loot "rsf/crimson_forest"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 blaze_rod 10
replaceitem block ~-3 ~1 ~2 slot.container 1 magma_cream 13
replaceitem block ~-3 ~1 ~2 slot.container 2 ghast_tear 3
replaceitem block ~-3 ~1 ~2 slot.container 3 string 11
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 6
replaceitem block ~-3 ~1 ~2 slot.container 5 leather 15
replaceitem block ~-3 ~1 ~2 slot.container 9 golden_carrot 11
replaceitem block ~-3 ~1 ~2 slot.container 10 crimson_stem 20
replaceitem block ~-3 ~1 ~2 slot.container 11 shroomlight 11
replaceitem block ~-3 ~1 ~2 slot.container 12 crying_obsidian 12
replaceitem block ~-3 ~1 ~2 slot.container 13 obsidian 8
replaceitem block ~-3 ~1 ~2 slot.container 14 netherite_scrap 2
loot insert ~-3 ~1 ~2 loot "rsf/crimson_forest"
loot insert ~-3 ~1 ~2 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-2 ~0
