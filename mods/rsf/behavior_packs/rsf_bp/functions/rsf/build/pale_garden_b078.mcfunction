# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0590/4224 | 主题内编号: b078/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·下沉祭池图腾柱群 (pale_garden_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 resin_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 resin_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 resin_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 pale_oak_planks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 resin_clump 17
replaceitem block ~-4 ~-4 ~3 slot.container 1 bone 16
replaceitem block ~-4 ~-4 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~-4 ~-4 ~3 slot.container 3 string 10
replaceitem block ~-4 ~-4 ~3 slot.container 4 gunpowder 9
replaceitem block ~-4 ~-4 ~3 slot.container 5 ender_pearl 5
replaceitem block ~-4 ~-4 ~3 slot.container 9 golden_apple 5
replaceitem block ~-4 ~-4 ~3 slot.container 10 iron_axe 1
replaceitem block ~-4 ~-4 ~3 slot.container 11 shield 1
replaceitem block ~-4 ~-4 ~3 slot.container 12 soul_lantern 10
replaceitem block ~-4 ~-4 ~3 slot.container 13 resin_brick 12
replaceitem block ~-4 ~-4 ~3 slot.container 14 pale_oak_log 17
loot insert ~-4 ~-4 ~3 loot "rsf/pale_garden"
loot insert ~-4 ~-4 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 resin_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 pale_oak_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 pale_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 resin_bricks []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 resin_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_resin_bricks []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 stripped_pale_oak_log []
setblock ~-8 ~6 ~-7 lantern []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 stripped_pale_oak_log []
setblock ~-8 ~6 ~7 lantern []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 stripped_pale_oak_log []
setblock ~8 ~6 ~-7 lantern []
fill ~8 ~0 ~7 ~8 ~5 ~7 stripped_pale_oak_log []
setblock ~8 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~1 ~-9 ~8 ~1 pale_oak_log []
fill ~9 ~0 ~1 ~9 ~8 ~1 pale_oak_log []
setblock ~-9 ~9 ~1 resin_block []
setblock ~9 ~9 ~1 chiseled_resin_bricks []
setblock ~-9 ~10 ~1 soul_lantern []
setblock ~9 ~10 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 10
replaceitem block ~-5 ~1 ~3 slot.container 2 resin_clump 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 13
replaceitem block ~-5 ~1 ~3 slot.container 9 resin_brick 14
replaceitem block ~-5 ~1 ~3 slot.container 10 pale_oak_log 19
replaceitem block ~-5 ~1 ~3 slot.container 11 pale_oak_sapling 8
replaceitem block ~-5 ~1 ~3 slot.container 12 pale_moss_block 13
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 2
loot insert ~-5 ~1 ~3 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-4 ~0
