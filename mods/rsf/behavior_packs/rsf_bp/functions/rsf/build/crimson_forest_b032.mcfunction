# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3616/4224 | 主题内编号: b032/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·断顶残垣古哨塔 (crimson_forest_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-6 ~6 ~13 ~6 air [] replace lava
fill ~-6 ~0 ~-6 ~6 ~13 ~6 air [] replace fire
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 blackstone [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 blackstone [] replace lava
fill ~-5 ~0 ~-5 ~5 ~0 ~5 blackstone_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_blackstone_bricks []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 crimson_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 crimson_planks []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 shroomlight []
setblock ~2 ~-5 ~0 shroomlight []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 gold_ingot 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 blaze_rod 4
replaceitem block ~0 ~-3 ~-2 slot.container 2 magma_cream 7
replaceitem block ~0 ~-3 ~-2 slot.container 3 ghast_tear 5
replaceitem block ~0 ~-3 ~-2 slot.container 4 string 13
replaceitem block ~0 ~-3 ~-2 slot.container 5 ender_pearl 8
replaceitem block ~0 ~-3 ~-2 slot.container 9 crying_obsidian 6
replaceitem block ~0 ~-3 ~-2 slot.container 10 obsidian 9
replaceitem block ~0 ~-3 ~-2 slot.container 11 netherite_scrap 3
replaceitem block ~0 ~-3 ~-2 slot.container 12 golden_helmet 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 crossbow 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 arrow 29
loot insert ~0 ~-3 ~-2 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~-2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~10 ~4 blackstone []
fill ~-3 ~1 ~-3 ~3 ~9 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~10 ~-4 crimson_stem []
fill ~-4 ~1 ~4 ~-4 ~10 ~4 crimson_stem []
fill ~4 ~1 ~-4 ~4 ~10 ~-4 crimson_stem []
fill ~4 ~1 ~4 ~4 ~10 ~4 crimson_stem []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 crimson_fence []
setblock ~4 ~2 ~0 crimson_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~10 ~-4 ~4 ~10 ~4 blackstone_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-4 ~9 ~-1 ~-4 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 crimson_stem []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 crimson_stem []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 crimson_stem []
fill ~5 ~0 ~2 ~5 ~9 ~2 crimson_stem []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~0 ~-6 ~7 ~6 ~-6 gilded_blackstone []
setblock ~7 ~7 ~-6 gold_block []
setblock ~7 ~8 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-3 ~1 ~2 slot.container 1 cooked_porkchop 11
replaceitem block ~-3 ~1 ~2 slot.container 2 gold_ingot 12
replaceitem block ~-3 ~1 ~2 slot.container 3 blaze_rod 7
replaceitem block ~-3 ~1 ~2 slot.container 4 magma_cream 10
replaceitem block ~-3 ~1 ~2 slot.container 5 ghast_tear 8
replaceitem block ~-3 ~1 ~2 slot.container 9 crossbow 1
replaceitem block ~-3 ~1 ~2 slot.container 10 arrow 29
replaceitem block ~-3 ~1 ~2 slot.container 11 golden_apple 8
replaceitem block ~-3 ~1 ~2 slot.container 12 golden_carrot 8
replaceitem block ~-3 ~1 ~2 slot.container 13 crimson_stem 17
replaceitem block ~-3 ~1 ~2 slot.container 14 shroomlight 8
loot insert ~-3 ~1 ~2 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
