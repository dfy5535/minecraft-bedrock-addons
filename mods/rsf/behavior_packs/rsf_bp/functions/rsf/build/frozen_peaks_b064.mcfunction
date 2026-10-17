# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2240/4224 | 主题内编号: b064/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·U型冥庭守墓人陵园 (frozen_peaks_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
setblock ~0 ~-6 ~0 blue_ice []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~-4 slot.container 3 goat_horn 3
replaceitem block ~0 ~-3 ~-4 slot.container 4 leather 9
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 crossbow 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 campfire 7
replaceitem block ~0 ~-3 ~-4 slot.container 12 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 emerald 6
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_ingot 9
loot insert ~0 ~-3 ~-4 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 packed_ice []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 stone_brick_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~-6 ~0 ~1 ~-6 ~7 ~1 deepslate_bricks []
setblock ~-6 ~8 ~1 packed_ice []
setblock ~-6 ~9 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 11
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 5 goat_horn 6
replaceitem block ~-4 ~1 ~5 slot.container 9 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 11 coal 18
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_mutton 11
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_apple 6
replaceitem block ~-4 ~1 ~5 slot.container 14 leather_boots 1
loot insert ~-4 ~1 ~5 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 3 goat_horn 1
replaceitem block ~4 ~1 ~5 slot.container 4 leather 7
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 11
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 11 coal 16
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_mutton 9
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 14 leather_boots 1
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-3 ~0
