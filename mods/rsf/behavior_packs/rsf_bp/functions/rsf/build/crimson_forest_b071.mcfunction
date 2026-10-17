# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3655/4224 | 主题内编号: b071/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·残破双子哨所遗迹 (crimson_forest_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~11 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~11 ~6 air [] replace fire
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 red_nether_brick [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 red_nether_brick [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 crimson_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_blackstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~9 ~4 red_nether_brick []
fill ~2 ~1 ~-4 ~6 ~9 ~4 red_nether_brick []
fill ~-5 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~5 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 crimson_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 crimson_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 polished_blackstone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

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
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ender_pearl 11
replaceitem block ~5 ~1 ~2 slot.container 1 leather 12
replaceitem block ~5 ~1 ~2 slot.container 2 cooked_porkchop 11
replaceitem block ~5 ~1 ~2 slot.container 3 gold_ingot 12
replaceitem block ~5 ~1 ~2 slot.container 4 blaze_rod 7
replaceitem block ~5 ~1 ~2 slot.container 5 magma_cream 10
replaceitem block ~5 ~1 ~2 slot.container 9 obsidian 9
replaceitem block ~5 ~1 ~2 slot.container 10 netherite_scrap 3
replaceitem block ~5 ~1 ~2 slot.container 11 golden_helmet 1
replaceitem block ~5 ~1 ~2 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~2 slot.container 13 arrow 29
replaceitem block ~5 ~1 ~2 slot.container 14 golden_apple 8
loot insert ~5 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 cooked_porkchop 14
replaceitem block ~-5 ~1 ~3 slot.container 1 gold_ingot 15
replaceitem block ~-5 ~1 ~3 slot.container 2 blaze_rod 10
replaceitem block ~-5 ~1 ~3 slot.container 3 magma_cream 13
replaceitem block ~-5 ~1 ~3 slot.container 4 ghast_tear 3
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 obsidian 14
replaceitem block ~-5 ~1 ~3 slot.container 10 netherite_scrap 1
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_helmet 1
replaceitem block ~-5 ~1 ~3 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~3 slot.container 13 arrow 27
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~3 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
