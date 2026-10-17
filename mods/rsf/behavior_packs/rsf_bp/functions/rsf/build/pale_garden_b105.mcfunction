# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0617/4224 | 主题内编号: b105/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·满书架奥术附魔书院 (pale_garden_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 pale_oak_planks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 pale_oak_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 pale_oak_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 pale_moss_block []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 chiseled_resin_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 resin_bricks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 ender_pearl 5
replaceitem block ~3 ~-2 ~3 slot.container 1 spider_eye 9
replaceitem block ~3 ~-2 ~3 slot.container 2 phantom_membrane 7
replaceitem block ~3 ~-2 ~3 slot.container 3 resin_clump 17
replaceitem block ~3 ~-2 ~3 slot.container 4 bone 16
replaceitem block ~3 ~-2 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-2 ~3 slot.container 9 diamond 6
replaceitem block ~3 ~-2 ~3 slot.container 10 golden_apple 7
replaceitem block ~3 ~-2 ~3 slot.container 11 iron_axe 1
replaceitem block ~3 ~-2 ~3 slot.container 12 shield 1
replaceitem block ~3 ~-2 ~3 slot.container 13 soul_lantern 5
replaceitem block ~3 ~-2 ~3 slot.container 14 resin_brick 14
loot insert ~3 ~-2 ~3 loot "rsf/pale_garden"
loot insert ~3 ~-2 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 pale_oak_planks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~8 ~-5 pale_oak_log []
fill ~-5 ~1 ~5 ~-5 ~8 ~5 pale_oak_log []
fill ~5 ~1 ~-5 ~5 ~8 ~-5 pale_oak_log []
fill ~5 ~1 ~5 ~5 ~8 ~5 pale_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 pale_oak_fence []
setblock ~5 ~2 ~0 pale_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~9 ~-6 ~-6 ~9 ~6 pale_oak_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-6 ~6 ~9 ~6 pale_oak_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-5 ~-5 ~10 ~5 pale_oak_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-5 ~5 ~10 ~5 pale_oak_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-5 ~4 ~10 ~5 pale_oak_slab []
fill ~0 ~11 ~-6 ~0 ~11 ~6 resin_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 stripped_pale_oak_log []
setblock ~-7 ~6 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 stripped_pale_oak_log []
setblock ~-7 ~6 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 stripped_pale_oak_log []
setblock ~7 ~6 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 stripped_pale_oak_log []
setblock ~7 ~6 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 pale_oak_log []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 pale_oak_log []
setblock ~-8 ~6 ~-2 resin_block []
setblock ~8 ~6 ~-2 chiseled_resin_bricks []
setblock ~-8 ~7 ~-2 soul_lantern []
setblock ~8 ~7 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 soul_lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 11
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 13
replaceitem block ~4 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~4 ~1 ~3 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~3 slot.container 9 pale_oak_log 17
replaceitem block ~4 ~1 ~3 slot.container 10 pale_oak_sapling 6
replaceitem block ~4 ~1 ~3 slot.container 11 pale_moss_block 11
replaceitem block ~4 ~1 ~3 slot.container 12 iron_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 13 diamond 7
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 8
loot insert ~4 ~1 ~3 loot "rsf/pale_garden"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 16
replaceitem block ~-4 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 2 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 3 spider_eye 7
replaceitem block ~-4 ~1 ~4 slot.container 4 phantom_membrane 5
replaceitem block ~-4 ~1 ~4 slot.container 5 resin_clump 15
replaceitem block ~-4 ~1 ~4 slot.container 9 pale_oak_log 22
replaceitem block ~-4 ~1 ~4 slot.container 10 pale_oak_sapling 4
replaceitem block ~-4 ~1 ~4 slot.container 11 pale_moss_block 9
replaceitem block ~-4 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~-4 ~1 ~4 slot.container 13 diamond 5
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~4 loot "rsf/pale_garden"
loot insert ~-4 ~1 ~4 loot "chests/woodland_mansion"
summon spider ~0 ~1 ~-1
summon creaking ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0
