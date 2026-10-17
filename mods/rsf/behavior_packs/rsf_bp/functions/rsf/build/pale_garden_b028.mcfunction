# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0540/4224 | 主题内编号: b028/128
# 地形主题 #05: 苍白花园 (1.21.61 新群系) (pale_garden) —— 带1.21.61树脂砖尖拱与苍白苔藓祭坛
# 建筑名称: 苍白诡庭系·重檐挑角古钟楼 (pale_garden_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[open_colonnade] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: pale_garden
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~15 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 pale_oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 resin_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 pale_moss_block []
setblock ~0 ~0 ~0 resin_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 pale_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 pale_oak_slab []
fill ~-4 ~6 ~-3 ~4 ~11 ~3 pale_oak_planks []
fill ~-3 ~6 ~-2 ~3 ~10 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~6 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-4 ~-5 ~9 ~-4 pale_oak_log []
setblock ~-5 ~10 ~-4 soul_lantern []
fill ~-5 ~7 ~4 ~-5 ~9 ~4 pale_oak_log []
setblock ~-5 ~10 ~4 soul_lantern []
fill ~5 ~7 ~-4 ~5 ~9 ~-4 pale_oak_log []
setblock ~5 ~10 ~-4 soul_lantern []
fill ~5 ~7 ~4 ~5 ~9 ~4 pale_oak_log []
setblock ~5 ~10 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 pale_oak_log []
setblock ~-7 ~6 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 pale_oak_log []
setblock ~-7 ~6 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 pale_oak_log []
setblock ~7 ~6 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~5 ~6 pale_oak_log []
setblock ~7 ~6 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (pale_garden 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~-8 ~0 ~-1 ~-8 ~8 ~-1 pale_oak_log []
fill ~8 ~0 ~-1 ~8 ~8 ~-1 pale_oak_log []
setblock ~-8 ~9 ~-1 resin_block []
setblock ~8 ~9 ~-1 chiseled_resin_bricks []
setblock ~-8 ~10 ~-1 soul_lantern []
setblock ~8 ~10 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~2 slot.container 3 phantom_membrane 10
replaceitem block ~-4 ~1 ~2 slot.container 4 resin_clump 12
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 9 resin_brick 13
replaceitem block ~-4 ~1 ~2 slot.container 10 pale_oak_log 18
replaceitem block ~-4 ~1 ~2 slot.container 11 pale_oak_sapling 7
replaceitem block ~-4 ~1 ~2 slot.container 12 pale_moss_block 12
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 13
replaceitem block ~-4 ~1 ~2 slot.container 14 diamond 8
loot insert ~-4 ~1 ~2 loot "rsf/pale_garden"
summon creaking ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
