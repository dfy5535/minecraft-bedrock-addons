# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3594/4224 | 主题内编号: b010/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·十字交叉深层地牢 (crimson_forest_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 6格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~9 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~9 ~8 air [] replace fire
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 shroomlight []
setblock ~5 ~-7 ~0 shroomlight []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 leather 17
replaceitem block ~0 ~-5 ~4 slot.container 1 cooked_porkchop 16
replaceitem block ~0 ~-5 ~4 slot.container 2 gold_ingot 17
replaceitem block ~0 ~-5 ~4 slot.container 3 blaze_rod 4
replaceitem block ~0 ~-5 ~4 slot.container 4 magma_cream 7
replaceitem block ~0 ~-5 ~4 slot.container 5 ghast_tear 5
replaceitem block ~0 ~-5 ~4 slot.container 9 crying_obsidian 8
replaceitem block ~0 ~-5 ~4 slot.container 10 obsidian 11
replaceitem block ~0 ~-5 ~4 slot.container 11 netherite_scrap 5
replaceitem block ~0 ~-5 ~4 slot.container 12 golden_helmet 1
replaceitem block ~0 ~-5 ~4 slot.container 13 crossbow 1
replaceitem block ~0 ~-5 ~4 slot.container 14 arrow 24
loot insert ~0 ~-5 ~4 loot "rsf/crimson_forest"
loot insert ~0 ~-5 ~4 loot "chests/bastion_treasure"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 leather 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 cooked_porkchop 14
replaceitem block ~0 ~-5 ~-4 slot.container 2 gold_ingot 15
replaceitem block ~0 ~-5 ~-4 slot.container 3 blaze_rod 10
replaceitem block ~0 ~-5 ~-4 slot.container 4 magma_cream 13
replaceitem block ~0 ~-5 ~-4 slot.container 5 ghast_tear 3
replaceitem block ~0 ~-5 ~-4 slot.container 9 crying_obsidian 7
replaceitem block ~0 ~-5 ~-4 slot.container 10 obsidian 10
replaceitem block ~0 ~-5 ~-4 slot.container 11 netherite_scrap 4
replaceitem block ~0 ~-5 ~-4 slot.container 12 golden_helmet 1
replaceitem block ~0 ~-5 ~-4 slot.container 13 crossbow 1
replaceitem block ~0 ~-5 ~-4 slot.container 14 arrow 30
loot insert ~0 ~-5 ~-4 loot "rsf/crimson_forest"
loot insert ~0 ~-5 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 polished_blackstone_bricks []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 polished_blackstone_wall []
setblock ~7 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 polished_blackstone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-7 ~5 ~-1 ~-7 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 gilded_blackstone []
setblock ~-9 ~6 ~-8 shroomlight []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 gilded_blackstone []
setblock ~-9 ~6 ~8 shroomlight []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 gilded_blackstone []
setblock ~9 ~6 ~-8 shroomlight []
fill ~9 ~0 ~8 ~9 ~5 ~8 gilded_blackstone []
setblock ~9 ~6 ~8 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x7x6) ---
fill ~10 ~0 ~-7 ~10 ~9 ~-7 gilded_blackstone []
setblock ~10 ~10 ~-7 gold_block []
setblock ~10 ~11 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gold_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 1 blaze_rod 7
replaceitem block ~-6 ~1 ~4 slot.container 2 magma_cream 10
replaceitem block ~-6 ~1 ~4 slot.container 3 ghast_tear 8
replaceitem block ~-6 ~1 ~4 slot.container 4 string 16
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 11
replaceitem block ~-6 ~1 ~4 slot.container 9 crimson_stem 19
replaceitem block ~-6 ~1 ~4 slot.container 10 shroomlight 10
replaceitem block ~-6 ~1 ~4 slot.container 11 crying_obsidian 11
replaceitem block ~-6 ~1 ~4 slot.container 12 obsidian 14
replaceitem block ~-6 ~1 ~4 slot.container 13 netherite_scrap 1
replaceitem block ~-6 ~1 ~4 slot.container 14 golden_helmet 1
loot insert ~-6 ~1 ~4 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
