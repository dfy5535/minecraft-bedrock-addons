# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0631/4224 | 主题内编号: b119/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·半地下恒温洞穴苗圃 (pale_garden_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 pale_moss_block []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 resin_bricks []
setblock ~0 ~0 ~0 chiseled_deepslate []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 soul_lantern []
setblock ~4 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 ender_pearl 5
replaceitem block ~0 ~-3 ~3 slot.container 1 spider_eye 9
replaceitem block ~0 ~-3 ~3 slot.container 2 phantom_membrane 7
replaceitem block ~0 ~-3 ~3 slot.container 3 resin_clump 17
replaceitem block ~0 ~-3 ~3 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~3 slot.container 9 pale_oak_log 22
replaceitem block ~0 ~-3 ~3 slot.container 10 pale_oak_sapling 4
replaceitem block ~0 ~-3 ~3 slot.container 11 pale_moss_block 9
replaceitem block ~0 ~-3 ~3 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-3 ~3 slot.container 13 diamond 5
replaceitem block ~0 ~-3 ~3 slot.container 14 golden_apple 6
loot insert ~0 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~3 loot "chests/woodland_mansion"
setblock ~0 ~-3 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-3 slot.container 0 ender_pearl 3
replaceitem block ~0 ~-3 ~-3 slot.container 1 spider_eye 7
replaceitem block ~0 ~-3 ~-3 slot.container 2 phantom_membrane 5
replaceitem block ~0 ~-3 ~-3 slot.container 3 resin_clump 15
replaceitem block ~0 ~-3 ~-3 slot.container 4 bone 14
replaceitem block ~0 ~-3 ~-3 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-3 ~-3 slot.container 9 pale_oak_log 21
replaceitem block ~0 ~-3 ~-3 slot.container 10 pale_oak_sapling 10
replaceitem block ~0 ~-3 ~-3 slot.container 11 pale_moss_block 8
replaceitem block ~0 ~-3 ~-3 slot.container 12 iron_ingot 9
replaceitem block ~0 ~-3 ~-3 slot.container 13 diamond 4
replaceitem block ~0 ~-3 ~-3 slot.container 14 golden_apple 5
loot insert ~0 ~-3 ~-3 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~-3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 deepslate_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 pale_oak_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 pale_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 pale_oak_planks []
fill ~-4 ~7 ~-4 ~4 ~8 ~4 glass []
fill ~-3 ~7 ~-3 ~3 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 pale_oak_fence []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~2 ~-8 ~9 ~2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~9 ~2 pale_oak_log []
setblock ~-8 ~10 ~2 resin_block []
setblock ~8 ~10 ~2 chiseled_resin_bricks []
setblock ~-8 ~11 ~2 soul_lantern []
setblock ~8 ~11 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 phantom_membrane 10
replaceitem block ~4 ~1 ~3 slot.container 1 resin_clump 12
replaceitem block ~4 ~1 ~3 slot.container 2 bone 11
replaceitem block ~4 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 4 string 13
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 9 pale_moss_block 9
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 11 diamond 5
replaceitem block ~4 ~1 ~3 slot.container 12 golden_apple 6
replaceitem block ~4 ~1 ~3 slot.container 13 iron_axe 1
replaceitem block ~4 ~1 ~3 slot.container 14 shield 1
loot insert ~4 ~1 ~3 loot "rsf/pale_garden"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 2 string 16
replaceitem block ~-4 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 5 spider_eye 7
replaceitem block ~-4 ~1 ~4 slot.container 9 pale_moss_block 14
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 11 diamond 3
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_axe 1
replaceitem block ~-4 ~1 ~4 slot.container 14 shield 1
loot insert ~-4 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~4 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
