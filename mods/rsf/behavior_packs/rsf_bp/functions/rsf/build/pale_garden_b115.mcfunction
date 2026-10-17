# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0627/4224 | 主题内编号: b115/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·阶梯立体生态种植台 (pale_garden_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 pale_oak_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~3 slot.container 0 ender_pearl 5
replaceitem block ~-4 ~-2 ~3 slot.container 1 spider_eye 9
replaceitem block ~-4 ~-2 ~3 slot.container 2 phantom_membrane 7
replaceitem block ~-4 ~-2 ~3 slot.container 3 resin_clump 17
replaceitem block ~-4 ~-2 ~3 slot.container 4 bone 16
replaceitem block ~-4 ~-2 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~-2 ~3 slot.container 9 iron_axe 1
replaceitem block ~-4 ~-2 ~3 slot.container 10 shield 1
replaceitem block ~-4 ~-2 ~3 slot.container 11 soul_lantern 4
replaceitem block ~-4 ~-2 ~3 slot.container 12 resin_brick 13
replaceitem block ~-4 ~-2 ~3 slot.container 13 pale_oak_log 18
replaceitem block ~-4 ~-2 ~3 slot.container 14 pale_oak_sapling 7
loot insert ~-4 ~-2 ~3 loot "rsf/pale_garden"
loot insert ~-4 ~-2 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 pale_oak_planks []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 pale_oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 pale_oak_planks []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 resin_brick_wall []
fill ~-5 ~9 ~-3 ~5 ~9 ~3 air []
setblock ~-6 ~9 ~-4 pale_oak_log []
setblock ~-6 ~10 ~-4 soul_lantern []
setblock ~-6 ~9 ~4 pale_oak_log []
setblock ~-6 ~10 ~4 soul_lantern []
setblock ~6 ~9 ~-4 pale_oak_log []
setblock ~6 ~10 ~-4 soul_lantern []
setblock ~6 ~9 ~4 pale_oak_log []
setblock ~6 ~10 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 pale_oak_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~-9 ~0 ~-2 ~-9 ~5 ~-2 pale_oak_log []
fill ~9 ~0 ~-2 ~9 ~5 ~-2 pale_oak_log []
setblock ~-9 ~6 ~-2 resin_block []
setblock ~9 ~6 ~-2 chiseled_resin_bricks []
setblock ~-9 ~7 ~-2 soul_lantern []
setblock ~9 ~7 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 13
replaceitem block ~5 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~3 slot.container 4 phantom_membrane 10
replaceitem block ~5 ~1 ~3 slot.container 5 resin_clump 12
replaceitem block ~5 ~1 ~3 slot.container 9 pale_oak_log 20
replaceitem block ~5 ~1 ~3 slot.container 10 pale_oak_sapling 9
replaceitem block ~5 ~1 ~3 slot.container 11 pale_moss_block 14
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 13 diamond 3
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 4
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 7
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 5
replaceitem block ~-5 ~1 ~4 slot.container 3 resin_clump 15
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 pale_oak_log 18
replaceitem block ~-5 ~1 ~4 slot.container 10 pale_oak_sapling 7
replaceitem block ~-5 ~1 ~4 slot.container 11 pale_moss_block 12
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 13
replaceitem block ~-5 ~1 ~4 slot.container 13 diamond 8
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
