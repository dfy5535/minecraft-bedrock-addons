# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2204/4224 | 主题内编号: b028/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·重檐挑角古钟楼 (frozen_peaks_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 2格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 1 arrow 26
replaceitem block ~0 ~-4 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 3 string 8
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 5 goat_horn 3
replaceitem block ~0 ~-4 ~5 slot.container 9 emerald 7
replaceitem block ~0 ~-4 ~5 slot.container 10 iron_ingot 10
replaceitem block ~0 ~-4 ~5 slot.container 11 coal 19
replaceitem block ~0 ~-4 ~5 slot.container 12 cooked_mutton 12
replaceitem block ~0 ~-4 ~5 slot.container 13 golden_apple 7
replaceitem block ~0 ~-4 ~5 slot.container 14 leather_boots 1
loot insert ~0 ~-4 ~5 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~5 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 arrow 24
replaceitem block ~0 ~-4 ~-5 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 3 string 14
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 5 goat_horn 1
replaceitem block ~0 ~-4 ~-5 slot.container 9 emerald 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_ingot 9
replaceitem block ~0 ~-4 ~-5 slot.container 11 coal 18
replaceitem block ~0 ~-4 ~-5 slot.container 12 cooked_mutton 11
replaceitem block ~0 ~-4 ~-5 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~-5 slot.container 14 leather_boots 1
loot insert ~0 ~-4 ~-5 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 stone_brick_slab []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 deepslate_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 stone_brick_slab []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 deepslate_bricks []
fill ~-4 ~12 ~-5 ~4 ~12 ~5 deepslate_brick_slab []
setblock ~0 ~13 ~0 emerald_block []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 spruce_log []
setblock ~-6 ~4 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 spruce_log []
setblock ~-6 ~4 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 spruce_log []
setblock ~6 ~4 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~3 ~7 spruce_log []
setblock ~6 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x7x3) ---
fill ~-5 ~0 ~1 ~-5 ~6 ~1 deepslate_bricks []
setblock ~-5 ~7 ~1 packed_ice []
setblock ~-5 ~8 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 goat_horn 6
replaceitem block ~-3 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-3 ~1 ~4 slot.container 9 coal 22
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_mutton 8
replaceitem block ~-3 ~1 ~4 slot.container 11 golden_apple 3
replaceitem block ~-3 ~1 ~4 slot.container 12 leather_boots 1
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-3 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 leather 7
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 24
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 coal 20
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_mutton 13
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 8
replaceitem block ~3 ~1 ~4 slot.container 12 leather_boots 1
replaceitem block ~3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 14 crossbow 1
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~2 ~0
