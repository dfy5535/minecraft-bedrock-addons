# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2256/4224 | 主题内编号: b080/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·悬灯祈福图腾花坛 (frozen_peaks_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-5 ~4 ~-1 ~5 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~3 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~2 ~4 air []
fill ~-5 ~3 ~-6 ~5 ~3 ~6 stone_brick_slab []
fill ~-3 ~4 ~-4 ~3 ~6 ~4 deepslate_bricks []
fill ~-2 ~4 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 stone_brick_slab []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 deepslate_bricks []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 deepslate_brick_slab []
setblock ~0 ~10 ~0 emerald_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 blue_ice []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 blue_ice []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 spruce_log []
setblock ~-6 ~4 ~0 blue_ice []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 spruce_log []
setblock ~6 ~4 ~0 blue_ice []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x8x5) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 deepslate_bricks []
setblock ~-5 ~9 ~-2 packed_ice []
setblock ~-5 ~10 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 string 11
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 5 goat_horn 6
replaceitem block ~-3 ~1 ~4 slot.container 9 campfire 4
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~-3 ~1 ~4 slot.container 11 emerald 10
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 13
replaceitem block ~-3 ~1 ~4 slot.container 13 coal 22
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_mutton 8
loot insert ~-3 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 3 goat_horn 1
replaceitem block ~3 ~1 ~4 slot.container 4 leather 7
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 campfire 2
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 8
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 13 coal 20
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_mutton 13
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
