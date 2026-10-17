# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3643/4224 | 主题内编号: b059/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·阶梯金字塔法老墓室 (crimson_forest_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~11 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~11 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 red_nether_brick [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 red_nether_brick [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 crimson_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 blackstone []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 crimson_planks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ghast_tear 5
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 13
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 8
replaceitem block ~0 ~-3 ~-4 slot.container 3 leather 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 cooked_porkchop 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 gold_ingot 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 obsidian 14
replaceitem block ~0 ~-3 ~-4 slot.container 10 netherite_scrap 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 golden_helmet 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 crossbow 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 arrow 27
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 6
loot insert ~0 ~-3 ~-4 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 red_nether_brick []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 crimson_planks []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 blackstone []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 red_nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 crimson_planks []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 blackstone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gilded_blackstone []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 stripped_crimson_stem []
setblock ~-9 ~6 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 stripped_crimson_stem []
setblock ~-9 ~6 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 stripped_crimson_stem []
setblock ~9 ~6 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 stripped_crimson_stem []
setblock ~9 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x8x5) ---
fill ~10 ~0 ~-8 ~10 ~8 ~-8 gilded_blackstone []
setblock ~10 ~9 ~-8 gold_block []
setblock ~10 ~10 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 blaze_rod 7
replaceitem block ~6 ~1 ~4 slot.container 1 magma_cream 10
replaceitem block ~6 ~1 ~4 slot.container 2 ghast_tear 8
replaceitem block ~6 ~1 ~4 slot.container 3 string 16
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 11
replaceitem block ~6 ~1 ~4 slot.container 5 leather 12
replaceitem block ~6 ~1 ~4 slot.container 9 arrow 27
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~6 ~1 ~4 slot.container 11 golden_carrot 13
replaceitem block ~6 ~1 ~4 slot.container 12 crimson_stem 22
replaceitem block ~6 ~1 ~4 slot.container 13 shroomlight 6
replaceitem block ~6 ~1 ~4 slot.container 14 crying_obsidian 7
loot insert ~6 ~1 ~4 loot "rsf/crimson_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ghast_tear 3
replaceitem block ~-6 ~1 ~5 slot.container 1 string 11
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 6
replaceitem block ~-6 ~1 ~5 slot.container 3 leather 15
replaceitem block ~-6 ~1 ~5 slot.container 4 cooked_porkchop 14
replaceitem block ~-6 ~1 ~5 slot.container 5 gold_ingot 15
replaceitem block ~-6 ~1 ~5 slot.container 9 arrow 25
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 11 golden_carrot 11
replaceitem block ~-6 ~1 ~5 slot.container 12 crimson_stem 20
replaceitem block ~-6 ~1 ~5 slot.container 13 shroomlight 11
replaceitem block ~-6 ~1 ~5 slot.container 14 crying_obsidian 12
loot insert ~-6 ~1 ~5 loot "rsf/crimson_forest"
loot insert ~-6 ~1 ~5 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
