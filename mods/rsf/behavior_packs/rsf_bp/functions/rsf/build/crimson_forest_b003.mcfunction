# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3587/4224 | 主题内编号: b003/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·环柱巨石方尖祭坛 (crimson_forest_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~13 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~13 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 blackstone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 crimson_planks []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ghast_tear 5
replaceitem block ~0 ~-2 ~-3 slot.container 1 string 13
replaceitem block ~0 ~-2 ~-3 slot.container 2 ender_pearl 8
replaceitem block ~0 ~-2 ~-3 slot.container 3 leather 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 cooked_porkchop 16
replaceitem block ~0 ~-2 ~-3 slot.container 5 gold_ingot 17
replaceitem block ~0 ~-2 ~-3 slot.container 9 golden_helmet 1
replaceitem block ~0 ~-2 ~-3 slot.container 10 crossbow 1
replaceitem block ~0 ~-2 ~-3 slot.container 11 arrow 25
replaceitem block ~0 ~-2 ~-3 slot.container 12 golden_apple 4
replaceitem block ~0 ~-2 ~-3 slot.container 13 golden_carrot 11
replaceitem block ~0 ~-2 ~-3 slot.container 14 crimson_stem 20
loot insert ~0 ~-2 ~-3 loot "rsf/crimson_forest"
loot insert ~0 ~-2 ~-3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~10 ~-5 ~6 ~10 ~5 crimson_planks []
fill ~-6 ~1 ~-5 ~-6 ~9 ~-5 stripped_crimson_stem []
fill ~-6 ~1 ~5 ~-6 ~9 ~5 stripped_crimson_stem []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 stripped_crimson_stem []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 stripped_crimson_stem []
fill ~-2 ~1 ~-5 ~-2 ~9 ~-5 stripped_crimson_stem []
fill ~-2 ~1 ~5 ~-2 ~9 ~5 stripped_crimson_stem []
fill ~0 ~1 ~-5 ~0 ~9 ~-5 stripped_crimson_stem []
fill ~0 ~1 ~5 ~0 ~9 ~5 stripped_crimson_stem []
fill ~2 ~1 ~-5 ~2 ~9 ~-5 stripped_crimson_stem []
fill ~2 ~1 ~5 ~2 ~9 ~5 stripped_crimson_stem []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 stripped_crimson_stem []
fill ~4 ~1 ~5 ~4 ~9 ~5 stripped_crimson_stem []
fill ~6 ~1 ~-5 ~6 ~9 ~-5 stripped_crimson_stem []
fill ~6 ~1 ~5 ~6 ~9 ~5 stripped_crimson_stem []
fill ~-6 ~1 ~-3 ~-6 ~9 ~-3 stripped_crimson_stem []
fill ~6 ~1 ~-3 ~6 ~9 ~-3 stripped_crimson_stem []
fill ~-6 ~1 ~-1 ~-6 ~9 ~-1 stripped_crimson_stem []
fill ~6 ~1 ~-1 ~6 ~9 ~-1 stripped_crimson_stem []
fill ~-6 ~1 ~1 ~-6 ~9 ~1 stripped_crimson_stem []
fill ~6 ~1 ~1 ~6 ~9 ~1 stripped_crimson_stem []
fill ~-6 ~1 ~3 ~-6 ~9 ~3 stripped_crimson_stem []
fill ~6 ~1 ~3 ~6 ~9 ~3 stripped_crimson_stem []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 crimson_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 red_nether_brick []
fill ~0 ~16 ~0 ~0 ~17 ~0 gilded_blackstone []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_crimson_stem []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_crimson_stem []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_crimson_stem []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_crimson_stem []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~9 ~0 ~-8 ~9 ~7 ~-8 gilded_blackstone []
setblock ~9 ~8 ~-8 gold_block []
setblock ~9 ~9 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 blaze_rod 7
replaceitem block ~5 ~1 ~3 slot.container 1 magma_cream 10
replaceitem block ~5 ~1 ~3 slot.container 2 ghast_tear 8
replaceitem block ~5 ~1 ~3 slot.container 3 string 16
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 5 leather 12
replaceitem block ~5 ~1 ~3 slot.container 9 golden_carrot 11
replaceitem block ~5 ~1 ~3 slot.container 10 crimson_stem 20
replaceitem block ~5 ~1 ~3 slot.container 11 shroomlight 11
replaceitem block ~5 ~1 ~3 slot.container 12 crying_obsidian 12
replaceitem block ~5 ~1 ~3 slot.container 13 obsidian 8
replaceitem block ~5 ~1 ~3 slot.container 14 netherite_scrap 2
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 3
replaceitem block ~-5 ~1 ~4 slot.container 1 string 11
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 3 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 4 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_carrot 9
replaceitem block ~-5 ~1 ~4 slot.container 10 crimson_stem 18
replaceitem block ~-5 ~1 ~4 slot.container 11 shroomlight 9
replaceitem block ~-5 ~1 ~4 slot.container 12 crying_obsidian 10
replaceitem block ~-5 ~1 ~4 slot.container 13 obsidian 13
replaceitem block ~-5 ~1 ~4 slot.container 14 netherite_scrap 7
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-2 ~0
