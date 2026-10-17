# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3618/4224 | 主题内编号: b034/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子对称铭文方尖碑 (crimson_forest_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x9 | 地上高度 11格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-5 ~8 ~14 ~5 air [] replace lava
fill ~-8 ~0 ~-5 ~8 ~14 ~5 air [] replace fire
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 blackstone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 red_nether_brick []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 string 13
replaceitem block ~4 ~-3 ~1 slot.container 1 ender_pearl 8
replaceitem block ~4 ~-3 ~1 slot.container 2 leather 17
replaceitem block ~4 ~-3 ~1 slot.container 3 cooked_porkchop 16
replaceitem block ~4 ~-3 ~1 slot.container 4 gold_ingot 17
replaceitem block ~4 ~-3 ~1 slot.container 5 blaze_rod 4
replaceitem block ~4 ~-3 ~1 slot.container 9 crossbow 1
replaceitem block ~4 ~-3 ~1 slot.container 10 arrow 27
replaceitem block ~4 ~-3 ~1 slot.container 11 golden_apple 6
replaceitem block ~4 ~-3 ~1 slot.container 12 golden_carrot 13
replaceitem block ~4 ~-3 ~1 slot.container 13 crimson_stem 22
replaceitem block ~4 ~-3 ~1 slot.container 14 shroomlight 6
loot insert ~4 ~-3 ~1 loot "rsf/crimson_forest"
loot insert ~4 ~-3 ~1 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~12 ~3 polished_blackstone_bricks []
fill ~2 ~1 ~-3 ~6 ~12 ~3 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~11 ~2 air []
fill ~3 ~1 ~-2 ~5 ~11 ~2 air []
fill ~-2 ~9 ~-1 ~2 ~11 ~1 crimson_planks []
fill ~-3 ~10 ~0 ~3 ~10 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 crimson_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 polished_blackstone_bricks []
fill ~0 ~17 ~0 ~0 ~18 ~0 gold_block []
setblock ~0 ~19 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 crimson_planks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 shroomlight []
setblock ~2 ~4 ~-6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x4x5) ---
fill ~9 ~0 ~-4 ~9 ~8 ~-4 gilded_blackstone []
setblock ~9 ~9 ~-4 gold_block []
setblock ~9 ~10 ~-4 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 gold_ingot 12
replaceitem block ~-5 ~1 ~1 slot.container 1 blaze_rod 7
replaceitem block ~-5 ~1 ~1 slot.container 2 magma_cream 10
replaceitem block ~-5 ~1 ~1 slot.container 3 ghast_tear 8
replaceitem block ~-5 ~1 ~1 slot.container 4 string 16
replaceitem block ~-5 ~1 ~1 slot.container 5 ender_pearl 11
replaceitem block ~-5 ~1 ~1 slot.container 9 crying_obsidian 12
replaceitem block ~-5 ~1 ~1 slot.container 10 obsidian 8
replaceitem block ~-5 ~1 ~1 slot.container 11 netherite_scrap 2
replaceitem block ~-5 ~1 ~1 slot.container 12 golden_helmet 1
replaceitem block ~-5 ~1 ~1 slot.container 13 crossbow 1
replaceitem block ~-5 ~1 ~1 slot.container 14 arrow 28
loot insert ~-5 ~1 ~1 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
