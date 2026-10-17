# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2304/4224 | 主题内编号: b128/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·U型紫禁朝堂大殿与地底金库 (frozen_peaks_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~5 slot.container 1 goat_horn 3
replaceitem block ~4 ~-3 ~5 slot.container 2 leather 9
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 bone 17
replaceitem block ~4 ~-3 ~5 slot.container 5 arrow 26
replaceitem block ~4 ~-3 ~5 slot.container 9 campfire 2
replaceitem block ~4 ~-3 ~5 slot.container 10 lantern 5
replaceitem block ~4 ~-3 ~5 slot.container 11 emerald 8
replaceitem block ~4 ~-3 ~5 slot.container 12 iron_ingot 11
replaceitem block ~4 ~-3 ~5 slot.container 13 coal 20
replaceitem block ~4 ~-3 ~5 slot.container 14 cooked_mutton 13
loot insert ~4 ~-3 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~-3 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 packed_ice []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-8 ~7 ~7 ~8 stone_brick_slab []
fill ~-5 ~8 ~-6 ~5 ~9 ~6 deepslate_bricks []
fill ~-6 ~10 ~-7 ~6 ~10 ~7 deepslate_brick_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobblestone_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x10x3) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 deepslate_bricks []
setblock ~-7 ~7 ~-2 packed_ice []
setblock ~-7 ~8 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 1 arrow 21
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 goat_horn 6
replaceitem block ~-5 ~1 ~6 slot.container 9 coal 17
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_mutton 10
replaceitem block ~-5 ~1 ~6 slot.container 11 golden_apple 5
replaceitem block ~-5 ~1 ~6 slot.container 12 leather_boots 1
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~6 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 goat_horn 1
replaceitem block ~5 ~1 ~6 slot.container 4 leather 7
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 coal 22
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_mutton 8
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 12 leather_boots 1
replaceitem block ~5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 14 crossbow 1
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
