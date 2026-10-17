# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0633/4224 | 主题内编号: b121/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·卫城廊柱王座大殿与地宫 (pale_garden_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~13 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 pale_oak_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 pale_oak_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 pale_oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 pale_moss_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
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

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~9 ~6 pale_oak_planks []
fill ~-6 ~1 ~0 ~6 ~8 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~9 ~-6 pale_oak_log []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 pale_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 pale_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 pale_oak_log []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 pale_oak_log []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 pale_oak_log []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 pale_oak_log []
fill ~7 ~1 ~-6 ~7 ~9 ~-6 pale_oak_log []
fill ~-7 ~9 ~-6 ~7 ~9 ~-1 resin_bricks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~10 ~-7 ~-8 ~10 ~7 pale_oak_stairs ["weirdo_direction"=0]
fill ~8 ~10 ~-7 ~8 ~10 ~7 pale_oak_stairs ["weirdo_direction"=1]
fill ~-7 ~11 ~-6 ~-7 ~11 ~6 pale_oak_stairs ["weirdo_direction"=0]
fill ~7 ~11 ~-6 ~7 ~11 ~6 pale_oak_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-6 ~6 ~11 ~6 pale_oak_slab []
fill ~0 ~12 ~-7 ~0 ~12 ~7 resin_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 pale_oak_log []
setblock ~-9 ~6 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 pale_oak_log []
setblock ~-9 ~6 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 pale_oak_log []
setblock ~9 ~6 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~5 ~8 pale_oak_log []
setblock ~9 ~6 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 10x7x3) ---
fill ~-10 ~0 ~-1 ~-10 ~6 ~-1 pale_oak_log []
fill ~10 ~0 ~-1 ~10 ~6 ~-1 pale_oak_log []
setblock ~-10 ~7 ~-1 resin_block []
setblock ~10 ~7 ~-1 chiseled_resin_bricks []
setblock ~-10 ~8 ~-1 soul_lantern []
setblock ~10 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_resin_bricks []
setblock ~0 ~1 ~0 resin_block []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 11
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 2 string 13
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 5 spider_eye 12
replaceitem block ~6 ~1 ~4 slot.container 9 soul_lantern 7
replaceitem block ~6 ~1 ~4 slot.container 10 resin_brick 16
replaceitem block ~6 ~1 ~4 slot.container 11 pale_oak_log 21
replaceitem block ~6 ~1 ~4 slot.container 12 pale_oak_sapling 10
replaceitem block ~6 ~1 ~4 slot.container 13 pale_moss_block 8
replaceitem block ~6 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~6 ~1 ~4 loot "rsf/pale_garden"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 string 16
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 15
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 3 spider_eye 7
replaceitem block ~-6 ~1 ~5 slot.container 4 phantom_membrane 5
replaceitem block ~-6 ~1 ~5 slot.container 5 resin_clump 15
replaceitem block ~-6 ~1 ~5 slot.container 9 soul_lantern 5
replaceitem block ~-6 ~1 ~5 slot.container 10 resin_brick 14
replaceitem block ~-6 ~1 ~5 slot.container 11 pale_oak_log 19
replaceitem block ~-6 ~1 ~5 slot.container 12 pale_oak_sapling 8
replaceitem block ~-6 ~1 ~5 slot.container 13 pale_moss_block 13
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_ingot 14
loot insert ~-6 ~1 ~5 loot "rsf/pale_garden"
loot insert ~-6 ~1 ~5 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
