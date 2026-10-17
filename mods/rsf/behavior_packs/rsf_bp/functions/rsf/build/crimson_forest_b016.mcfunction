# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3600/4224 | 主题内编号: b016/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·要塞地底重装暗牢 (crimson_forest_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace fire
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blackstone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 blackstone [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 blackstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 red_nether_brick []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 shroomlight []
setblock ~5 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 string 13
replaceitem block ~0 ~-4 ~4 slot.container 1 ender_pearl 8
replaceitem block ~0 ~-4 ~4 slot.container 2 leather 17
replaceitem block ~0 ~-4 ~4 slot.container 3 cooked_porkchop 16
replaceitem block ~0 ~-4 ~4 slot.container 4 gold_ingot 17
replaceitem block ~0 ~-4 ~4 slot.container 5 blaze_rod 4
replaceitem block ~0 ~-4 ~4 slot.container 9 crimson_stem 17
replaceitem block ~0 ~-4 ~4 slot.container 10 shroomlight 8
replaceitem block ~0 ~-4 ~4 slot.container 11 crying_obsidian 9
replaceitem block ~0 ~-4 ~4 slot.container 12 obsidian 12
replaceitem block ~0 ~-4 ~4 slot.container 13 netherite_scrap 6
replaceitem block ~0 ~-4 ~4 slot.container 14 golden_helmet 1
loot insert ~0 ~-4 ~4 loot "rsf/crimson_forest"
loot insert ~0 ~-4 ~4 loot "chests/bastion_treasure"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 string 11
replaceitem block ~0 ~-4 ~-4 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-4 ~-4 slot.container 2 leather 15
replaceitem block ~0 ~-4 ~-4 slot.container 3 cooked_porkchop 14
replaceitem block ~0 ~-4 ~-4 slot.container 4 gold_ingot 15
replaceitem block ~0 ~-4 ~-4 slot.container 5 blaze_rod 10
replaceitem block ~0 ~-4 ~-4 slot.container 9 crimson_stem 16
replaceitem block ~0 ~-4 ~-4 slot.container 10 shroomlight 7
replaceitem block ~0 ~-4 ~-4 slot.container 11 crying_obsidian 8
replaceitem block ~0 ~-4 ~-4 slot.container 12 obsidian 11
replaceitem block ~0 ~-4 ~-4 slot.container 13 netherite_scrap 5
replaceitem block ~0 ~-4 ~-4 slot.container 14 golden_helmet 1
loot insert ~0 ~-4 ~-4 loot "rsf/crimson_forest"
loot insert ~0 ~-4 ~-4 loot "chests/bastion_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 blackstone []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 crimson_planks []
setblock ~-7 ~10 ~-6 shroomlight []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 crimson_planks []
setblock ~-7 ~10 ~5 shroomlight []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 crimson_planks []
setblock ~6 ~10 ~-6 shroomlight []
fill ~6 ~1 ~5 ~7 ~9 ~6 crimson_planks []
setblock ~6 ~10 ~5 shroomlight []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 crimson_planks []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 crimson_fence []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 crimson_stem []
setblock ~-7 ~9 ~-6 shroomlight []
setblock ~-7 ~8 ~6 crimson_stem []
setblock ~-7 ~9 ~6 shroomlight []
setblock ~7 ~8 ~-6 crimson_stem []
setblock ~7 ~9 ~-6 shroomlight []
setblock ~7 ~8 ~6 crimson_stem []
setblock ~7 ~9 ~6 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 crimson_fence []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 10x7x2) ---
fill ~10 ~0 ~-7 ~10 ~5 ~-7 gilded_blackstone []
setblock ~10 ~6 ~-7 gold_block []
setblock ~10 ~7 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-6 ~1 ~4 slot.container 1 cooked_porkchop 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gold_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 3 blaze_rod 7
replaceitem block ~-6 ~1 ~4 slot.container 4 magma_cream 10
replaceitem block ~-6 ~1 ~4 slot.container 5 ghast_tear 8
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-6 ~1 ~4 slot.container 10 golden_carrot 11
replaceitem block ~-6 ~1 ~4 slot.container 11 crimson_stem 20
replaceitem block ~-6 ~1 ~4 slot.container 12 shroomlight 11
replaceitem block ~-6 ~1 ~4 slot.container 13 crying_obsidian 12
replaceitem block ~-6 ~1 ~4 slot.container 14 obsidian 8
loot insert ~-6 ~1 ~4 loot "rsf/crimson_forest"
summon piglin ~0 ~1 ~-1
summon piglin_brute ~-1 ~1 ~1
