# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0513/4224 | 主题内编号: b001/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·三层阶梯圣火祭坛 (pale_garden_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 pale_oak_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 pale_oak_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 resin_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 ender_pearl 5
replaceitem block ~3 ~-2 ~2 slot.container 1 spider_eye 9
replaceitem block ~3 ~-2 ~2 slot.container 2 phantom_membrane 7
replaceitem block ~3 ~-2 ~2 slot.container 3 resin_clump 17
replaceitem block ~3 ~-2 ~2 slot.container 4 bone 16
replaceitem block ~3 ~-2 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-2 ~2 slot.container 9 pale_moss_block 13
replaceitem block ~3 ~-2 ~2 slot.container 10 iron_ingot 14
replaceitem block ~3 ~-2 ~2 slot.container 11 diamond 2
replaceitem block ~3 ~-2 ~2 slot.container 12 golden_apple 3
replaceitem block ~3 ~-2 ~2 slot.container 13 iron_axe 1
replaceitem block ~3 ~-2 ~2 slot.container 14 shield 1
loot insert ~3 ~-2 ~2 loot "rsf/pale_garden"
loot insert ~3 ~-2 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 pale_oak_planks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 resin_bricks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 resin_bricks []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 pale_oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-4 ~-5 ~9 ~-4 pale_oak_log []
setblock ~-5 ~10 ~-4 soul_lantern []
fill ~-5 ~7 ~4 ~-5 ~9 ~4 pale_oak_log []
setblock ~-5 ~10 ~4 soul_lantern []
fill ~5 ~7 ~-4 ~5 ~9 ~-4 pale_oak_log []
setblock ~5 ~10 ~-4 soul_lantern []
fill ~5 ~7 ~4 ~5 ~9 ~4 pale_oak_log []
setblock ~5 ~10 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 pale_oak_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~-8 ~0 ~0 ~-8 ~6 ~0 pale_oak_log []
fill ~8 ~0 ~0 ~8 ~6 ~0 pale_oak_log []
setblock ~-8 ~7 ~0 resin_block []
setblock ~8 ~7 ~0 chiseled_resin_bricks []
setblock ~-8 ~8 ~0 soul_lantern []
setblock ~8 ~8 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 11
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 2 string 13
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~2 slot.container 9 soul_lantern 6
replaceitem block ~4 ~1 ~2 slot.container 10 resin_brick 15
replaceitem block ~4 ~1 ~2 slot.container 11 pale_oak_log 20
replaceitem block ~4 ~1 ~2 slot.container 12 pale_oak_sapling 9
replaceitem block ~4 ~1 ~2 slot.container 13 pale_moss_block 14
replaceitem block ~4 ~1 ~2 slot.container 14 iron_ingot 8
loot insert ~4 ~1 ~2 loot "rsf/pale_garden"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 16
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 3 spider_eye 7
replaceitem block ~-4 ~1 ~3 slot.container 4 phantom_membrane 5
replaceitem block ~-4 ~1 ~3 slot.container 5 resin_clump 15
replaceitem block ~-4 ~1 ~3 slot.container 9 soul_lantern 4
replaceitem block ~-4 ~1 ~3 slot.container 10 resin_brick 13
replaceitem block ~-4 ~1 ~3 slot.container 11 pale_oak_log 18
replaceitem block ~-4 ~1 ~3 slot.container 12 pale_oak_sapling 7
replaceitem block ~-4 ~1 ~3 slot.container 13 pale_moss_block 12
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 13
loot insert ~-4 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~3 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
