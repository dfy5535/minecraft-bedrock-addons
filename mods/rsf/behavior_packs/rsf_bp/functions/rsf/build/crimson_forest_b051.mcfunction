# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3635/4224 | 主题内编号: b051/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·带哨塔围栏探险营地 (crimson_forest_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace fire
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 red_nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 red_nether_brick []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 crimson_planks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 nether_brick_fence []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 stripped_crimson_stem []
setblock ~-6 ~10 ~-5 lantern []
setblock ~-6 ~9 ~5 stripped_crimson_stem []
setblock ~-6 ~10 ~5 lantern []
setblock ~6 ~9 ~-5 stripped_crimson_stem []
setblock ~6 ~10 ~-5 lantern []
setblock ~6 ~9 ~5 stripped_crimson_stem []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~10 ~2 blackstone []
fill ~7 ~1 ~-1 ~8 ~9 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~11 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~9 ~0 ~-8 ~9 ~5 ~-8 gilded_blackstone []
setblock ~9 ~6 ~-8 gold_block []
setblock ~9 ~7 ~-8 shroomlight []

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
replaceitem block ~5 ~1 ~3 slot.container 9 obsidian 10
replaceitem block ~5 ~1 ~3 slot.container 10 netherite_scrap 4
replaceitem block ~5 ~1 ~3 slot.container 11 golden_helmet 1
replaceitem block ~5 ~1 ~3 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~3 slot.container 13 arrow 30
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 2
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 3
replaceitem block ~-5 ~1 ~4 slot.container 1 string 11
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 3 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 4 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 9 obsidian 8
replaceitem block ~-5 ~1 ~4 slot.container 10 netherite_scrap 2
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_helmet 1
replaceitem block ~-5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 13 arrow 28
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~2 ~0
