# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3622/4224 | 主题内编号: b038/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·四方凯旋衣冠冢 (crimson_forest_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 red_nether_brick []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 crimson_planks []
setblock ~0 ~-6 ~0 gilded_blackstone []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 shroomlight []
setblock ~2 ~-5 ~0 shroomlight []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 leather 17
replaceitem block ~0 ~-3 ~-2 slot.container 1 cooked_porkchop 16
replaceitem block ~0 ~-3 ~-2 slot.container 2 gold_ingot 17
replaceitem block ~0 ~-3 ~-2 slot.container 3 blaze_rod 4
replaceitem block ~0 ~-3 ~-2 slot.container 4 magma_cream 7
replaceitem block ~0 ~-3 ~-2 slot.container 5 ghast_tear 5
replaceitem block ~0 ~-3 ~-2 slot.container 9 crimson_stem 22
replaceitem block ~0 ~-3 ~-2 slot.container 10 shroomlight 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 crying_obsidian 7
replaceitem block ~0 ~-3 ~-2 slot.container 12 obsidian 10
replaceitem block ~0 ~-3 ~-2 slot.container 13 netherite_scrap 4
replaceitem block ~0 ~-3 ~-2 slot.container 14 golden_helmet 1
loot insert ~0 ~-3 ~-2 loot "rsf/crimson_forest"
loot insert ~0 ~-3 ~-2 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~9 ~4 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~5 ~9 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-3 ~1 ~8 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~8 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 polished_blackstone_wall []
setblock ~5 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 crimson_planks []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 red_nether_brick []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 gold_block []
setblock ~0 ~13 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 crimson_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 gilded_blackstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 gilded_blackstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 polished_blackstone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~8 ~0 ~-6 ~8 ~7 ~-6 gilded_blackstone []
setblock ~8 ~8 ~-6 gold_block []
setblock ~8 ~9 ~-6 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 16
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 11
replaceitem block ~-4 ~1 ~2 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 3 cooked_porkchop 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gold_ingot 12
replaceitem block ~-4 ~1 ~2 slot.container 5 blaze_rod 7
replaceitem block ~-4 ~1 ~2 slot.container 9 netherite_scrap 4
replaceitem block ~-4 ~1 ~2 slot.container 10 golden_helmet 1
replaceitem block ~-4 ~1 ~2 slot.container 11 crossbow 1
replaceitem block ~-4 ~1 ~2 slot.container 12 arrow 30
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_carrot 9
loot insert ~-4 ~1 ~2 loot "rsf/crimson_forest"
summon blaze ~0 ~1 ~-1
summon magma_cube ~-1 ~1 ~1
summon piglin ~1 ~1 ~1
