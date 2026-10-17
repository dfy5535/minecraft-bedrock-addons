# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3588/4224 | 主题内编号: b004/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子火盆高台神坛 (crimson_forest_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~11 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~11 ~6 air [] replace fire
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 blackstone [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 blackstone [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 blackstone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_blackstone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 blackstone []
fill ~2 ~1 ~-4 ~7 ~9 ~4 blackstone []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 crimson_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-4 ~-7 ~10 ~-4 crimson_stem []
setblock ~-7 ~11 ~-4 shroomlight []
fill ~-7 ~8 ~4 ~-7 ~10 ~4 crimson_stem []
setblock ~-7 ~11 ~4 shroomlight []
fill ~7 ~8 ~-4 ~7 ~10 ~-4 crimson_stem []
setblock ~7 ~11 ~-4 shroomlight []
fill ~7 ~8 ~4 ~7 ~10 ~4 crimson_stem []
setblock ~7 ~11 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 crimson_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 crimson_stem []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 crimson_stem []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 blackstone_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x5x5) ---
fill ~10 ~0 ~-5 ~10 ~8 ~-5 gilded_blackstone []
setblock ~10 ~9 ~-5 gold_block []
setblock ~10 ~10 ~-5 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 magma_cream 10
replaceitem block ~-6 ~1 ~2 slot.container 1 ghast_tear 8
replaceitem block ~-6 ~1 ~2 slot.container 2 string 16
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 11
replaceitem block ~-6 ~1 ~2 slot.container 4 leather 12
replaceitem block ~-6 ~1 ~2 slot.container 5 cooked_porkchop 11
replaceitem block ~-6 ~1 ~2 slot.container 9 crying_obsidian 10
replaceitem block ~-6 ~1 ~2 slot.container 10 obsidian 13
replaceitem block ~-6 ~1 ~2 slot.container 11 netherite_scrap 7
replaceitem block ~-6 ~1 ~2 slot.container 12 golden_helmet 1
replaceitem block ~-6 ~1 ~2 slot.container 13 crossbow 1
replaceitem block ~-6 ~1 ~2 slot.container 14 arrow 26
loot insert ~-6 ~1 ~2 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
