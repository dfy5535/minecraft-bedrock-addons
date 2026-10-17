# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3593/4224 | 主题内编号: b009/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·铁栏双室地下死牢 (crimson_forest_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 crimson_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 crimson_planks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 crimson_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 crimson_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 blaze_rod 4
replaceitem block ~4 ~-3 ~3 slot.container 1 magma_cream 7
replaceitem block ~4 ~-3 ~3 slot.container 2 ghast_tear 5
replaceitem block ~4 ~-3 ~3 slot.container 3 string 13
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 8
replaceitem block ~4 ~-3 ~3 slot.container 5 leather 17
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_carrot 12
replaceitem block ~4 ~-3 ~3 slot.container 10 crimson_stem 21
replaceitem block ~4 ~-3 ~3 slot.container 11 shroomlight 12
replaceitem block ~4 ~-3 ~3 slot.container 12 crying_obsidian 6
replaceitem block ~4 ~-3 ~3 slot.container 13 obsidian 9
replaceitem block ~4 ~-3 ~3 slot.container 14 netherite_scrap 3
loot insert ~4 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~4 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 crimson_planks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 polished_blackstone_bricks []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 crimson_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 crimson_stem []
setblock ~-6 ~8 ~-5 lantern []
setblock ~-6 ~7 ~5 crimson_stem []
setblock ~-6 ~8 ~5 lantern []
setblock ~6 ~7 ~-5 crimson_stem []
setblock ~6 ~8 ~-5 lantern []
setblock ~6 ~7 ~5 crimson_stem []
setblock ~6 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 polished_blackstone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 crimson_stem []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 crimson_stem []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 crimson_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~9 ~0 ~-8 ~9 ~8 ~-8 gilded_blackstone []
setblock ~9 ~9 ~-8 gold_block []
setblock ~9 ~10 ~-8 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 cooked_porkchop 11
replaceitem block ~5 ~1 ~3 slot.container 1 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 2 blaze_rod 7
replaceitem block ~5 ~1 ~3 slot.container 3 magma_cream 10
replaceitem block ~5 ~1 ~3 slot.container 4 ghast_tear 8
replaceitem block ~5 ~1 ~3 slot.container 5 string 16
replaceitem block ~5 ~1 ~3 slot.container 9 arrow 26
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 5
replaceitem block ~5 ~1 ~3 slot.container 11 golden_carrot 12
replaceitem block ~5 ~1 ~3 slot.container 12 crimson_stem 21
replaceitem block ~5 ~1 ~3 slot.container 13 shroomlight 12
replaceitem block ~5 ~1 ~3 slot.container 14 crying_obsidian 6
loot insert ~5 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 blaze_rod 10
replaceitem block ~-5 ~1 ~4 slot.container 1 magma_cream 13
replaceitem block ~-5 ~1 ~4 slot.container 2 ghast_tear 3
replaceitem block ~-5 ~1 ~4 slot.container 3 string 11
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 6
replaceitem block ~-5 ~1 ~4 slot.container 5 leather 15
replaceitem block ~-5 ~1 ~4 slot.container 9 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_carrot 10
replaceitem block ~-5 ~1 ~4 slot.container 12 crimson_stem 19
replaceitem block ~-5 ~1 ~4 slot.container 13 shroomlight 10
replaceitem block ~-5 ~1 ~4 slot.container 14 crying_obsidian 11
loot insert ~-5 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-5 ~1 ~4 loot "chests/bastion_treasure"
summon magma_cube ~0 ~1 ~-1
summon piglin ~-1 ~1 ~1
summon piglin_brute ~1 ~1 ~1
summon hoglin ~0 ~-3 ~0
