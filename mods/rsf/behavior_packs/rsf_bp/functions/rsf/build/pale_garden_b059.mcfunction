# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0571/4224 | 主题内编号: b059/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·阶梯金字塔法老墓室 (pale_garden_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_moss_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 pale_oak_planks []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 pale_oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 pale_oak_planks []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_deepslate []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 pale_oak_log []
setblock ~-9 ~6 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 pale_oak_log []
setblock ~-9 ~6 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 pale_oak_log []
setblock ~9 ~6 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 pale_oak_log []
setblock ~9 ~6 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x8x6) ---
fill ~-10 ~0 ~-3 ~-10 ~9 ~-3 pale_oak_log []
fill ~10 ~0 ~-3 ~10 ~9 ~-3 pale_oak_log []
setblock ~-10 ~10 ~-3 resin_block []
setblock ~10 ~10 ~-3 chiseled_resin_bricks []
setblock ~-10 ~11 ~-3 soul_lantern []
setblock ~10 ~11 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-6 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 chiseled_deepslate []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 13
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 10
replaceitem block ~6 ~1 ~4 slot.container 5 resin_clump 12
replaceitem block ~6 ~1 ~4 slot.container 9 pale_moss_block 12
replaceitem block ~6 ~1 ~4 slot.container 10 iron_ingot 13
replaceitem block ~6 ~1 ~4 slot.container 11 diamond 8
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~6 ~1 ~4 slot.container 13 iron_axe 1
replaceitem block ~6 ~1 ~4 slot.container 14 shield 1
loot insert ~6 ~1 ~4 loot "rsf/pale_garden"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 1 spider_eye 7
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 5
replaceitem block ~-6 ~1 ~5 slot.container 3 resin_clump 15
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 pale_moss_block 10
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~-6 ~1 ~5 slot.container 11 diamond 6
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 7
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_axe 1
replaceitem block ~-6 ~1 ~5 slot.container 14 shield 1
loot insert ~-6 ~1 ~5 loot "rsf/pale_garden"
loot insert ~-6 ~1 ~5 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
