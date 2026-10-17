# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2216/4224 | 主题内编号: b040/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·崩裂远古符文石碑 (frozen_peaks_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 deepslate_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 gunpowder 9
replaceitem block ~2 ~-2 ~3 slot.container 1 goat_horn 3
replaceitem block ~2 ~-2 ~3 slot.container 2 leather 9
replaceitem block ~2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 4 bone 17
replaceitem block ~2 ~-2 ~3 slot.container 5 arrow 26
replaceitem block ~2 ~-2 ~3 slot.container 9 coal 16
replaceitem block ~2 ~-2 ~3 slot.container 10 cooked_mutton 9
replaceitem block ~2 ~-2 ~3 slot.container 11 golden_apple 4
replaceitem block ~2 ~-2 ~3 slot.container 12 leather_boots 1
replaceitem block ~2 ~-2 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~2 ~-2 ~3 slot.container 14 crossbow 1
loot insert ~2 ~-2 ~3 loot "rsf/frozen_peaks"
loot insert ~2 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 stone_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 packed_ice []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 deepslate_bricks []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-4 ~6 ~-1 ~-4 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~6 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~6 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~6 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~6 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x7x5) ---
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
replaceitem block ~-3 ~1 ~4 slot.container 9 campfire 6
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~-3 ~1 ~4 slot.container 11 emerald 12
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 13 coal 17
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_mutton 10
loot insert ~-3 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 3 goat_horn 1
replaceitem block ~3 ~1 ~4 slot.container 4 leather 7
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 campfire 4
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 10
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 13 coal 22
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_mutton 8
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-2 ~0
