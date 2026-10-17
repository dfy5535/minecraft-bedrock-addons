# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2300/4224 | 主题内编号: b124/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·三层重檐帝王阁楼与秘库 (frozen_peaks_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 stone_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 stone_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 cobblestone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 deepslate_bricks []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 bone 17
replaceitem block ~3 ~-3 ~5 slot.container 1 arrow 26
replaceitem block ~3 ~-3 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~3 ~-3 ~5 slot.container 3 string 8
replaceitem block ~3 ~-3 ~5 slot.container 4 gunpowder 9
replaceitem block ~3 ~-3 ~5 slot.container 5 goat_horn 3
replaceitem block ~3 ~-3 ~5 slot.container 9 golden_apple 2
replaceitem block ~3 ~-3 ~5 slot.container 10 leather_boots 1
replaceitem block ~3 ~-3 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-3 ~5 slot.container 12 crossbow 1
replaceitem block ~3 ~-3 ~5 slot.container 13 campfire 6
replaceitem block ~3 ~-3 ~5 slot.container 14 lantern 9
loot insert ~3 ~-3 ~5 loot "rsf/frozen_peaks"
loot insert ~3 ~-3 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~4 ~7 stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-6 ~4 ~-8 ~6 ~4 ~8 stone_brick_slab []
fill ~-4 ~5 ~-6 ~4 ~9 ~6 deepslate_bricks []
fill ~-3 ~5 ~-5 ~3 ~8 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~5 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-8 ~6 ~9 ~8 stone_brick_slab []
fill ~-4 ~10 ~-6 ~4 ~11 ~6 deepslate_bricks []
fill ~-5 ~12 ~-7 ~5 ~12 ~7 deepslate_brick_slab []
setblock ~0 ~13 ~0 emerald_block []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 packed_ice []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x9x4) ---
fill ~-6 ~0 ~1 ~-6 ~7 ~1 deepslate_bricks []
setblock ~-6 ~8 ~1 packed_ice []
setblock ~-6 ~9 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 iron_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~6 slot.container 1 goat_horn 6
replaceitem block ~-4 ~1 ~6 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~6 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~6 slot.container 9 emerald 10
replaceitem block ~-4 ~1 ~6 slot.container 10 iron_ingot 13
replaceitem block ~-4 ~1 ~6 slot.container 11 coal 22
replaceitem block ~-4 ~1 ~6 slot.container 12 cooked_mutton 8
replaceitem block ~-4 ~1 ~6 slot.container 13 golden_apple 3
replaceitem block ~-4 ~1 ~6 slot.container 14 leather_boots 1
loot insert ~-4 ~1 ~6 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 leather 7
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 bone 15
replaceitem block ~4 ~1 ~6 slot.container 3 arrow 24
replaceitem block ~4 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 5 string 14
replaceitem block ~4 ~1 ~6 slot.container 9 emerald 8
replaceitem block ~4 ~1 ~6 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~6 slot.container 11 coal 20
replaceitem block ~4 ~1 ~6 slot.container 12 cooked_mutton 13
replaceitem block ~4 ~1 ~6 slot.container 13 golden_apple 8
replaceitem block ~4 ~1 ~6 slot.container 14 leather_boots 1
loot insert ~4 ~1 ~6 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~6 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-3 ~0
