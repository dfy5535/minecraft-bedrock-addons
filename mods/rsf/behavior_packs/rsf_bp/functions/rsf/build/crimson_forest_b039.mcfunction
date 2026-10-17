# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3623/4224 | 主题内编号: b039/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·永恒圣火图腾方尖塔 (crimson_forest_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-5 ~6 ~14 ~5 air [] replace lava
fill ~-6 ~0 ~-5 ~6 ~14 ~5 air [] replace fire
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 red_nether_brick [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 red_nether_brick [] replace lava
fill ~-5 ~0 ~-4 ~5 ~0 ~4 crimson_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 red_nether_brick []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 blaze_rod 4
replaceitem block ~2 ~-2 ~1 slot.container 1 magma_cream 7
replaceitem block ~2 ~-2 ~1 slot.container 2 ghast_tear 5
replaceitem block ~2 ~-2 ~1 slot.container 3 string 13
replaceitem block ~2 ~-2 ~1 slot.container 4 ender_pearl 8
replaceitem block ~2 ~-2 ~1 slot.container 5 leather 17
replaceitem block ~2 ~-2 ~1 slot.container 9 obsidian 11
replaceitem block ~2 ~-2 ~1 slot.container 10 netherite_scrap 5
replaceitem block ~2 ~-2 ~1 slot.container 11 golden_helmet 1
replaceitem block ~2 ~-2 ~1 slot.container 12 crossbow 1
replaceitem block ~2 ~-2 ~1 slot.container 13 arrow 24
replaceitem block ~2 ~-2 ~1 slot.container 14 golden_apple 3
loot insert ~2 ~-2 ~1 loot "rsf/crimson_forest"
loot insert ~2 ~-2 ~1 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 red_nether_brick []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 stripped_crimson_stem []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 stripped_crimson_stem []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 stripped_crimson_stem []
fill ~4 ~1 ~3 ~4 ~11 ~3 stripped_crimson_stem []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 nether_brick_fence []
setblock ~4 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 crimson_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 red_nether_brick []
fill ~0 ~17 ~0 ~0 ~18 ~0 gilded_blackstone []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 stripped_crimson_stem []
setblock ~0 ~4 ~-5 gold_block []
setblock ~0 ~5 ~-5 lantern []
fill ~0 ~0 ~5 ~0 ~3 ~5 stripped_crimson_stem []
setblock ~0 ~4 ~5 gold_block []
setblock ~0 ~5 ~5 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 stripped_crimson_stem []
setblock ~-6 ~4 ~0 gold_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 stripped_crimson_stem []
setblock ~6 ~4 ~0 gold_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~7 ~0 ~-6 ~7 ~8 ~-6 gilded_blackstone []
setblock ~7 ~9 ~-6 gold_block []
setblock ~7 ~10 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ender_pearl 11
replaceitem block ~3 ~1 ~1 slot.container 1 leather 12
replaceitem block ~3 ~1 ~1 slot.container 2 cooked_porkchop 11
replaceitem block ~3 ~1 ~1 slot.container 3 gold_ingot 12
replaceitem block ~3 ~1 ~1 slot.container 4 blaze_rod 7
replaceitem block ~3 ~1 ~1 slot.container 5 magma_cream 10
replaceitem block ~3 ~1 ~1 slot.container 9 arrow 28
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 7
replaceitem block ~3 ~1 ~1 slot.container 11 golden_carrot 14
replaceitem block ~3 ~1 ~1 slot.container 12 crimson_stem 16
replaceitem block ~3 ~1 ~1 slot.container 13 shroomlight 7
replaceitem block ~3 ~1 ~1 slot.container 14 crying_obsidian 8
loot insert ~3 ~1 ~1 loot "rsf/crimson_forest"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 cooked_porkchop 14
replaceitem block ~-3 ~1 ~2 slot.container 1 gold_ingot 15
replaceitem block ~-3 ~1 ~2 slot.container 2 blaze_rod 10
replaceitem block ~-3 ~1 ~2 slot.container 3 magma_cream 13
replaceitem block ~-3 ~1 ~2 slot.container 4 ghast_tear 3
replaceitem block ~-3 ~1 ~2 slot.container 5 string 11
replaceitem block ~-3 ~1 ~2 slot.container 9 arrow 26
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 5
replaceitem block ~-3 ~1 ~2 slot.container 11 golden_carrot 12
replaceitem block ~-3 ~1 ~2 slot.container 12 crimson_stem 21
replaceitem block ~-3 ~1 ~2 slot.container 13 shroomlight 12
replaceitem block ~-3 ~1 ~2 slot.container 14 crying_obsidian 6
loot insert ~-3 ~1 ~2 loot "rsf/crimson_forest"
loot insert ~-3 ~1 ~2 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-2 ~0
