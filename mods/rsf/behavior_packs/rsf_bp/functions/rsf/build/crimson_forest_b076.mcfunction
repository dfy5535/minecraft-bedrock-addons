# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3660/4224 | 主题内编号: b076/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·阶梯高台图腾战阵 (crimson_forest_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 gold_block []
setblock ~-4 ~-5 ~-3 shroomlight []
setblock ~4 ~-5 ~3 shroomlight []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 magma_cream 7
replaceitem block ~0 ~-3 ~3 slot.container 1 ghast_tear 5
replaceitem block ~0 ~-3 ~3 slot.container 2 string 13
replaceitem block ~0 ~-3 ~3 slot.container 3 ender_pearl 8
replaceitem block ~0 ~-3 ~3 slot.container 4 leather 17
replaceitem block ~0 ~-3 ~3 slot.container 5 cooked_porkchop 16
replaceitem block ~0 ~-3 ~3 slot.container 9 crimson_stem 19
replaceitem block ~0 ~-3 ~3 slot.container 10 shroomlight 10
replaceitem block ~0 ~-3 ~3 slot.container 11 crying_obsidian 11
replaceitem block ~0 ~-3 ~3 slot.container 12 obsidian 14
replaceitem block ~0 ~-3 ~3 slot.container 13 netherite_scrap 1
replaceitem block ~0 ~-3 ~3 slot.container 14 golden_helmet 1
loot insert ~0 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 blackstone []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 crimson_planks []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 crimson_planks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 crimson_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 blackstone []
fill ~0 ~15 ~0 ~0 ~16 ~0 gold_block []
setblock ~0 ~17 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 crimson_stem []
setblock ~0 ~4 ~-7 shroomlight []
setblock ~0 ~5 ~-7 shroomlight []
fill ~0 ~0 ~7 ~0 ~3 ~7 crimson_stem []
setblock ~0 ~4 ~7 shroomlight []
setblock ~0 ~5 ~7 shroomlight []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 crimson_stem []
setblock ~-8 ~4 ~0 shroomlight []
setblock ~-8 ~5 ~0 shroomlight []
fill ~8 ~0 ~0 ~8 ~3 ~0 crimson_stem []
setblock ~8 ~4 ~0 shroomlight []
setblock ~8 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~9 ~0 ~-6 ~9 ~5 ~-6 gilded_blackstone []
setblock ~9 ~6 ~-6 gold_block []
setblock ~9 ~7 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 magma_cream 10
replaceitem block ~-5 ~1 ~3 slot.container 1 ghast_tear 8
replaceitem block ~-5 ~1 ~3 slot.container 2 string 16
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 11
replaceitem block ~-5 ~1 ~3 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~3 slot.container 5 cooked_porkchop 11
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_carrot 8
replaceitem block ~-5 ~1 ~3 slot.container 11 crimson_stem 17
replaceitem block ~-5 ~1 ~3 slot.container 12 shroomlight 8
replaceitem block ~-5 ~1 ~3 slot.container 13 crying_obsidian 9
replaceitem block ~-5 ~1 ~3 slot.container 14 obsidian 12
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
