# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3631/4224 | 主题内编号: b047/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·深渊跨桥决斗长台 (crimson_forest_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace fire
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 red_nether_brick [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 red_nether_brick [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 crimson_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_blackstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 crimson_planks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 cooked_porkchop 16
replaceitem block ~-5 ~-3 ~2 slot.container 1 gold_ingot 17
replaceitem block ~-5 ~-3 ~2 slot.container 2 blaze_rod 4
replaceitem block ~-5 ~-3 ~2 slot.container 3 magma_cream 7
replaceitem block ~-5 ~-3 ~2 slot.container 4 ghast_tear 5
replaceitem block ~-5 ~-3 ~2 slot.container 5 string 13
replaceitem block ~-5 ~-3 ~2 slot.container 9 arrow 30
replaceitem block ~-5 ~-3 ~2 slot.container 10 golden_apple 2
replaceitem block ~-5 ~-3 ~2 slot.container 11 golden_carrot 9
replaceitem block ~-5 ~-3 ~2 slot.container 12 crimson_stem 18
replaceitem block ~-5 ~-3 ~2 slot.container 13 shroomlight 9
replaceitem block ~-5 ~-3 ~2 slot.container 14 crying_obsidian 10
loot insert ~-5 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~-5 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~7 ~4 red_nether_brick []
fill ~-6 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-4 ~-7 ~9 ~-4 stripped_crimson_stem []
setblock ~-7 ~10 ~-4 lantern []
fill ~-7 ~7 ~4 ~-7 ~9 ~4 stripped_crimson_stem []
setblock ~-7 ~10 ~4 lantern []
fill ~7 ~7 ~-4 ~7 ~9 ~-4 stripped_crimson_stem []
setblock ~7 ~10 ~-4 lantern []
fill ~7 ~7 ~4 ~7 ~9 ~4 stripped_crimson_stem []
setblock ~7 ~10 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~5 ~-6 stripped_crimson_stem []
setblock ~-9 ~6 ~-6 lantern []
fill ~-9 ~0 ~6 ~-9 ~5 ~6 stripped_crimson_stem []
setblock ~-9 ~6 ~6 lantern []
fill ~9 ~0 ~-6 ~9 ~5 ~-6 stripped_crimson_stem []
setblock ~9 ~6 ~-6 lantern []
fill ~9 ~0 ~6 ~9 ~5 ~6 stripped_crimson_stem []
setblock ~9 ~6 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x6x3) ---
fill ~10 ~0 ~-6 ~10 ~6 ~-6 gilded_blackstone []
setblock ~10 ~7 ~-6 gold_block []
setblock ~10 ~8 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ender_pearl 11
replaceitem block ~6 ~1 ~2 slot.container 1 leather 12
replaceitem block ~6 ~1 ~2 slot.container 2 cooked_porkchop 11
replaceitem block ~6 ~1 ~2 slot.container 3 gold_ingot 12
replaceitem block ~6 ~1 ~2 slot.container 4 blaze_rod 7
replaceitem block ~6 ~1 ~2 slot.container 5 magma_cream 10
replaceitem block ~6 ~1 ~2 slot.container 9 shroomlight 11
replaceitem block ~6 ~1 ~2 slot.container 10 crying_obsidian 12
replaceitem block ~6 ~1 ~2 slot.container 11 obsidian 8
replaceitem block ~6 ~1 ~2 slot.container 12 netherite_scrap 2
replaceitem block ~6 ~1 ~2 slot.container 13 golden_helmet 1
replaceitem block ~6 ~1 ~2 slot.container 14 crossbow 1
loot insert ~6 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 cooked_porkchop 14
replaceitem block ~-6 ~1 ~3 slot.container 1 gold_ingot 15
replaceitem block ~-6 ~1 ~3 slot.container 2 blaze_rod 10
replaceitem block ~-6 ~1 ~3 slot.container 3 magma_cream 13
replaceitem block ~-6 ~1 ~3 slot.container 4 ghast_tear 3
replaceitem block ~-6 ~1 ~3 slot.container 5 string 11
replaceitem block ~-6 ~1 ~3 slot.container 9 shroomlight 9
replaceitem block ~-6 ~1 ~3 slot.container 10 crying_obsidian 10
replaceitem block ~-6 ~1 ~3 slot.container 11 obsidian 13
replaceitem block ~-6 ~1 ~3 slot.container 12 netherite_scrap 7
replaceitem block ~-6 ~1 ~3 slot.container 13 golden_helmet 1
replaceitem block ~-6 ~1 ~3 slot.container 14 crossbow 1
loot insert ~-6 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-6 ~1 ~3 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
