# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2281/4224 | 主题内编号: b105/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·满书架奥术附魔书院 (frozen_peaks_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 deepslate_bricks [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 deepslate_bricks [] replace water
fill ~-5 ~1 ~-7 ~5 ~8 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 packed_ice []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 calcite []
fill ~-2 ~-5 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~4 slot.container 0 goat_horn 3
replaceitem block ~2 ~-3 ~4 slot.container 1 leather 9
replaceitem block ~2 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~4 slot.container 3 bone 17
replaceitem block ~2 ~-3 ~4 slot.container 4 arrow 26
replaceitem block ~2 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-3 ~4 slot.container 9 crossbow 1
replaceitem block ~2 ~-3 ~4 slot.container 10 campfire 5
replaceitem block ~2 ~-3 ~4 slot.container 11 lantern 8
replaceitem block ~2 ~-3 ~4 slot.container 12 emerald 11
replaceitem block ~2 ~-3 ~4 slot.container 13 iron_ingot 14
replaceitem block ~2 ~-3 ~4 slot.container 14 coal 16
loot insert ~2 ~-3 ~4 loot "rsf/frozen_peaks"
loot insert ~2 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~6 ~6 deepslate_bricks []
fill ~-3 ~1 ~-5 ~3 ~5 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~6 ~-6 polished_deepslate []
fill ~-4 ~1 ~6 ~-4 ~6 ~6 polished_deepslate []
fill ~4 ~1 ~-6 ~4 ~6 ~-6 polished_deepslate []
fill ~4 ~1 ~6 ~4 ~6 ~6 polished_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 deepslate_brick_wall []
setblock ~4 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-7 ~-5 ~7 ~7 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-7 ~5 ~7 ~7 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-6 ~-4 ~8 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-6 ~4 ~8 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-6 ~3 ~8 ~6 deepslate_brick_slab []
fill ~0 ~9 ~-7 ~0 ~9 ~7 snow []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 spruce_log []
setblock ~0 ~4 ~-6 emerald_block []
setblock ~0 ~5 ~-6 torch []
fill ~0 ~0 ~6 ~0 ~3 ~6 spruce_log []
setblock ~0 ~4 ~6 emerald_block []
setblock ~0 ~5 ~6 torch []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 spruce_log []
setblock ~-5 ~4 ~0 emerald_block []
setblock ~-5 ~5 ~0 torch []
fill ~5 ~0 ~0 ~5 ~3 ~0 spruce_log []
setblock ~5 ~4 ~0 emerald_block []
setblock ~5 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x7x5) ---
fill ~-5 ~0 ~0 ~-5 ~8 ~0 deepslate_bricks []
setblock ~-5 ~9 ~0 packed_ice []
setblock ~-5 ~10 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 string 11
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 4 goat_horn 6
replaceitem block ~3 ~1 ~5 slot.container 5 leather 12
replaceitem block ~3 ~1 ~5 slot.container 9 cooked_mutton 14
replaceitem block ~3 ~1 ~5 slot.container 10 golden_apple 2
replaceitem block ~3 ~1 ~5 slot.container 11 leather_boots 1
replaceitem block ~3 ~1 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~5 slot.container 13 crossbow 1
replaceitem block ~3 ~1 ~5 slot.container 14 campfire 6
loot insert ~3 ~1 ~5 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
