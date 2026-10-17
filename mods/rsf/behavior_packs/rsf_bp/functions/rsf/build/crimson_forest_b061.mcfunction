# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3645/4224 | 主题内编号: b061/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子封土古墓地宫 (crimson_forest_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace fire
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 crimson_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 crimson_planks [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 crimson_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 red_nether_brick []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 polished_blackstone_bricks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ender_pearl 8
replaceitem block ~0 ~-3 ~-2 slot.container 1 leather 17
replaceitem block ~0 ~-3 ~-2 slot.container 2 cooked_porkchop 16
replaceitem block ~0 ~-3 ~-2 slot.container 3 gold_ingot 17
replaceitem block ~0 ~-3 ~-2 slot.container 4 blaze_rod 4
replaceitem block ~0 ~-3 ~-2 slot.container 5 magma_cream 7
replaceitem block ~0 ~-3 ~-2 slot.container 9 golden_carrot 9
replaceitem block ~0 ~-3 ~-2 slot.container 10 crimson_stem 18
replaceitem block ~0 ~-3 ~-2 slot.container 11 shroomlight 9
replaceitem block ~0 ~-3 ~-2 slot.container 12 crying_obsidian 10
replaceitem block ~0 ~-3 ~-2 slot.container 13 obsidian 13
replaceitem block ~0 ~-3 ~-2 slot.container 14 netherite_scrap 7
loot insert ~0 ~-3 ~-2 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~-2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 crimson_planks []
fill ~2 ~1 ~-4 ~7 ~8 ~4 crimson_planks []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 polished_blackstone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 polished_blackstone_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 polished_blackstone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 shroomlight []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x5x2) ---
fill ~10 ~0 ~-5 ~10 ~5 ~-5 gilded_blackstone []
setblock ~10 ~6 ~-5 gold_block []
setblock ~10 ~7 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ghast_tear 8
replaceitem block ~6 ~1 ~2 slot.container 1 string 16
replaceitem block ~6 ~1 ~2 slot.container 2 ender_pearl 11
replaceitem block ~6 ~1 ~2 slot.container 3 leather 12
replaceitem block ~6 ~1 ~2 slot.container 4 cooked_porkchop 11
replaceitem block ~6 ~1 ~2 slot.container 5 gold_ingot 12
replaceitem block ~6 ~1 ~2 slot.container 9 obsidian 13
replaceitem block ~6 ~1 ~2 slot.container 10 netherite_scrap 7
replaceitem block ~6 ~1 ~2 slot.container 11 golden_helmet 1
replaceitem block ~6 ~1 ~2 slot.container 12 crossbow 1
replaceitem block ~6 ~1 ~2 slot.container 13 arrow 26
replaceitem block ~6 ~1 ~2 slot.container 14 golden_apple 5
loot insert ~6 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-6 ~1 ~3 slot.container 1 leather 15
replaceitem block ~-6 ~1 ~3 slot.container 2 cooked_porkchop 14
replaceitem block ~-6 ~1 ~3 slot.container 3 gold_ingot 15
replaceitem block ~-6 ~1 ~3 slot.container 4 blaze_rod 10
replaceitem block ~-6 ~1 ~3 slot.container 5 magma_cream 13
replaceitem block ~-6 ~1 ~3 slot.container 9 obsidian 11
replaceitem block ~-6 ~1 ~3 slot.container 10 netherite_scrap 5
replaceitem block ~-6 ~1 ~3 slot.container 11 golden_helmet 1
replaceitem block ~-6 ~1 ~3 slot.container 12 crossbow 1
replaceitem block ~-6 ~1 ~3 slot.container 13 arrow 24
replaceitem block ~-6 ~1 ~3 slot.container 14 golden_apple 3
loot insert ~-6 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-6 ~1 ~3 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
