# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3604/4224 | 主题内编号: b020/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·重甲防爆金库房间 (crimson_forest_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 blackstone [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 blackstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 crimson_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 leather 17
replaceitem block ~3 ~-3 ~2 slot.container 1 cooked_porkchop 16
replaceitem block ~3 ~-3 ~2 slot.container 2 gold_ingot 17
replaceitem block ~3 ~-3 ~2 slot.container 3 blaze_rod 4
replaceitem block ~3 ~-3 ~2 slot.container 4 magma_cream 7
replaceitem block ~3 ~-3 ~2 slot.container 5 ghast_tear 5
replaceitem block ~3 ~-3 ~2 slot.container 9 netherite_scrap 3
replaceitem block ~3 ~-3 ~2 slot.container 10 golden_helmet 1
replaceitem block ~3 ~-3 ~2 slot.container 11 crossbow 1
replaceitem block ~3 ~-3 ~2 slot.container 12 arrow 29
replaceitem block ~3 ~-3 ~2 slot.container 13 golden_apple 8
replaceitem block ~3 ~-3 ~2 slot.container 14 golden_carrot 8
loot insert ~3 ~-3 ~2 loot "rsf/crimson_forest"
loot insert ~3 ~-3 ~2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 blackstone []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~9 ~-3 crimson_planks []
setblock ~-5 ~10 ~-4 shroomlight []
fill ~-5 ~1 ~3 ~-4 ~9 ~4 crimson_planks []
setblock ~-5 ~10 ~3 shroomlight []
fill ~4 ~1 ~-4 ~5 ~9 ~-3 crimson_planks []
setblock ~4 ~10 ~-4 shroomlight []
fill ~4 ~1 ~3 ~5 ~9 ~4 crimson_planks []
setblock ~4 ~10 ~3 shroomlight []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 crimson_planks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 crimson_fence []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~-5 ~8 ~-4 crimson_stem []
setblock ~-5 ~9 ~-4 shroomlight []
setblock ~-5 ~8 ~4 crimson_stem []
setblock ~-5 ~9 ~4 shroomlight []
setblock ~5 ~8 ~-4 crimson_stem []
setblock ~5 ~9 ~-4 shroomlight []
setblock ~5 ~8 ~4 crimson_stem []
setblock ~5 ~9 ~4 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 crimson_stem []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 crimson_stem []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 crimson_stem []
fill ~6 ~0 ~2 ~6 ~6 ~2 crimson_stem []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~8 ~0 ~-6 ~8 ~9 ~-6 gilded_blackstone []
setblock ~8 ~10 ~-6 gold_block []
setblock ~8 ~11 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 shroomlight []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 magma_cream 10
replaceitem block ~-4 ~1 ~2 slot.container 1 ghast_tear 8
replaceitem block ~-4 ~1 ~2 slot.container 2 string 16
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 5 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 9 crimson_stem 22
replaceitem block ~-4 ~1 ~2 slot.container 10 shroomlight 6
replaceitem block ~-4 ~1 ~2 slot.container 11 crying_obsidian 7
replaceitem block ~-4 ~1 ~2 slot.container 12 obsidian 10
replaceitem block ~-4 ~1 ~2 slot.container 13 netherite_scrap 4
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_helmet 1
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
