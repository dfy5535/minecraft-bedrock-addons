# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3611/4224 | 主题内编号: b027/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子连廊警戒塔楼 (crimson_forest_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 2格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-5 ~8 ~13 ~5 air [] replace lava
fill ~-8 ~0 ~-5 ~8 ~13 ~5 air [] replace fire
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 red_nether_brick [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 red_nether_brick [] replace lava
fill ~-7 ~0 ~-4 ~7 ~0 ~4 crimson_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 red_nether_brick []
fill ~2 ~1 ~-3 ~6 ~11 ~3 red_nether_brick []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 crimson_planks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~10 ~-3 ~6 ~10 ~3 crimson_planks []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 nether_brick_fence []
fill ~-5 ~11 ~-2 ~5 ~11 ~2 air []
setblock ~-6 ~11 ~-3 stripped_crimson_stem []
setblock ~-6 ~12 ~-3 lantern []
setblock ~-6 ~11 ~3 stripped_crimson_stem []
setblock ~-6 ~12 ~3 lantern []
setblock ~6 ~11 ~-3 stripped_crimson_stem []
setblock ~6 ~12 ~-3 lantern []
setblock ~6 ~11 ~3 stripped_crimson_stem []
setblock ~6 ~12 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 crimson_planks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~9 ~0 ~-6 ~9 ~6 ~-6 gilded_blackstone []
setblock ~9 ~7 ~-6 gold_block []
setblock ~9 ~8 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 blaze_rod 7
replaceitem block ~5 ~1 ~1 slot.container 1 magma_cream 10
replaceitem block ~5 ~1 ~1 slot.container 2 ghast_tear 8
replaceitem block ~5 ~1 ~1 slot.container 3 string 16
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 11
replaceitem block ~5 ~1 ~1 slot.container 5 leather 12
replaceitem block ~5 ~1 ~1 slot.container 9 shroomlight 12
replaceitem block ~5 ~1 ~1 slot.container 10 crying_obsidian 6
replaceitem block ~5 ~1 ~1 slot.container 11 obsidian 9
replaceitem block ~5 ~1 ~1 slot.container 12 netherite_scrap 3
replaceitem block ~5 ~1 ~1 slot.container 13 golden_helmet 1
replaceitem block ~5 ~1 ~1 slot.container 14 crossbow 1
loot insert ~5 ~1 ~1 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ghast_tear 3
replaceitem block ~-5 ~1 ~2 slot.container 1 string 11
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 6
replaceitem block ~-5 ~1 ~2 slot.container 3 leather 15
replaceitem block ~-5 ~1 ~2 slot.container 4 cooked_porkchop 14
replaceitem block ~-5 ~1 ~2 slot.container 5 gold_ingot 15
replaceitem block ~-5 ~1 ~2 slot.container 9 shroomlight 10
replaceitem block ~-5 ~1 ~2 slot.container 10 crying_obsidian 11
replaceitem block ~-5 ~1 ~2 slot.container 11 obsidian 14
replaceitem block ~-5 ~1 ~2 slot.container 12 netherite_scrap 1
replaceitem block ~-5 ~1 ~2 slot.container 13 golden_helmet 1
replaceitem block ~-5 ~1 ~2 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~2 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~2 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~2 ~0
