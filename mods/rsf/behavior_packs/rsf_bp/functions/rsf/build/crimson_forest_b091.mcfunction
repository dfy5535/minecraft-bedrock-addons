# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3675/4224 | 主题内编号: b091/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·跨水拱桥水神小祠 (crimson_forest_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-5 ~8 ~11 ~5 air [] replace lava
fill ~-8 ~0 ~-5 ~8 ~11 ~5 air [] replace fire
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 red_nether_brick [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 red_nether_brick [] replace lava
fill ~-7 ~0 ~-4 ~7 ~0 ~4 crimson_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 crimson_planks []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 lava []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 ghast_tear 5
replaceitem block ~-4 ~-2 ~1 slot.container 1 string 13
replaceitem block ~-4 ~-2 ~1 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~-2 ~1 slot.container 3 leather 17
replaceitem block ~-4 ~-2 ~1 slot.container 4 cooked_porkchop 16
replaceitem block ~-4 ~-2 ~1 slot.container 5 gold_ingot 17
replaceitem block ~-4 ~-2 ~1 slot.container 9 golden_carrot 9
replaceitem block ~-4 ~-2 ~1 slot.container 10 crimson_stem 18
replaceitem block ~-4 ~-2 ~1 slot.container 11 shroomlight 9
replaceitem block ~-4 ~-2 ~1 slot.container 12 crying_obsidian 10
replaceitem block ~-4 ~-2 ~1 slot.container 13 obsidian 13
replaceitem block ~-4 ~-2 ~1 slot.container 14 netherite_scrap 7
loot insert ~-4 ~-2 ~1 loot "rsf/crimson_forest"
loot insert ~-4 ~-2 ~1 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~8 ~3 red_nether_brick []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 crimson_slab []
fill ~-5 ~9 ~-2 ~5 ~10 ~2 blackstone []
fill ~-6 ~11 ~-3 ~6 ~11 ~3 blackstone_slab []
setblock ~0 ~12 ~0 gilded_blackstone []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 crimson_planks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x4x2) ---
fill ~9 ~0 ~-4 ~9 ~5 ~-4 gilded_blackstone []
setblock ~9 ~6 ~-4 gold_block []
setblock ~9 ~7 ~-4 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 blaze_rod 7
replaceitem block ~5 ~1 ~1 slot.container 1 magma_cream 10
replaceitem block ~5 ~1 ~1 slot.container 2 ghast_tear 8
replaceitem block ~5 ~1 ~1 slot.container 3 string 16
replaceitem block ~5 ~1 ~1 slot.container 4 ender_pearl 11
replaceitem block ~5 ~1 ~1 slot.container 5 leather 12
replaceitem block ~5 ~1 ~1 slot.container 9 obsidian 8
replaceitem block ~5 ~1 ~1 slot.container 10 netherite_scrap 2
replaceitem block ~5 ~1 ~1 slot.container 11 golden_helmet 1
replaceitem block ~5 ~1 ~1 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~1 slot.container 13 arrow 28
replaceitem block ~5 ~1 ~1 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~1 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ghast_tear 3
replaceitem block ~-5 ~1 ~2 slot.container 1 string 11
replaceitem block ~-5 ~1 ~2 slot.container 2 ender_pearl 6
replaceitem block ~-5 ~1 ~2 slot.container 3 leather 15
replaceitem block ~-5 ~1 ~2 slot.container 4 cooked_porkchop 14
replaceitem block ~-5 ~1 ~2 slot.container 5 gold_ingot 15
replaceitem block ~-5 ~1 ~2 slot.container 9 obsidian 13
replaceitem block ~-5 ~1 ~2 slot.container 10 netherite_scrap 7
replaceitem block ~-5 ~1 ~2 slot.container 11 golden_helmet 1
replaceitem block ~-5 ~1 ~2 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~2 slot.container 13 arrow 26
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~2 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~2 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
