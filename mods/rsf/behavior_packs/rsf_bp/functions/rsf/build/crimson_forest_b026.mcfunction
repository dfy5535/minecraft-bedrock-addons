# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3610/4224 | 主题内编号: b026/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·尖顶信标引航高塔 (crimson_forest_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x9 | 地上高度 12格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-5 ~6 ~15 ~5 air [] replace lava
fill ~-6 ~0 ~-5 ~6 ~15 ~5 air [] replace fire
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 blackstone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 red_nether_brick []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 string 13
replaceitem block ~2 ~-3 ~1 slot.container 1 ender_pearl 8
replaceitem block ~2 ~-3 ~1 slot.container 2 leather 17
replaceitem block ~2 ~-3 ~1 slot.container 3 cooked_porkchop 16
replaceitem block ~2 ~-3 ~1 slot.container 4 gold_ingot 17
replaceitem block ~2 ~-3 ~1 slot.container 5 blaze_rod 4
replaceitem block ~2 ~-3 ~1 slot.container 9 crying_obsidian 7
replaceitem block ~2 ~-3 ~1 slot.container 10 obsidian 10
replaceitem block ~2 ~-3 ~1 slot.container 11 netherite_scrap 4
replaceitem block ~2 ~-3 ~1 slot.container 12 golden_helmet 1
replaceitem block ~2 ~-3 ~1 slot.container 13 crossbow 1
replaceitem block ~2 ~-3 ~1 slot.container 14 arrow 30
loot insert ~2 ~-3 ~1 loot "rsf/crimson_forest"
loot insert ~2 ~-3 ~1 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~12 ~3 polished_blackstone_bricks []
fill ~-3 ~1 ~-2 ~3 ~11 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~13 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~13 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~13 ~3 air []
fill ~4 ~1 ~3 ~4 ~13 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~12 ~-2 gilded_blackstone []
fill ~3 ~1 ~-2 ~3 ~12 ~-2 gilded_blackstone []
fill ~-3 ~1 ~2 ~-3 ~12 ~2 gilded_blackstone []
fill ~3 ~1 ~2 ~3 ~12 ~2 gilded_blackstone []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 crimson_planks []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 polished_blackstone_bricks []
fill ~0 ~18 ~0 ~0 ~19 ~0 gold_block []
setblock ~0 ~20 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~11 ~-2 gilded_blackstone []
fill ~-5 ~0 ~2 ~-5 ~11 ~2 gilded_blackstone []
fill ~5 ~0 ~-2 ~5 ~11 ~-2 gilded_blackstone []
fill ~5 ~0 ~2 ~5 ~11 ~2 gilded_blackstone []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~7 ~0 ~-5 ~7 ~5 ~-5 gilded_blackstone []
setblock ~7 ~6 ~-5 gold_block []
setblock ~7 ~7 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 gold_ingot 12
replaceitem block ~-3 ~1 ~1 slot.container 1 blaze_rod 7
replaceitem block ~-3 ~1 ~1 slot.container 2 magma_cream 10
replaceitem block ~-3 ~1 ~1 slot.container 3 ghast_tear 8
replaceitem block ~-3 ~1 ~1 slot.container 4 string 16
replaceitem block ~-3 ~1 ~1 slot.container 5 ender_pearl 11
replaceitem block ~-3 ~1 ~1 slot.container 9 golden_apple 7
replaceitem block ~-3 ~1 ~1 slot.container 10 golden_carrot 14
replaceitem block ~-3 ~1 ~1 slot.container 11 crimson_stem 16
replaceitem block ~-3 ~1 ~1 slot.container 12 shroomlight 7
replaceitem block ~-3 ~1 ~1 slot.container 13 crying_obsidian 8
replaceitem block ~-3 ~1 ~1 slot.container 14 obsidian 11
loot insert ~-3 ~1 ~1 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
