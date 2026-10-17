# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2210/4224 | 主题内编号: b034/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·双子对称铭文方尖碑 (frozen_peaks_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 leather 9
replaceitem block ~3 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 2 bone 17
replaceitem block ~3 ~-2 ~2 slot.container 3 arrow 26
replaceitem block ~3 ~-2 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-2 ~2 slot.container 5 string 8
replaceitem block ~3 ~-2 ~2 slot.container 9 golden_apple 3
replaceitem block ~3 ~-2 ~2 slot.container 10 leather_boots 1
replaceitem block ~3 ~-2 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-2 ~2 slot.container 12 crossbow 1
replaceitem block ~3 ~-2 ~2 slot.container 13 campfire 7
replaceitem block ~3 ~-2 ~2 slot.container 14 lantern 10
loot insert ~3 ~-2 ~2 loot "rsf/frozen_peaks"
loot insert ~3 ~-2 ~2 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~10 ~4 calcite []
fill ~2 ~1 ~-4 ~5 ~10 ~4 calcite []
fill ~-4 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 stone_bricks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 calcite []
fill ~0 ~15 ~0 ~0 ~17 ~0 iron_block []
setblock ~0 ~18 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 deepslate_bricks []
setblock ~-6 ~8 ~-2 packed_ice []
setblock ~-6 ~9 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~3 slot.container 1 string 11
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 3 goat_horn 6
replaceitem block ~-4 ~1 ~3 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~3 slot.container 9 emerald 11
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_ingot 14
replaceitem block ~-4 ~1 ~3 slot.container 11 coal 16
replaceitem block ~-4 ~1 ~3 slot.container 12 cooked_mutton 9
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 14 leather_boots 1
loot insert ~-4 ~1 ~3 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~3 slot.container 1 goat_horn 1
replaceitem block ~4 ~1 ~3 slot.container 2 leather 7
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~3 slot.container 4 bone 15
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 24
replaceitem block ~4 ~1 ~3 slot.container 9 emerald 9
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 11 coal 21
replaceitem block ~4 ~1 ~3 slot.container 12 cooked_mutton 14
replaceitem block ~4 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~4 ~1 ~3 slot.container 14 leather_boots 1
loot insert ~4 ~1 ~3 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~3 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-2 ~0
