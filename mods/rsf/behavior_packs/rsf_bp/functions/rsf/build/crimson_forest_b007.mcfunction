# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3591/4224 | 主题内编号: b007/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·八角星芒图腾祭坛 (crimson_forest_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 blackstone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gilded_blackstone []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 ender_pearl 8
replaceitem block ~4 ~-2 ~0 slot.container 1 leather 17
replaceitem block ~4 ~-2 ~0 slot.container 2 cooked_porkchop 16
replaceitem block ~4 ~-2 ~0 slot.container 3 gold_ingot 17
replaceitem block ~4 ~-2 ~0 slot.container 4 blaze_rod 4
replaceitem block ~4 ~-2 ~0 slot.container 5 magma_cream 7
replaceitem block ~4 ~-2 ~0 slot.container 9 arrow 29
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 8
replaceitem block ~4 ~-2 ~0 slot.container 11 golden_carrot 8
replaceitem block ~4 ~-2 ~0 slot.container 12 crimson_stem 17
replaceitem block ~4 ~-2 ~0 slot.container 13 shroomlight 8
replaceitem block ~4 ~-2 ~0 slot.container 14 crying_obsidian 9
loot insert ~4 ~-2 ~0 loot "rsf/crimson_forest"
loot insert ~4 ~-2 ~0 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~9 ~5 red_nether_brick []
fill ~-5 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~10 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~10 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~10 ~5 air []
fill ~6 ~1 ~5 ~6 ~10 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 stripped_crimson_stem []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 stripped_crimson_stem []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 stripped_crimson_stem []
fill ~5 ~1 ~4 ~5 ~9 ~4 stripped_crimson_stem []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 crimson_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 red_nether_brick []
fill ~0 ~15 ~0 ~0 ~16 ~0 gilded_blackstone []
setblock ~0 ~17 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~9 ~0 ~-6 ~9 ~6 ~-6 gilded_blackstone []
setblock ~9 ~7 ~-6 gold_block []
setblock ~9 ~8 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 1 leather 12
replaceitem block ~5 ~1 ~3 slot.container 2 cooked_porkchop 11
replaceitem block ~5 ~1 ~3 slot.container 3 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 4 blaze_rod 7
replaceitem block ~5 ~1 ~3 slot.container 5 magma_cream 10
replaceitem block ~5 ~1 ~3 slot.container 9 shroomlight 6
replaceitem block ~5 ~1 ~3 slot.container 10 crying_obsidian 7
replaceitem block ~5 ~1 ~3 slot.container 11 obsidian 10
replaceitem block ~5 ~1 ~3 slot.container 12 netherite_scrap 4
replaceitem block ~5 ~1 ~3 slot.container 13 golden_helmet 1
replaceitem block ~5 ~1 ~3 slot.container 14 crossbow 1
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 2 blaze_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 3 magma_cream 13
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 3
replaceitem block ~-5 ~1 ~4 slot.container 5 string 11
replaceitem block ~-5 ~1 ~4 slot.container 9 shroomlight 11
replaceitem block ~-5 ~1 ~4 slot.container 10 crying_obsidian 12
replaceitem block ~-5 ~1 ~4 slot.container 11 obsidian 8
replaceitem block ~-5 ~1 ~4 slot.container 12 netherite_scrap 2
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_helmet 1
replaceitem block ~-5 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
