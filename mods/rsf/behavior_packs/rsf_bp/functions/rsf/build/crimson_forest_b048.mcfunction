# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3632/4224 | 主题内编号: b048/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·阶梯王座巅峰试炼台 (crimson_forest_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~11 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~11 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 blackstone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 blackstone [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 blackstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 crimson_planks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 crimson_planks []
setblock ~0 ~-6 ~0 shroomlight []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 shroomlight []
setblock ~2 ~-5 ~0 shroomlight []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gold_ingot 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 blaze_rod 4
replaceitem block ~0 ~-3 ~-4 slot.container 2 magma_cream 7
replaceitem block ~0 ~-3 ~-4 slot.container 3 ghast_tear 5
replaceitem block ~0 ~-3 ~-4 slot.container 4 string 13
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 8
replaceitem block ~0 ~-3 ~-4 slot.container 9 crimson_stem 18
replaceitem block ~0 ~-3 ~-4 slot.container 10 shroomlight 9
replaceitem block ~0 ~-3 ~-4 slot.container 11 crying_obsidian 10
replaceitem block ~0 ~-3 ~-4 slot.container 12 obsidian 13
replaceitem block ~0 ~-3 ~-4 slot.container 13 netherite_scrap 7
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_helmet 1
loot insert ~0 ~-3 ~-4 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 blackstone []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 crimson_planks []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 crimson_planks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-6 ~-7 ~10 ~-6 crimson_stem []
setblock ~-7 ~11 ~-6 shroomlight []
fill ~-7 ~8 ~6 ~-7 ~10 ~6 crimson_stem []
setblock ~-7 ~11 ~6 shroomlight []
fill ~7 ~8 ~-6 ~7 ~10 ~-6 crimson_stem []
setblock ~7 ~11 ~-6 shroomlight []
fill ~7 ~8 ~6 ~7 ~10 ~6 crimson_stem []
setblock ~7 ~11 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 crimson_stem []
setblock ~0 ~4 ~-8 shroomlight []
setblock ~0 ~5 ~-8 shroomlight []
fill ~0 ~0 ~8 ~0 ~3 ~8 crimson_stem []
setblock ~0 ~4 ~8 shroomlight []
setblock ~0 ~5 ~8 shroomlight []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 crimson_stem []
setblock ~-9 ~4 ~0 shroomlight []
setblock ~-9 ~5 ~0 shroomlight []
fill ~9 ~0 ~0 ~9 ~3 ~0 crimson_stem []
setblock ~9 ~4 ~0 shroomlight []
setblock ~9 ~5 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x9x4) ---
fill ~10 ~0 ~-9 ~10 ~7 ~-9 gilded_blackstone []
setblock ~10 ~8 ~-9 gold_block []
setblock ~10 ~9 ~-9 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-6 ~1 ~4 slot.container 1 cooked_porkchop 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gold_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-6 ~1 ~4 slot.container 4 magma_cream 10
replaceitem block ~-6 ~1 ~4 slot.container 5 ghast_tear 8
replaceitem block ~-6 ~1 ~4 slot.container 9 netherite_scrap 7
replaceitem block ~-6 ~1 ~4 slot.container 10 golden_helmet 1
replaceitem block ~-6 ~1 ~4 slot.container 11 crossbow 1
replaceitem block ~-6 ~1 ~4 slot.container 12 arrow 26
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~-6 ~1 ~4 slot.container 14 golden_carrot 12
loot insert ~-6 ~1 ~4 loot "rsf/crimson_forest"
summon hoglin ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon magma_cube ~0 ~-3 ~0
