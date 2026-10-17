# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3683/4224 | 主题内编号: b099/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·铁闸门瓮城防御堡 (crimson_forest_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~11 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~11 ~6 air [] replace fire
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 red_nether_brick [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 red_nether_brick [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 crimson_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_blackstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 blackstone []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 ender_pearl 8
replaceitem block ~4 ~-2 ~2 slot.container 1 leather 17
replaceitem block ~4 ~-2 ~2 slot.container 2 cooked_porkchop 16
replaceitem block ~4 ~-2 ~2 slot.container 3 gold_ingot 17
replaceitem block ~4 ~-2 ~2 slot.container 4 blaze_rod 4
replaceitem block ~4 ~-2 ~2 slot.container 5 magma_cream 7
replaceitem block ~4 ~-2 ~2 slot.container 9 shroomlight 10
replaceitem block ~4 ~-2 ~2 slot.container 10 crying_obsidian 11
replaceitem block ~4 ~-2 ~2 slot.container 11 obsidian 14
replaceitem block ~4 ~-2 ~2 slot.container 12 netherite_scrap 1
replaceitem block ~4 ~-2 ~2 slot.container 13 golden_helmet 1
replaceitem block ~4 ~-2 ~2 slot.container 14 crossbow 1
loot insert ~4 ~-2 ~2 loot "rsf/crimson_forest"
loot insert ~4 ~-2 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 red_nether_brick []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 crimson_planks []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 nether_brick_fence []
fill ~-5 ~9 ~-3 ~5 ~9 ~3 air []
setblock ~-6 ~9 ~-4 stripped_crimson_stem []
setblock ~-6 ~10 ~-4 lantern []
setblock ~-6 ~9 ~4 stripped_crimson_stem []
setblock ~-6 ~10 ~4 lantern []
setblock ~6 ~9 ~-4 stripped_crimson_stem []
setblock ~6 ~10 ~-4 lantern []
setblock ~6 ~9 ~4 stripped_crimson_stem []
setblock ~6 ~10 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 crimson_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~9 ~0 ~-7 ~9 ~8 ~-7 gilded_blackstone []
setblock ~9 ~9 ~-7 gold_block []
setblock ~9 ~10 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-6 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~6 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 blaze_rod 7
replaceitem block ~5 ~1 ~2 slot.container 1 magma_cream 10
replaceitem block ~5 ~1 ~2 slot.container 2 ghast_tear 8
replaceitem block ~5 ~1 ~2 slot.container 3 string 16
replaceitem block ~5 ~1 ~2 slot.container 4 ender_pearl 11
replaceitem block ~5 ~1 ~2 slot.container 5 leather 12
replaceitem block ~5 ~1 ~2 slot.container 9 arrow 25
replaceitem block ~5 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~5 ~1 ~2 slot.container 11 golden_carrot 11
replaceitem block ~5 ~1 ~2 slot.container 12 crimson_stem 20
replaceitem block ~5 ~1 ~2 slot.container 13 shroomlight 11
replaceitem block ~5 ~1 ~2 slot.container 14 crying_obsidian 12
loot insert ~5 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ghast_tear 3
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 6
replaceitem block ~-5 ~1 ~3 slot.container 3 leather 15
replaceitem block ~-5 ~1 ~3 slot.container 4 cooked_porkchop 14
replaceitem block ~-5 ~1 ~3 slot.container 5 gold_ingot 15
replaceitem block ~-5 ~1 ~3 slot.container 9 arrow 30
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_carrot 9
replaceitem block ~-5 ~1 ~3 slot.container 12 crimson_stem 18
replaceitem block ~-5 ~1 ~3 slot.container 13 shroomlight 9
replaceitem block ~-5 ~1 ~3 slot.container 14 crying_obsidian 10
loot insert ~-5 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~3 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-2 ~0
