# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3705/4224 | 主题内编号: b121/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·卫城廊柱王座大殿与地宫 (crimson_forest_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 crimson_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 crimson_planks [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 crimson_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 red_nether_brick []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 lantern []
setblock ~5 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 ender_pearl 8
replaceitem block ~0 ~-3 ~4 slot.container 1 leather 17
replaceitem block ~0 ~-3 ~4 slot.container 2 cooked_porkchop 16
replaceitem block ~0 ~-3 ~4 slot.container 3 gold_ingot 17
replaceitem block ~0 ~-3 ~4 slot.container 4 blaze_rod 4
replaceitem block ~0 ~-3 ~4 slot.container 5 magma_cream 7
replaceitem block ~0 ~-3 ~4 slot.container 9 golden_helmet 1
replaceitem block ~0 ~-3 ~4 slot.container 10 crossbow 1
replaceitem block ~0 ~-3 ~4 slot.container 11 arrow 27
replaceitem block ~0 ~-3 ~4 slot.container 12 golden_apple 6
replaceitem block ~0 ~-3 ~4 slot.container 13 golden_carrot 13
replaceitem block ~0 ~-3 ~4 slot.container 14 crimson_stem 22
loot insert ~0 ~-3 ~4 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~4 loot "chests/bastion_treasure"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 leather 15
replaceitem block ~0 ~-3 ~-4 slot.container 2 cooked_porkchop 14
replaceitem block ~0 ~-3 ~-4 slot.container 3 gold_ingot 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 blaze_rod 10
replaceitem block ~0 ~-3 ~-4 slot.container 5 magma_cream 13
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_helmet 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 crossbow 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 arrow 26
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 5
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_carrot 12
replaceitem block ~0 ~-3 ~-4 slot.container 14 crimson_stem 21
loot insert ~0 ~-3 ~-4 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~9 ~6 crimson_planks []
fill ~-6 ~1 ~0 ~6 ~8 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~9 ~-6 crimson_stem []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 crimson_stem []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 crimson_stem []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 crimson_stem []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 crimson_stem []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 crimson_stem []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 crimson_stem []
fill ~7 ~1 ~-6 ~7 ~9 ~-6 crimson_stem []
fill ~-7 ~9 ~-6 ~7 ~9 ~-1 polished_blackstone_bricks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~10 ~-7 ~-8 ~10 ~7 crimson_stairs ["weirdo_direction"=0]
fill ~8 ~10 ~-7 ~8 ~10 ~7 crimson_stairs ["weirdo_direction"=1]
fill ~-7 ~11 ~-6 ~-7 ~11 ~6 crimson_stairs ["weirdo_direction"=0]
fill ~7 ~11 ~-6 ~7 ~11 ~6 crimson_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-6 ~6 ~11 ~6 crimson_slab []
fill ~0 ~12 ~-7 ~0 ~12 ~7 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 crimson_stem []
setblock ~-9 ~6 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 crimson_stem []
setblock ~-9 ~6 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 crimson_stem []
setblock ~9 ~6 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 crimson_stem []
setblock ~9 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x7x2) ---
fill ~10 ~0 ~-7 ~10 ~5 ~-7 gilded_blackstone []
setblock ~10 ~6 ~-7 gold_block []
setblock ~10 ~7 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 cooked_porkchop 11
replaceitem block ~6 ~1 ~4 slot.container 1 gold_ingot 12
replaceitem block ~6 ~1 ~4 slot.container 2 blaze_rod 7
replaceitem block ~6 ~1 ~4 slot.container 3 magma_cream 10
replaceitem block ~6 ~1 ~4 slot.container 4 ghast_tear 8
replaceitem block ~6 ~1 ~4 slot.container 5 string 16
replaceitem block ~6 ~1 ~4 slot.container 9 obsidian 10
replaceitem block ~6 ~1 ~4 slot.container 10 netherite_scrap 4
replaceitem block ~6 ~1 ~4 slot.container 11 golden_helmet 1
replaceitem block ~6 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~6 ~1 ~4 slot.container 13 arrow 30
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~6 ~1 ~4 loot "rsf/crimson_forest"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 blaze_rod 10
replaceitem block ~-6 ~1 ~5 slot.container 1 magma_cream 13
replaceitem block ~-6 ~1 ~5 slot.container 2 ghast_tear 3
replaceitem block ~-6 ~1 ~5 slot.container 3 string 11
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 6
replaceitem block ~-6 ~1 ~5 slot.container 5 leather 15
replaceitem block ~-6 ~1 ~5 slot.container 9 obsidian 8
replaceitem block ~-6 ~1 ~5 slot.container 10 netherite_scrap 2
replaceitem block ~-6 ~1 ~5 slot.container 11 golden_helmet 1
replaceitem block ~-6 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~-6 ~1 ~5 slot.container 13 arrow 28
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~-6 ~1 ~5 loot "rsf/crimson_forest"
loot insert ~-6 ~1 ~5 loot "chests/bastion_treasure"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1
