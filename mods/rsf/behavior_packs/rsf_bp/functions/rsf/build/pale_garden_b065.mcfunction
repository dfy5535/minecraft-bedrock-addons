# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0577/4224 | 主题内编号: b065/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·断柱露天古神庙废墟 (pale_garden_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 pale_oak_planks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 pale_oak_planks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 pale_oak_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 pale_moss_block []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 resin_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 ender_pearl 5
replaceitem block ~4 ~-2 ~4 slot.container 1 spider_eye 9
replaceitem block ~4 ~-2 ~4 slot.container 2 phantom_membrane 7
replaceitem block ~4 ~-2 ~4 slot.container 3 resin_clump 17
replaceitem block ~4 ~-2 ~4 slot.container 4 bone 16
replaceitem block ~4 ~-2 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-2 ~4 slot.container 9 diamond 8
replaceitem block ~4 ~-2 ~4 slot.container 10 golden_apple 2
replaceitem block ~4 ~-2 ~4 slot.container 11 iron_axe 1
replaceitem block ~4 ~-2 ~4 slot.container 12 shield 1
replaceitem block ~4 ~-2 ~4 slot.container 13 soul_lantern 7
replaceitem block ~4 ~-2 ~4 slot.container 14 resin_brick 16
loot insert ~4 ~-2 ~4 loot "rsf/pale_garden"
loot insert ~4 ~-2 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 resin_bricks []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 pale_oak_log []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 pale_oak_log []
fill ~-4 ~1 ~-6 ~-4 ~6 ~-6 pale_oak_log []
fill ~-4 ~1 ~6 ~-4 ~6 ~6 pale_oak_log []
fill ~-2 ~1 ~-6 ~-2 ~6 ~-6 pale_oak_log []
fill ~-2 ~1 ~6 ~-2 ~6 ~6 pale_oak_log []
fill ~0 ~1 ~-6 ~0 ~6 ~-6 pale_oak_log []
fill ~0 ~1 ~6 ~0 ~6 ~6 pale_oak_log []
fill ~2 ~1 ~-6 ~2 ~6 ~-6 pale_oak_log []
fill ~2 ~1 ~6 ~2 ~6 ~6 pale_oak_log []
fill ~4 ~1 ~-6 ~4 ~6 ~-6 pale_oak_log []
fill ~4 ~1 ~6 ~4 ~6 ~6 pale_oak_log []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 pale_oak_log []
fill ~6 ~1 ~6 ~6 ~6 ~6 pale_oak_log []
fill ~-6 ~1 ~-4 ~-6 ~6 ~-4 pale_oak_log []
fill ~6 ~1 ~-4 ~6 ~6 ~-4 pale_oak_log []
fill ~-6 ~1 ~-2 ~-6 ~6 ~-2 pale_oak_log []
fill ~6 ~1 ~-2 ~6 ~6 ~-2 pale_oak_log []
fill ~-6 ~1 ~0 ~-6 ~6 ~0 pale_oak_log []
fill ~6 ~1 ~0 ~6 ~6 ~0 pale_oak_log []
fill ~-6 ~1 ~2 ~-6 ~6 ~2 pale_oak_log []
fill ~6 ~1 ~2 ~6 ~6 ~2 pale_oak_log []
fill ~-6 ~1 ~4 ~-6 ~6 ~4 pale_oak_log []
fill ~6 ~1 ~4 ~6 ~6 ~4 pale_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 pale_oak_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 pale_moss_block []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~-3 ~-9 ~5 ~-3 pale_oak_log []
fill ~9 ~0 ~-3 ~9 ~5 ~-3 pale_oak_log []
setblock ~-9 ~6 ~-3 resin_block []
setblock ~9 ~6 ~-3 chiseled_resin_bricks []
setblock ~-9 ~7 ~-3 soul_lantern []
setblock ~9 ~7 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 chiseled_resin_bricks []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 11
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 string 13
replaceitem block ~5 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~5 ~1 ~4 slot.container 9 pale_oak_log 19
replaceitem block ~5 ~1 ~4 slot.container 10 pale_oak_sapling 8
replaceitem block ~5 ~1 ~4 slot.container 11 pale_moss_block 13
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 13 diamond 2
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~4 loot "rsf/pale_garden"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 16
replaceitem block ~-5 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 3
replaceitem block ~-5 ~1 ~5 slot.container 3 spider_eye 7
replaceitem block ~-5 ~1 ~5 slot.container 4 phantom_membrane 5
replaceitem block ~-5 ~1 ~5 slot.container 5 resin_clump 15
replaceitem block ~-5 ~1 ~5 slot.container 9 pale_oak_log 17
replaceitem block ~-5 ~1 ~5 slot.container 10 pale_oak_sapling 6
replaceitem block ~-5 ~1 ~5 slot.container 11 pale_moss_block 11
replaceitem block ~-5 ~1 ~5 slot.container 12 iron_ingot 12
replaceitem block ~-5 ~1 ~5 slot.container 13 diamond 7
replaceitem block ~-5 ~1 ~5 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~5 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~5 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
