# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2228/4224 | 主题内编号: b052/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·重檐行商旅店客栈 (frozen_peaks_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 stone_bricks [] replace air
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 stone_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 cobblestone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 deepslate_bricks []
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~5 slot.container 0 bone 17
replaceitem block ~3 ~-2 ~5 slot.container 1 arrow 26
replaceitem block ~3 ~-2 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~3 ~-2 ~5 slot.container 3 string 8
replaceitem block ~3 ~-2 ~5 slot.container 4 gunpowder 9
replaceitem block ~3 ~-2 ~5 slot.container 5 goat_horn 3
replaceitem block ~3 ~-2 ~5 slot.container 9 campfire 7
replaceitem block ~3 ~-2 ~5 slot.container 10 lantern 10
replaceitem block ~3 ~-2 ~5 slot.container 11 emerald 6
replaceitem block ~3 ~-2 ~5 slot.container 12 iron_ingot 9
replaceitem block ~3 ~-2 ~5 slot.container 13 coal 18
replaceitem block ~3 ~-2 ~5 slot.container 14 cooked_mutton 11
loot insert ~3 ~-2 ~5 loot "rsf/frozen_peaks"
loot insert ~3 ~-2 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~3 ~7 stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~2 ~6 air []
fill ~-6 ~3 ~-8 ~6 ~3 ~8 stone_brick_slab []
fill ~-4 ~4 ~-6 ~4 ~6 ~6 deepslate_bricks []
fill ~-3 ~4 ~-5 ~3 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~4 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-8 ~6 ~6 ~8 stone_brick_slab []
fill ~-4 ~7 ~-6 ~4 ~8 ~6 deepslate_bricks []
fill ~-5 ~9 ~-7 ~5 ~9 ~7 deepslate_brick_slab []
setblock ~0 ~10 ~0 emerald_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 packed_ice []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 spruce_log []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 spruce_log []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 stone_brick_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x9x2) ---
fill ~-6 ~0 ~-1 ~-6 ~5 ~-1 deepslate_bricks []
setblock ~-6 ~6 ~-1 packed_ice []
setblock ~-6 ~7 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~6 slot.container 1 goat_horn 6
replaceitem block ~-4 ~1 ~6 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~6 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~6 slot.container 9 golden_apple 4
replaceitem block ~-4 ~1 ~6 slot.container 10 leather_boots 1
replaceitem block ~-4 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~6 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~6 slot.container 13 campfire 8
replaceitem block ~-4 ~1 ~6 slot.container 14 lantern 4
loot insert ~-4 ~1 ~6 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 leather 7
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 bone 15
replaceitem block ~4 ~1 ~6 slot.container 3 arrow 24
replaceitem block ~4 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 5 string 14
replaceitem block ~4 ~1 ~6 slot.container 9 golden_apple 2
replaceitem block ~4 ~1 ~6 slot.container 10 leather_boots 1
replaceitem block ~4 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~6 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~6 slot.container 13 campfire 6
replaceitem block ~4 ~1 ~6 slot.container 14 lantern 9
loot insert ~4 ~1 ~6 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~6 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-2 ~0
