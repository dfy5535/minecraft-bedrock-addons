# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3647/4224 | 主题内编号: b063/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·方尖碑镇压古墓穴 (crimson_forest_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace fire
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
replaceitem block ~0 ~-3 ~2 slot.container 0 ghast_tear 5
replaceitem block ~0 ~-3 ~2 slot.container 1 string 13
replaceitem block ~0 ~-3 ~2 slot.container 2 ender_pearl 8
replaceitem block ~0 ~-3 ~2 slot.container 3 leather 17
replaceitem block ~0 ~-3 ~2 slot.container 4 cooked_porkchop 16
replaceitem block ~0 ~-3 ~2 slot.container 5 gold_ingot 17
replaceitem block ~0 ~-3 ~2 slot.container 9 shroomlight 12
replaceitem block ~0 ~-3 ~2 slot.container 10 crying_obsidian 6
replaceitem block ~0 ~-3 ~2 slot.container 11 obsidian 9
replaceitem block ~0 ~-3 ~2 slot.container 12 netherite_scrap 3
replaceitem block ~0 ~-3 ~2 slot.container 13 golden_helmet 1
replaceitem block ~0 ~-3 ~2 slot.container 14 crossbow 1
loot insert ~0 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~2 loot "chests/bastion_treasure"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ghast_tear 3
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 11
replaceitem block ~0 ~-3 ~-2 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 3 leather 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 cooked_porkchop 14
replaceitem block ~0 ~-3 ~-2 slot.container 5 gold_ingot 15
replaceitem block ~0 ~-3 ~-2 slot.container 9 shroomlight 11
replaceitem block ~0 ~-3 ~-2 slot.container 10 crying_obsidian 12
replaceitem block ~0 ~-3 ~-2 slot.container 11 obsidian 8
replaceitem block ~0 ~-3 ~-2 slot.container 12 netherite_scrap 2
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_helmet 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 crossbow 1
loot insert ~0 ~-3 ~-2 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~-2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 red_nether_brick []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~11 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~11 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~11 ~4 air []
fill ~5 ~1 ~4 ~5 ~11 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 stripped_crimson_stem []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 stripped_crimson_stem []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 stripped_crimson_stem []
fill ~4 ~1 ~3 ~4 ~10 ~3 stripped_crimson_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 crimson_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 red_nether_brick []
fill ~0 ~16 ~0 ~0 ~17 ~0 gilded_blackstone []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~9 ~-2 stripped_crimson_stem []
fill ~-6 ~0 ~2 ~-6 ~9 ~2 stripped_crimson_stem []
fill ~6 ~0 ~-2 ~6 ~9 ~-2 stripped_crimson_stem []
fill ~6 ~0 ~2 ~6 ~9 ~2 stripped_crimson_stem []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~-7 ~8 ~7 ~-7 gilded_blackstone []
setblock ~8 ~8 ~-7 gold_block []
setblock ~8 ~9 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 11
replaceitem block ~4 ~1 ~2 slot.container 1 leather 12
replaceitem block ~4 ~1 ~2 slot.container 2 cooked_porkchop 11
replaceitem block ~4 ~1 ~2 slot.container 3 gold_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 4 blaze_rod 7
replaceitem block ~4 ~1 ~2 slot.container 5 magma_cream 10
replaceitem block ~4 ~1 ~2 slot.container 9 golden_carrot 8
replaceitem block ~4 ~1 ~2 slot.container 10 crimson_stem 17
replaceitem block ~4 ~1 ~2 slot.container 11 shroomlight 8
replaceitem block ~4 ~1 ~2 slot.container 12 crying_obsidian 9
replaceitem block ~4 ~1 ~2 slot.container 13 obsidian 12
replaceitem block ~4 ~1 ~2 slot.container 14 netherite_scrap 6
loot insert ~4 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 cooked_porkchop 14
replaceitem block ~-4 ~1 ~3 slot.container 1 gold_ingot 15
replaceitem block ~-4 ~1 ~3 slot.container 2 blaze_rod 10
replaceitem block ~-4 ~1 ~3 slot.container 3 magma_cream 13
replaceitem block ~-4 ~1 ~3 slot.container 4 ghast_tear 3
replaceitem block ~-4 ~1 ~3 slot.container 5 string 11
replaceitem block ~-4 ~1 ~3 slot.container 9 golden_carrot 13
replaceitem block ~-4 ~1 ~3 slot.container 10 crimson_stem 22
replaceitem block ~-4 ~1 ~3 slot.container 11 shroomlight 6
replaceitem block ~-4 ~1 ~3 slot.container 12 crying_obsidian 7
replaceitem block ~-4 ~1 ~3 slot.container 13 obsidian 10
replaceitem block ~-4 ~1 ~3 slot.container 14 netherite_scrap 4
loot insert ~-4 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-4 ~1 ~3 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-3 ~0
