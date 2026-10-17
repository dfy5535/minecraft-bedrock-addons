# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3599/4224 | 主题内编号: b015/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·竖井阶梯深渊地牢 (crimson_forest_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~11 ~6 air [] replace fire
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 red_nether_brick [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 red_nether_brick [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 crimson_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 red_nether_brick []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 lantern []
setblock ~3 ~-6 ~-2 lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 cooked_porkchop 16
replaceitem block ~3 ~-4 ~2 slot.container 1 gold_ingot 17
replaceitem block ~3 ~-4 ~2 slot.container 2 blaze_rod 4
replaceitem block ~3 ~-4 ~2 slot.container 3 magma_cream 7
replaceitem block ~3 ~-4 ~2 slot.container 4 ghast_tear 5
replaceitem block ~3 ~-4 ~2 slot.container 5 string 13
replaceitem block ~3 ~-4 ~2 slot.container 9 arrow 27
replaceitem block ~3 ~-4 ~2 slot.container 10 golden_apple 6
replaceitem block ~3 ~-4 ~2 slot.container 11 golden_carrot 13
replaceitem block ~3 ~-4 ~2 slot.container 12 crimson_stem 22
replaceitem block ~3 ~-4 ~2 slot.container 13 shroomlight 6
replaceitem block ~3 ~-4 ~2 slot.container 14 crying_obsidian 7
loot insert ~3 ~-4 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-4 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 red_nether_brick []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 crimson_planks []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 blackstone []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 red_nether_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 crimson_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 red_nether_brick []
fill ~0 ~14 ~0 ~0 ~15 ~0 gilded_blackstone []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 stripped_crimson_stem []
setblock ~-7 ~6 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 stripped_crimson_stem []
setblock ~-7 ~6 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 stripped_crimson_stem []
setblock ~7 ~6 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 stripped_crimson_stem []
setblock ~7 ~6 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~-7 ~8 ~9 ~-7 gilded_blackstone []
setblock ~8 ~10 ~-7 gold_block []
setblock ~8 ~11 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 11
replaceitem block ~4 ~1 ~2 slot.container 1 leather 12
replaceitem block ~4 ~1 ~2 slot.container 2 cooked_porkchop 11
replaceitem block ~4 ~1 ~2 slot.container 3 gold_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 4 blaze_rod 7
replaceitem block ~4 ~1 ~2 slot.container 5 magma_cream 10
replaceitem block ~4 ~1 ~2 slot.container 9 golden_helmet 1
replaceitem block ~4 ~1 ~2 slot.container 10 crossbow 1
replaceitem block ~4 ~1 ~2 slot.container 11 arrow 27
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 13 golden_carrot 13
replaceitem block ~4 ~1 ~2 slot.container 14 crimson_stem 22
loot insert ~4 ~1 ~2 loot "rsf/crimson_forest"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 cooked_porkchop 14
replaceitem block ~-4 ~1 ~3 slot.container 1 gold_ingot 15
replaceitem block ~-4 ~1 ~3 slot.container 2 blaze_rod 10
replaceitem block ~-4 ~1 ~3 slot.container 3 magma_cream 13
replaceitem block ~-4 ~1 ~3 slot.container 4 ghast_tear 3
replaceitem block ~-4 ~1 ~3 slot.container 5 string 11
replaceitem block ~-4 ~1 ~3 slot.container 9 golden_helmet 1
replaceitem block ~-4 ~1 ~3 slot.container 10 crossbow 1
replaceitem block ~-4 ~1 ~3 slot.container 11 arrow 25
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_carrot 11
replaceitem block ~-4 ~1 ~3 slot.container 14 crimson_stem 20
loot insert ~-4 ~1 ~3 loot "rsf/crimson_forest"
loot insert ~-4 ~1 ~3 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-4 ~0
