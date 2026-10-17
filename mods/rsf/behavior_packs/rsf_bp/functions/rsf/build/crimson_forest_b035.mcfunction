# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3619/4224 | 主题内编号: b035/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·巨石垒砌古战石冢 (crimson_forest_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 red_nether_brick [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 red_nether_brick [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 crimson_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 red_nether_brick []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 cooked_porkchop 16
replaceitem block ~0 ~-3 ~2 slot.container 1 gold_ingot 17
replaceitem block ~0 ~-3 ~2 slot.container 2 blaze_rod 4
replaceitem block ~0 ~-3 ~2 slot.container 3 magma_cream 7
replaceitem block ~0 ~-3 ~2 slot.container 4 ghast_tear 5
replaceitem block ~0 ~-3 ~2 slot.container 5 string 13
replaceitem block ~0 ~-3 ~2 slot.container 9 arrow 30
replaceitem block ~0 ~-3 ~2 slot.container 10 golden_apple 2
replaceitem block ~0 ~-3 ~2 slot.container 11 golden_carrot 9
replaceitem block ~0 ~-3 ~2 slot.container 12 crimson_stem 18
replaceitem block ~0 ~-3 ~2 slot.container 13 shroomlight 9
replaceitem block ~0 ~-3 ~2 slot.container 14 crying_obsidian 10
loot insert ~0 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~2 loot "chests/bastion_treasure"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 cooked_porkchop 14
replaceitem block ~0 ~-3 ~-2 slot.container 1 gold_ingot 15
replaceitem block ~0 ~-3 ~-2 slot.container 2 blaze_rod 10
replaceitem block ~0 ~-3 ~-2 slot.container 3 magma_cream 13
replaceitem block ~0 ~-3 ~-2 slot.container 4 ghast_tear 3
replaceitem block ~0 ~-3 ~-2 slot.container 5 string 11
replaceitem block ~0 ~-3 ~-2 slot.container 9 arrow 29
replaceitem block ~0 ~-3 ~-2 slot.container 10 golden_apple 8
replaceitem block ~0 ~-3 ~-2 slot.container 11 golden_carrot 8
replaceitem block ~0 ~-3 ~-2 slot.container 12 crimson_stem 17
replaceitem block ~0 ~-3 ~-2 slot.container 13 shroomlight 8
replaceitem block ~0 ~-3 ~-2 slot.container 14 crying_obsidian 9
loot insert ~0 ~-3 ~-2 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~-2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 red_nether_brick []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 stripped_crimson_stem []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 stripped_crimson_stem []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 stripped_crimson_stem []
fill ~4 ~1 ~3 ~4 ~8 ~3 stripped_crimson_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 crimson_planks []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 blackstone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gilded_blackstone []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 stripped_crimson_stem []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 stripped_crimson_stem []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_crimson_stem []
setblock ~-7 ~4 ~0 gold_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_crimson_stem []
setblock ~7 ~4 ~0 gold_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~8 ~0 ~-6 ~8 ~9 ~-6 gilded_blackstone []
setblock ~8 ~10 ~-6 gold_block []
setblock ~8 ~11 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 blaze_rod 7
replaceitem block ~4 ~1 ~2 slot.container 1 magma_cream 10
replaceitem block ~4 ~1 ~2 slot.container 2 ghast_tear 8
replaceitem block ~4 ~1 ~2 slot.container 3 string 16
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 11
replaceitem block ~4 ~1 ~2 slot.container 5 leather 12
replaceitem block ~4 ~1 ~2 slot.container 9 golden_helmet 1
replaceitem block ~4 ~1 ~2 slot.container 10 crossbow 1
replaceitem block ~4 ~1 ~2 slot.container 11 arrow 26
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~2 slot.container 13 golden_carrot 12
replaceitem block ~4 ~1 ~2 slot.container 14 crimson_stem 21
loot insert ~4 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ghast_tear 3
replaceitem block ~-4 ~1 ~3 slot.container 1 string 11
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 6
replaceitem block ~-4 ~1 ~3 slot.container 3 leather 15
replaceitem block ~-4 ~1 ~3 slot.container 4 cooked_porkchop 14
replaceitem block ~-4 ~1 ~3 slot.container 5 gold_ingot 15
replaceitem block ~-4 ~1 ~3 slot.container 9 golden_helmet 1
replaceitem block ~-4 ~1 ~3 slot.container 10 crossbow 1
replaceitem block ~-4 ~1 ~3 slot.container 11 arrow 24
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 3
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_carrot 10
replaceitem block ~-4 ~1 ~3 slot.container 14 crimson_stem 19
loot insert ~-4 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-4 ~1 ~3 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
