# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3607/4224 | 主题内编号: b023/128
# 地形主题 #29: 下界绯红森林与猪灵金库 (crimson_forest) —— 带黑石镶金宝库与绯红巨菌高塔
# 建筑名称: 绯红猪灵堡系·双层露台阁楼宝室 (crimson_forest_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x13 | 地上高度 9格 | 地下深度 2格
# 适用群系: crimson_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~12 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~12 ~7 air [] replace fire
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 red_nether_brick [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 red_nether_brick [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 crimson_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 crimson_planks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 red_nether_brick []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 crimson_slab []
fill ~-4 ~5 ~-4 ~4 ~9 ~4 blackstone []
fill ~-3 ~5 ~-3 ~3 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-6 ~6 ~9 ~6 crimson_slab []
fill ~-4 ~10 ~-4 ~4 ~11 ~4 blackstone []
fill ~-5 ~12 ~-5 ~5 ~12 ~5 blackstone_slab []
setblock ~0 ~13 ~0 gilded_blackstone []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~11 ~2 blackstone []
fill ~6 ~1 ~-1 ~7 ~10 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~12 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (crimson_forest 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~-7 ~8 ~7 ~-7 gilded_blackstone []
setblock ~8 ~8 ~-7 gold_block []
setblock ~8 ~9 ~-7 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 11
replaceitem block ~4 ~1 ~3 slot.container 1 leather 12
replaceitem block ~4 ~1 ~3 slot.container 2 cooked_porkchop 11
replaceitem block ~4 ~1 ~3 slot.container 3 gold_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 4 blaze_rod 7
replaceitem block ~4 ~1 ~3 slot.container 5 magma_cream 10
replaceitem block ~4 ~1 ~3 slot.container 9 golden_carrot 10
replaceitem block ~4 ~1 ~3 slot.container 10 crimson_stem 19
replaceitem block ~4 ~1 ~3 slot.container 11 shroomlight 10
replaceitem block ~4 ~1 ~3 slot.container 12 crying_obsidian 11
replaceitem block ~4 ~1 ~3 slot.container 13 obsidian 14
replaceitem block ~4 ~1 ~3 slot.container 14 netherite_scrap 1
loot insert ~4 ~1 ~3 loot "rsf/crimson_forest"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 cooked_porkchop 14
replaceitem block ~-4 ~1 ~4 slot.container 1 gold_ingot 15
replaceitem block ~-4 ~1 ~4 slot.container 2 blaze_rod 10
replaceitem block ~-4 ~1 ~4 slot.container 3 magma_cream 13
replaceitem block ~-4 ~1 ~4 slot.container 4 ghast_tear 3
replaceitem block ~-4 ~1 ~4 slot.container 5 string 11
replaceitem block ~-4 ~1 ~4 slot.container 9 golden_carrot 8
replaceitem block ~-4 ~1 ~4 slot.container 10 crimson_stem 17
replaceitem block ~-4 ~1 ~4 slot.container 11 shroomlight 8
replaceitem block ~-4 ~1 ~4 slot.container 12 crying_obsidian 9
replaceitem block ~-4 ~1 ~4 slot.container 13 obsidian 12
replaceitem block ~-4 ~1 ~4 slot.container 14 netherite_scrap 6
loot insert ~-4 ~1 ~4 loot "rsf/crimson_forest"
loot insert ~-4 ~1 ~4 loot "chests/bastion_treasure"
summon piglin_brute ~0 ~1 ~-1
summon hoglin ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1
