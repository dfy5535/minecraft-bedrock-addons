# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3690/4224 | 主题内编号: b106/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·琉璃穹顶魔药炼金室 (crimson_forest_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 crimson_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 magma_cream 7
replaceitem block ~-3 ~-3 ~2 slot.container 1 ghast_tear 5
replaceitem block ~-3 ~-3 ~2 slot.container 2 string 13
replaceitem block ~-3 ~-3 ~2 slot.container 3 ender_pearl 8
replaceitem block ~-3 ~-3 ~2 slot.container 4 leather 17
replaceitem block ~-3 ~-3 ~2 slot.container 5 cooked_porkchop 16
replaceitem block ~-3 ~-3 ~2 slot.container 9 netherite_scrap 3
replaceitem block ~-3 ~-3 ~2 slot.container 10 golden_helmet 1
replaceitem block ~-3 ~-3 ~2 slot.container 11 crossbow 1
replaceitem block ~-3 ~-3 ~2 slot.container 12 arrow 29
replaceitem block ~-3 ~-3 ~2 slot.container 13 golden_apple 8
replaceitem block ~-3 ~-3 ~2 slot.container 14 golden_carrot 8
loot insert ~-3 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~-3 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 gilded_blackstone []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 gilded_blackstone []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 gilded_blackstone []
fill ~4 ~1 ~3 ~4 ~8 ~3 gilded_blackstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 crimson_planks []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 gilded_blackstone []
setblock ~-7 ~6 ~-6 shroomlight []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 gilded_blackstone []
setblock ~-7 ~6 ~6 shroomlight []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 gilded_blackstone []
setblock ~7 ~6 ~-6 shroomlight []
fill ~7 ~0 ~6 ~7 ~5 ~6 gilded_blackstone []
setblock ~7 ~6 ~6 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~8 ~0 ~-5 ~8 ~5 ~-5 gilded_blackstone []
setblock ~8 ~6 ~-5 gold_block []
setblock ~8 ~7 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 1 blaze_rod 7
replaceitem block ~-4 ~1 ~2 slot.container 2 magma_cream 10
replaceitem block ~-4 ~1 ~2 slot.container 3 ghast_tear 8
replaceitem block ~-4 ~1 ~2 slot.container 4 string 16
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_carrot 10
replaceitem block ~-4 ~1 ~2 slot.container 11 crimson_stem 19
replaceitem block ~-4 ~1 ~2 slot.container 12 shroomlight 10
replaceitem block ~-4 ~1 ~2 slot.container 13 crying_obsidian 11
replaceitem block ~-4 ~1 ~2 slot.container 14 obsidian 14
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
