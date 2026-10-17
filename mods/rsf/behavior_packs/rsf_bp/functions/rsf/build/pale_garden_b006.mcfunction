# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0518/4224 | 主题内编号: b006/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·重檐飞角四方神龛 (pale_garden_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 resin_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 resin_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 1 string 10
replaceitem block ~3 ~-3 ~2 slot.container 2 gunpowder 9
replaceitem block ~3 ~-3 ~2 slot.container 3 ender_pearl 5
replaceitem block ~3 ~-3 ~2 slot.container 4 spider_eye 9
replaceitem block ~3 ~-3 ~2 slot.container 5 phantom_membrane 7
replaceitem block ~3 ~-3 ~2 slot.container 9 shield 1
replaceitem block ~3 ~-3 ~2 slot.container 10 soul_lantern 8
replaceitem block ~3 ~-3 ~2 slot.container 11 resin_brick 17
replaceitem block ~3 ~-3 ~2 slot.container 12 pale_oak_log 22
replaceitem block ~3 ~-3 ~2 slot.container 13 pale_oak_sapling 4
replaceitem block ~3 ~-3 ~2 slot.container 14 pale_moss_block 9
loot insert ~3 ~-3 ~2 loot "rsf/pale_garden"
loot insert ~3 ~-3 ~2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 resin_bricks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 stripped_pale_oak_log []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 stripped_pale_oak_log []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 stripped_pale_oak_log []
fill ~5 ~1 ~4 ~5 ~9 ~4 stripped_pale_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 resin_brick_wall []
setblock ~5 ~2 ~0 resin_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 resin_brick_slab []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 deepslate_bricks []
fill ~-5 ~12 ~-4 ~5 ~12 ~4 deepslate_brick_slab []
setblock ~0 ~13 ~0 resin_block []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_deepslate []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~1 ~-8 ~6 ~1 pale_oak_log []
fill ~8 ~0 ~1 ~8 ~6 ~1 pale_oak_log []
setblock ~-8 ~7 ~1 resin_block []
setblock ~8 ~7 ~1 chiseled_resin_bricks []
setblock ~-8 ~8 ~1 soul_lantern []
setblock ~8 ~8 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~2 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 10
replaceitem block ~-4 ~1 ~2 slot.container 2 resin_clump 12
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 13
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 3
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_axe 1
replaceitem block ~-4 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 14 soul_lantern 9
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon zombie ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon spider ~0 ~-3 ~0
