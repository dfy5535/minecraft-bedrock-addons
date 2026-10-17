# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0517/4224 | 主题内编号: b005/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·下沉圣泉秘宝祭坛 (pale_garden_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 pale_oak_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 pale_oak_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 resin_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 phantom_membrane 7
replaceitem block ~-3 ~-3 ~2 slot.container 1 resin_clump 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 bone 16
replaceitem block ~-3 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 string 10
replaceitem block ~-3 ~-3 ~2 slot.container 5 gunpowder 9
replaceitem block ~-3 ~-3 ~2 slot.container 9 iron_axe 1
replaceitem block ~-3 ~-3 ~2 slot.container 10 shield 1
replaceitem block ~-3 ~-3 ~2 slot.container 11 soul_lantern 6
replaceitem block ~-3 ~-3 ~2 slot.container 12 resin_brick 15
replaceitem block ~-3 ~-3 ~2 slot.container 13 pale_oak_log 20
replaceitem block ~-3 ~-3 ~2 slot.container 14 pale_oak_sapling 9
loot insert ~-3 ~-3 ~2 loot "rsf/pale_garden"
loot insert ~-3 ~-3 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 pale_oak_planks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 resin_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 resin_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 resin_bricks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 resin_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_resin_bricks []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 pale_oak_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~0 ~-8 ~5 ~0 pale_oak_log []
fill ~8 ~0 ~0 ~8 ~5 ~0 pale_oak_log []
setblock ~-8 ~6 ~0 resin_block []
setblock ~8 ~6 ~0 chiseled_resin_bricks []
setblock ~-8 ~7 ~0 soul_lantern []
setblock ~8 ~7 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 1 spider_eye 12
replaceitem block ~4 ~1 ~2 slot.container 2 phantom_membrane 10
replaceitem block ~4 ~1 ~2 slot.container 3 resin_clump 12
replaceitem block ~4 ~1 ~2 slot.container 4 bone 11
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 9 pale_oak_log 22
replaceitem block ~4 ~1 ~2 slot.container 10 pale_oak_sapling 4
replaceitem block ~4 ~1 ~2 slot.container 11 pale_moss_block 9
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~2 slot.container 13 diamond 5
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~2 loot "rsf/pale_garden"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 phantom_membrane 5
replaceitem block ~-4 ~1 ~3 slot.container 1 resin_clump 15
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 4 string 16
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 9 pale_oak_log 20
replaceitem block ~-4 ~1 ~3 slot.container 10 pale_oak_sapling 9
replaceitem block ~-4 ~1 ~3 slot.container 11 pale_moss_block 14
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 8
replaceitem block ~-4 ~1 ~3 slot.container 13 diamond 3
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 4
loot insert ~-4 ~1 ~3 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~3 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
