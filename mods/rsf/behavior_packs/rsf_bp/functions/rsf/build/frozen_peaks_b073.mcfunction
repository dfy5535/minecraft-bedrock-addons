# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2249/4224 | 主题内编号: b073/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·八方图腾圣火石阵 (frozen_peaks_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 calcite []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 goat_horn 3
replaceitem block ~3 ~-3 ~4 slot.container 1 leather 9
replaceitem block ~3 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 3 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 4 arrow 26
replaceitem block ~3 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 9 iron_ingot 13
replaceitem block ~3 ~-3 ~4 slot.container 10 coal 22
replaceitem block ~3 ~-3 ~4 slot.container 11 cooked_mutton 8
replaceitem block ~3 ~-3 ~4 slot.container 12 golden_apple 3
replaceitem block ~3 ~-3 ~4 slot.container 13 leather_boots 1
replaceitem block ~3 ~-3 ~4 slot.container 14 iron_pickaxe 1
loot insert ~3 ~-3 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 deepslate_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 air []
fill ~5 ~1 ~6 ~5 ~7 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 polished_deepslate []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 polished_deepslate []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 polished_deepslate []
fill ~4 ~1 ~5 ~4 ~6 ~5 polished_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 polished_deepslate []
setblock ~-5 ~9 ~-6 soul_lantern []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 polished_deepslate []
setblock ~-5 ~9 ~6 soul_lantern []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 polished_deepslate []
setblock ~5 ~9 ~-6 soul_lantern []
fill ~5 ~6 ~6 ~5 ~8 ~6 polished_deepslate []
setblock ~5 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 polished_deepslate []
setblock ~0 ~4 ~-8 iron_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 polished_deepslate []
setblock ~0 ~4 ~8 iron_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 polished_deepslate []
setblock ~-7 ~4 ~0 iron_block []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 polished_deepslate []
setblock ~7 ~4 ~0 iron_block []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 deepslate_bricks []
setblock ~-6 ~7 ~-2 packed_ice []
setblock ~-6 ~8 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 11
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 goat_horn 6
replaceitem block ~4 ~1 ~5 slot.container 5 leather 12
replaceitem block ~4 ~1 ~5 slot.container 9 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 10 campfire 5
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 11
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 14 coal 16
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
