# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2252/4224 | 主题内编号: b076/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·阶梯高台图腾战阵 (frozen_peaks_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 emerald_block []
setblock ~-3 ~-4 ~-4 lantern []
setblock ~3 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 gunpowder 9
replaceitem block ~0 ~-2 ~4 slot.container 1 goat_horn 3
replaceitem block ~0 ~-2 ~4 slot.container 2 leather 9
replaceitem block ~0 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-2 ~4 slot.container 4 bone 17
replaceitem block ~0 ~-2 ~4 slot.container 5 arrow 26
replaceitem block ~0 ~-2 ~4 slot.container 9 campfire 4
replaceitem block ~0 ~-2 ~4 slot.container 10 lantern 7
replaceitem block ~0 ~-2 ~4 slot.container 11 emerald 10
replaceitem block ~0 ~-2 ~4 slot.container 12 iron_ingot 13
replaceitem block ~0 ~-2 ~4 slot.container 13 coal 22
replaceitem block ~0 ~-2 ~4 slot.container 14 cooked_mutton 8
loot insert ~0 ~-2 ~4 loot "rsf/frozen_peaks"
loot insert ~0 ~-2 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 stone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 packed_ice []
fill ~-3 ~5 ~-4 ~3 ~7 ~4 deepslate_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 packed_ice []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 stone_bricks []
fill ~0 ~13 ~0 ~0 ~15 ~0 emerald_block []
setblock ~0 ~16 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 blue_ice []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 blue_ice []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 spruce_log []
setblock ~-7 ~4 ~0 blue_ice []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 spruce_log []
setblock ~7 ~4 ~0 blue_ice []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~-6 ~0 ~1 ~-6 ~9 ~1 deepslate_bricks []
setblock ~-6 ~10 ~1 packed_ice []
setblock ~-6 ~11 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 goat_horn 6
replaceitem block ~-4 ~1 ~5 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 11 campfire 2
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 5
replaceitem block ~-4 ~1 ~5 slot.container 13 emerald 8
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 11
loot insert ~-4 ~1 ~5 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 7
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 24
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 11 campfire 7
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-2 ~0
