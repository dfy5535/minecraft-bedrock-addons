# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0543/4224 | 主题内编号: b031/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·阶梯圣火烽火台 (pale_garden_tower_ziggurat_fire)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~14 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~14 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~14 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~14 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 10
replaceitem block ~4 ~-2 ~3 slot.container 1 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 2 ender_pearl 5
replaceitem block ~4 ~-2 ~3 slot.container 3 spider_eye 9
replaceitem block ~4 ~-2 ~3 slot.container 4 phantom_membrane 7
replaceitem block ~4 ~-2 ~3 slot.container 5 resin_clump 17
replaceitem block ~4 ~-2 ~3 slot.container 9 pale_moss_block 8
replaceitem block ~4 ~-2 ~3 slot.container 10 iron_ingot 9
replaceitem block ~4 ~-2 ~3 slot.container 11 diamond 4
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 5
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_axe 1
replaceitem block ~4 ~-2 ~3 slot.container 14 shield 1
loot insert ~4 ~-2 ~3 loot "rsf/pale_garden"
loot insert ~4 ~-2 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 pale_oak_planks []
fill ~-4 ~5 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 pale_oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~10 ~-5 ~-6 ~12 ~-5 pale_oak_log []
setblock ~-6 ~13 ~-5 soul_lantern []
fill ~-6 ~10 ~5 ~-6 ~12 ~5 pale_oak_log []
setblock ~-6 ~13 ~5 soul_lantern []
fill ~6 ~10 ~-5 ~6 ~12 ~-5 pale_oak_log []
setblock ~6 ~13 ~-5 soul_lantern []
fill ~6 ~10 ~5 ~6 ~12 ~5 pale_oak_log []
setblock ~6 ~13 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 pale_oak_log []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 pale_oak_log []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 pale_oak_log []
fill ~6 ~0 ~2 ~6 ~8 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~-9 ~0 ~-1 ~-9 ~6 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~6 ~-1 pale_oak_log []
setblock ~-9 ~7 ~-1 resin_block []
setblock ~9 ~7 ~-1 chiseled_resin_bricks []
setblock ~-9 ~8 ~-1 soul_lantern []
setblock ~9 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 phantom_membrane 10
replaceitem block ~5 ~1 ~3 slot.container 1 resin_clump 12
replaceitem block ~5 ~1 ~3 slot.container 2 bone 11
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 13
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 soul_lantern 8
replaceitem block ~5 ~1 ~3 slot.container 10 resin_brick 17
replaceitem block ~5 ~1 ~3 slot.container 11 pale_oak_log 22
replaceitem block ~5 ~1 ~3 slot.container 12 pale_oak_sapling 4
replaceitem block ~5 ~1 ~3 slot.container 13 pale_moss_block 9
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 16
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 7
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 10 resin_brick 15
replaceitem block ~-5 ~1 ~4 slot.container 11 pale_oak_log 20
replaceitem block ~-5 ~1 ~4 slot.container 12 pale_oak_sapling 9
replaceitem block ~-5 ~1 ~4 slot.container 13 pale_moss_block 14
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
