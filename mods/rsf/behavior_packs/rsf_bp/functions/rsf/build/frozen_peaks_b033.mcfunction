# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2209/4224 | 主题内编号: b033/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·太阳金顶高耸方尖碑 (frozen_peaks_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~12 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_ice []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 calcite []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 snow []
setblock ~0 ~-6 ~0 iron_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 2 goat_horn 3
replaceitem block ~0 ~-3 ~-2 slot.container 3 leather 9
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 cooked_mutton 8
replaceitem block ~0 ~-3 ~-2 slot.container 10 golden_apple 3
replaceitem block ~0 ~-3 ~-2 slot.container 11 leather_boots 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 crossbow 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 campfire 7
loot insert ~0 ~-3 ~-2 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~-2 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 deepslate_bricks []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 snow []
fill ~-1 ~5 ~-2 ~1 ~10 ~2 calcite []
fill ~-1 ~1 ~-2 ~1 ~9 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 snow []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 deepslate_bricks []
fill ~0 ~16 ~0 ~0 ~18 ~0 blue_ice []
setblock ~0 ~19 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~3 ~-6 polished_deepslate []
setblock ~-5 ~4 ~-6 soul_lantern []
fill ~-5 ~0 ~6 ~-5 ~3 ~6 polished_deepslate []
setblock ~-5 ~4 ~6 soul_lantern []
fill ~5 ~0 ~-6 ~5 ~3 ~-6 polished_deepslate []
setblock ~5 ~4 ~-6 soul_lantern []
fill ~5 ~0 ~6 ~5 ~3 ~6 polished_deepslate []
setblock ~5 ~4 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 4x5x3) ---
fill ~-4 ~0 ~1 ~-4 ~6 ~1 deepslate_bricks []
setblock ~-4 ~7 ~1 packed_ice []
setblock ~-4 ~8 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 string 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 goat_horn 6
replaceitem block ~2 ~1 ~3 slot.container 5 leather 12
replaceitem block ~2 ~1 ~3 slot.container 9 crossbow 1
replaceitem block ~2 ~1 ~3 slot.container 10 campfire 7
replaceitem block ~2 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~2 ~1 ~3 slot.container 12 emerald 6
replaceitem block ~2 ~1 ~3 slot.container 13 iron_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 14 coal 18
loot insert ~2 ~1 ~3 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
