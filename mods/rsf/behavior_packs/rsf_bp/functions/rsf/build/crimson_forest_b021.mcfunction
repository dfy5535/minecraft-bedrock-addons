# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3605/4224 | 主题内编号: b021/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·U型合院天井秘宝房 (crimson_forest_chamber_courtyard_villa)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 crimson_planks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 crimson_planks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 crimson_planks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 blackstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 crimson_slab []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 polished_blackstone_bricks []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 polished_blackstone_brick_slab []
setblock ~0 ~11 ~0 shroomlight []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~9 ~0 ~-8 ~9 ~5 ~-8 gilded_blackstone []
setblock ~9 ~6 ~-8 gold_block []
setblock ~9 ~7 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ghast_tear 8
replaceitem block ~5 ~1 ~3 slot.container 1 string 16
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 11
replaceitem block ~5 ~1 ~3 slot.container 3 leather 12
replaceitem block ~5 ~1 ~3 slot.container 4 cooked_porkchop 11
replaceitem block ~5 ~1 ~3 slot.container 5 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 9 obsidian 8
replaceitem block ~5 ~1 ~3 slot.container 10 netherite_scrap 2
replaceitem block ~5 ~1 ~3 slot.container 11 golden_helmet 1
replaceitem block ~5 ~1 ~3 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~3 slot.container 13 arrow 28
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 1 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 2 cooked_porkchop 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gold_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 4 blaze_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 5 magma_cream 13
replaceitem block ~-5 ~1 ~4 slot.container 9 obsidian 13
replaceitem block ~-5 ~1 ~4 slot.container 10 netherite_scrap 7
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_helmet 1
replaceitem block ~-5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 13 arrow 26
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~2 ~0
