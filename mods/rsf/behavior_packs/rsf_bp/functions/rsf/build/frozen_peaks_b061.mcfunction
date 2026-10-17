# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2237/4224 | 主题内编号: b061/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·双子封土古墓地宫 (frozen_peaks_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 snow []
setblock ~0 ~-7 ~0 iron_block []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_lantern []
setblock ~2 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 arrow 26
replaceitem block ~0 ~-4 ~-3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 4 string 8
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~-3 slot.container 9 crossbow 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 campfire 3
replaceitem block ~0 ~-4 ~-3 slot.container 11 lantern 6
replaceitem block ~0 ~-4 ~-3 slot.container 12 emerald 9
replaceitem block ~0 ~-4 ~-3 slot.container 13 iron_ingot 12
replaceitem block ~0 ~-4 ~-3 slot.container 14 coal 21
loot insert ~0 ~-4 ~-3 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~-3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~6 ~5 deepslate_bricks []
fill ~2 ~1 ~-5 ~6 ~6 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 snow []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 snow []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 calcite []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 blue_ice []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 snow []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-1 ~-7 ~9 ~-1 deepslate_bricks []
setblock ~-7 ~10 ~-1 packed_ice []
setblock ~-7 ~11 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 goat_horn 6
replaceitem block ~5 ~1 ~4 slot.container 1 leather 12
replaceitem block ~5 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 3 bone 12
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 10 coal 21
replaceitem block ~5 ~1 ~4 slot.container 11 cooked_mutton 14
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 13 leather_boots 1
replaceitem block ~5 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~4 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-4 ~0
