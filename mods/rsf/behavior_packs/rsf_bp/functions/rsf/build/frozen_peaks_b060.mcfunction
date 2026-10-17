# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2236/4224 | 主题内编号: b060/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·圆形穹顶万骨祠堂 (frozen_peaks_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~4 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 3 goat_horn 3
replaceitem block ~0 ~-3 ~4 slot.container 4 leather 9
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 emerald 8
replaceitem block ~0 ~-3 ~4 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-3 ~4 slot.container 11 coal 20
replaceitem block ~0 ~-3 ~4 slot.container 12 cooked_mutton 13
replaceitem block ~0 ~-3 ~4 slot.container 13 golden_apple 8
replaceitem block ~0 ~-3 ~4 slot.container 14 leather_boots 1
loot insert ~0 ~-3 ~4 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~4 loot "chests/pillager_outpost"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 3 goat_horn 1
replaceitem block ~0 ~-3 ~-4 slot.container 4 leather 7
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 emerald 7
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_ingot 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 coal 19
replaceitem block ~0 ~-3 ~-4 slot.container 12 cooked_mutton 12
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 7
replaceitem block ~0 ~-3 ~-4 slot.container 14 leather_boots 1
loot insert ~0 ~-3 ~-4 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 packed_ice []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~5 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~5 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 spruce_log []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 spruce_log []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 spruce_log []
fill ~5 ~1 ~0 ~5 ~5 ~0 spruce_log []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 spruce_log []
fill ~5 ~1 ~2 ~5 ~5 ~2 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~5 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 packed_ice []
fill ~-4 ~7 ~-5 ~4 ~8 ~5 glass []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~0 ~8 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-6 ~0 ~-3 ~-6 ~8 ~-3 deepslate_bricks []
setblock ~-6 ~9 ~-3 packed_ice []
setblock ~-6 ~10 ~-3 campfire []

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
replaceitem block ~-4 ~1 ~5 slot.container 9 campfire 5
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 11 emerald 11
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 13 coal 16
replaceitem block ~-4 ~1 ~5 slot.container 14 cooked_mutton 9
loot insert ~-4 ~1 ~5 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 7
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 bone 15
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 24
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 campfire 3
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 13 coal 21
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_mutton 14
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon zombie ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon stray ~1 ~1 ~1
