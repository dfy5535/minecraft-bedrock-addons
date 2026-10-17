# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3628/4224 | 主题内编号: b044/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双子祭台勇士角斗场 (crimson_forest_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-7 ~9 ~10 ~7 air [] replace lava
fill ~-9 ~0 ~-7 ~9 ~10 ~7 air [] replace fire
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 blackstone [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 blackstone [] replace lava
fill ~-8 ~0 ~-6 ~8 ~0 ~6 blackstone_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 polished_blackstone_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 crimson_planks []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 leather 17
replaceitem block ~5 ~-3 ~3 slot.container 1 cooked_porkchop 16
replaceitem block ~5 ~-3 ~3 slot.container 2 gold_ingot 17
replaceitem block ~5 ~-3 ~3 slot.container 3 blaze_rod 4
replaceitem block ~5 ~-3 ~3 slot.container 4 magma_cream 7
replaceitem block ~5 ~-3 ~3 slot.container 5 ghast_tear 5
replaceitem block ~5 ~-3 ~3 slot.container 9 crossbow 1
replaceitem block ~5 ~-3 ~3 slot.container 10 arrow 30
replaceitem block ~5 ~-3 ~3 slot.container 11 golden_apple 2
replaceitem block ~5 ~-3 ~3 slot.container 12 golden_carrot 9
replaceitem block ~5 ~-3 ~3 slot.container 13 crimson_stem 18
replaceitem block ~5 ~-3 ~3 slot.container 14 shroomlight 9
loot insert ~5 ~-3 ~3 loot "rsf/crimson_forest"
loot insert ~5 ~-3 ~3 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~8 ~5 blackstone []
fill ~2 ~1 ~-5 ~7 ~8 ~5 blackstone []
fill ~-6 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~6 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 crimson_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-5 ~-7 ~9 ~-5 crimson_stem []
setblock ~-7 ~10 ~-5 shroomlight []
fill ~-7 ~7 ~5 ~-7 ~9 ~5 crimson_stem []
setblock ~-7 ~10 ~5 shroomlight []
fill ~7 ~7 ~-5 ~7 ~9 ~-5 crimson_stem []
setblock ~7 ~10 ~-5 shroomlight []
fill ~7 ~7 ~5 ~7 ~9 ~5 crimson_stem []
setblock ~7 ~10 ~5 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 crimson_stem []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 crimson_stem []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 crimson_stem []
fill ~8 ~0 ~2 ~8 ~6 ~2 crimson_stem []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x7x5) ---
fill ~10 ~0 ~-7 ~10 ~8 ~-7 gilded_blackstone []
setblock ~10 ~9 ~-7 gold_block []
setblock ~10 ~10 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 magma_cream 10
replaceitem block ~-6 ~1 ~3 slot.container 1 ghast_tear 8
replaceitem block ~-6 ~1 ~3 slot.container 2 string 16
replaceitem block ~-6 ~1 ~3 slot.container 3 ender_pearl 11
replaceitem block ~-6 ~1 ~3 slot.container 4 leather 12
replaceitem block ~-6 ~1 ~3 slot.container 5 cooked_porkchop 11
replaceitem block ~-6 ~1 ~3 slot.container 9 crying_obsidian 8
replaceitem block ~-6 ~1 ~3 slot.container 10 obsidian 11
replaceitem block ~-6 ~1 ~3 slot.container 11 netherite_scrap 5
replaceitem block ~-6 ~1 ~3 slot.container 12 golden_helmet 1
replaceitem block ~-6 ~1 ~3 slot.container 13 crossbow 1
replaceitem block ~-6 ~1 ~3 slot.container 14 arrow 24
loot insert ~-6 ~1 ~3 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
