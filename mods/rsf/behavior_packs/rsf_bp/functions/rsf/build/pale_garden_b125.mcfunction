# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0637/4224 | 主题内编号: b125/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·巨型阶梯金字塔神王殿 (pale_garden_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~14 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~14 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~14 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~14 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 pale_oak_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 pale_oak_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 pale_oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_moss_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 resin_block []
setblock ~-4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-5 ~3 soul_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~0 ~-3 ~3 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-3 ~3 slot.container 2 spider_eye 9
replaceitem block ~0 ~-3 ~3 slot.container 3 phantom_membrane 7
replaceitem block ~0 ~-3 ~3 slot.container 4 resin_clump 17
replaceitem block ~0 ~-3 ~3 slot.container 5 bone 16
replaceitem block ~0 ~-3 ~3 slot.container 9 golden_apple 6
replaceitem block ~0 ~-3 ~3 slot.container 10 iron_axe 1
replaceitem block ~0 ~-3 ~3 slot.container 11 shield 1
replaceitem block ~0 ~-3 ~3 slot.container 12 soul_lantern 4
replaceitem block ~0 ~-3 ~3 slot.container 13 resin_brick 13
replaceitem block ~0 ~-3 ~3 slot.container 14 pale_oak_log 18
loot insert ~0 ~-3 ~3 loot "rsf/pale_garden"
loot insert ~0 ~-3 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 pale_oak_planks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 resin_bricks []
fill ~-5 ~5 ~-4 ~5 ~10 ~4 resin_bricks []
fill ~-5 ~1 ~-4 ~5 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 pale_oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~11 ~-6 ~7 ~11 ~6 resin_bricks []
fill ~-6 ~12 ~-5 ~6 ~12 ~5 resin_bricks []
fill ~-1 ~13 ~-1 ~1 ~13 ~1 chiseled_resin_bricks []
setblock ~0 ~14 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 pale_oak_log []
setblock ~0 ~4 ~-8 resin_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 pale_oak_log []
setblock ~0 ~4 ~8 resin_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 pale_oak_log []
setblock ~-9 ~4 ~0 resin_block []
setblock ~-9 ~5 ~0 soul_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 pale_oak_log []
setblock ~9 ~4 ~0 resin_block []
setblock ~9 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x8x2) ---
fill ~-10 ~0 ~-3 ~-10 ~5 ~-3 pale_oak_log []
fill ~10 ~0 ~-3 ~10 ~5 ~-3 pale_oak_log []
setblock ~-10 ~6 ~-3 resin_block []
setblock ~10 ~6 ~-3 chiseled_resin_bricks []
setblock ~-10 ~7 ~-3 soul_lantern []
setblock ~10 ~7 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 chiseled_resin_bricks []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 1 spider_eye 12
replaceitem block ~6 ~1 ~4 slot.container 2 phantom_membrane 10
replaceitem block ~6 ~1 ~4 slot.container 3 resin_clump 12
replaceitem block ~6 ~1 ~4 slot.container 4 bone 11
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 9 pale_oak_log 16
replaceitem block ~6 ~1 ~4 slot.container 10 pale_oak_sapling 5
replaceitem block ~6 ~1 ~4 slot.container 11 pale_moss_block 10
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~6 ~1 ~4 slot.container 13 diamond 6
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 7
loot insert ~6 ~1 ~4 loot "rsf/pale_garden"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 phantom_membrane 5
replaceitem block ~-6 ~1 ~5 slot.container 1 resin_clump 15
replaceitem block ~-6 ~1 ~5 slot.container 2 bone 14
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 4 string 16
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 9 pale_oak_log 21
replaceitem block ~-6 ~1 ~5 slot.container 10 pale_oak_sapling 10
replaceitem block ~-6 ~1 ~5 slot.container 11 pale_moss_block 8
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 13 diamond 4
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~-6 ~1 ~5 loot "rsf/pale_garden"
loot insert ~-6 ~1 ~5 loot "chests/woodland_mansion"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon witch ~1 ~1 ~1
