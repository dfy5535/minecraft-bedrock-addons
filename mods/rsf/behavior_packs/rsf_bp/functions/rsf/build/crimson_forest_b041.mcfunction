# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3625/4224 | 主题内编号: b041/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·八角看台古罗马斗技场 (crimson_forest_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace fire
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 crimson_planks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 crimson_planks [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 crimson_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 red_nether_brick []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 crimson_planks []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 shroomlight []
setblock ~-5 ~-4 ~-4 lantern []
setblock ~5 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 cooked_porkchop 16
replaceitem block ~0 ~-2 ~4 slot.container 1 gold_ingot 17
replaceitem block ~0 ~-2 ~4 slot.container 2 blaze_rod 4
replaceitem block ~0 ~-2 ~4 slot.container 3 magma_cream 7
replaceitem block ~0 ~-2 ~4 slot.container 4 ghast_tear 5
replaceitem block ~0 ~-2 ~4 slot.container 5 string 13
replaceitem block ~0 ~-2 ~4 slot.container 9 golden_helmet 1
replaceitem block ~0 ~-2 ~4 slot.container 10 crossbow 1
replaceitem block ~0 ~-2 ~4 slot.container 11 arrow 29
replaceitem block ~0 ~-2 ~4 slot.container 12 golden_apple 8
replaceitem block ~0 ~-2 ~4 slot.container 13 golden_carrot 8
replaceitem block ~0 ~-2 ~4 slot.container 14 crimson_stem 17
loot insert ~0 ~-2 ~4 loot "rsf/crimson_forest"
loot insert ~0 ~-2 ~4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 crimson_planks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~8 ~6 air []
fill ~7 ~1 ~6 ~7 ~8 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 crimson_stem []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 crimson_stem []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 crimson_stem []
fill ~6 ~1 ~5 ~6 ~7 ~5 crimson_stem []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 crimson_stem []
setblock ~-7 ~10 ~-6 lantern []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 crimson_stem []
setblock ~-7 ~10 ~6 lantern []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 crimson_stem []
setblock ~7 ~10 ~-6 lantern []
fill ~7 ~7 ~6 ~7 ~9 ~6 crimson_stem []
setblock ~7 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 crimson_stem []
setblock ~-9 ~6 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 crimson_stem []
setblock ~-9 ~6 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 crimson_stem []
setblock ~9 ~6 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 crimson_stem []
setblock ~9 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x8x2) ---
fill ~10 ~0 ~-8 ~10 ~5 ~-8 gilded_blackstone []
setblock ~10 ~6 ~-8 gold_block []
setblock ~10 ~7 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 cooked_porkchop 11
replaceitem block ~6 ~1 ~4 slot.container 1 gold_ingot 12
replaceitem block ~6 ~1 ~4 slot.container 2 blaze_rod 7
replaceitem block ~6 ~1 ~4 slot.container 3 magma_cream 10
replaceitem block ~6 ~1 ~4 slot.container 4 ghast_tear 8
replaceitem block ~6 ~1 ~4 slot.container 5 string 16
replaceitem block ~6 ~1 ~4 slot.container 9 obsidian 14
replaceitem block ~6 ~1 ~4 slot.container 10 netherite_scrap 1
replaceitem block ~6 ~1 ~4 slot.container 11 golden_helmet 1
replaceitem block ~6 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~6 ~1 ~4 slot.container 13 arrow 27
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~6 ~1 ~4 loot "rsf/crimson_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 blaze_rod 10
replaceitem block ~-6 ~1 ~5 slot.container 1 magma_cream 13
replaceitem block ~-6 ~1 ~5 slot.container 2 ghast_tear 3
replaceitem block ~-6 ~1 ~5 slot.container 3 string 11
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 6
replaceitem block ~-6 ~1 ~5 slot.container 5 leather 15
replaceitem block ~-6 ~1 ~5 slot.container 9 obsidian 12
replaceitem block ~-6 ~1 ~5 slot.container 10 netherite_scrap 6
replaceitem block ~-6 ~1 ~5 slot.container 11 golden_helmet 1
replaceitem block ~-6 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~-6 ~1 ~5 slot.container 13 arrow 25
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~-6 ~1 ~5 loot "rsf/crimson_forest"
loot insert ~-6 ~1 ~5 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
