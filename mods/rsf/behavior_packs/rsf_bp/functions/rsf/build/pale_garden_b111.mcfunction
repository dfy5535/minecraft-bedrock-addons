# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0623/4224 | 主题内编号: b111/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·地下禁忌书库与炼药室 (pale_garden_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_moss_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
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
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 pale_oak_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 pale_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 pale_oak_planks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_deepslate []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 pale_oak_log []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 pale_oak_log []
fill ~8 ~0 ~2 ~8 ~6 ~2 pale_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-1 ~-9 ~6 ~-1 pale_oak_log []
fill ~9 ~0 ~-1 ~9 ~6 ~-1 pale_oak_log []
setblock ~-9 ~7 ~-1 resin_block []
setblock ~9 ~7 ~-1 chiseled_resin_bricks []
setblock ~-9 ~8 ~-1 soul_lantern []
setblock ~9 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 phantom_membrane 10
replaceitem block ~5 ~1 ~3 slot.container 1 resin_clump 12
replaceitem block ~5 ~1 ~3 slot.container 2 bone 11
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 13
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 soul_lantern 4
replaceitem block ~5 ~1 ~3 slot.container 10 resin_brick 13
replaceitem block ~5 ~1 ~3 slot.container 11 pale_oak_log 18
replaceitem block ~5 ~1 ~3 slot.container 12 pale_oak_sapling 7
replaceitem block ~5 ~1 ~3 slot.container 13 pale_moss_block 12
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 13
loot insert ~5 ~1 ~3 loot "rsf/pale_garden"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 16
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 7
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 10 resin_brick 18
replaceitem block ~-5 ~1 ~4 slot.container 11 pale_oak_log 16
replaceitem block ~-5 ~1 ~4 slot.container 12 pale_oak_sapling 5
replaceitem block ~-5 ~1 ~4 slot.container 13 pale_moss_block 10
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-5 ~1 ~4 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
