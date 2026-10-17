# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2177/4224 | 主题内编号: b001/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·三层阶梯圣火祭坛 (frozen_peaks_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 deepslate_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 snow []
fill ~-2 ~5 ~-3 ~2 ~5 ~3 calcite []
fill ~-2 ~1 ~-3 ~2 ~4 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~5 ~-5 ~-4 ~7 ~-5 polished_deepslate []
setblock ~-4 ~8 ~-5 soul_lantern []
fill ~-4 ~5 ~5 ~-4 ~7 ~5 polished_deepslate []
setblock ~-4 ~8 ~5 soul_lantern []
fill ~4 ~5 ~-5 ~4 ~7 ~-5 polished_deepslate []
setblock ~4 ~8 ~-5 soul_lantern []
fill ~4 ~5 ~5 ~4 ~7 ~5 polished_deepslate []
setblock ~4 ~8 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 polished_deepslate []
setblock ~-6 ~4 ~-7 soul_lantern []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 polished_deepslate []
setblock ~-6 ~4 ~7 soul_lantern []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 polished_deepslate []
setblock ~6 ~4 ~-7 soul_lantern []
fill ~6 ~0 ~7 ~6 ~3 ~7 polished_deepslate []
setblock ~6 ~4 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x7x6) ---
fill ~-5 ~0 ~-1 ~-5 ~9 ~-1 deepslate_bricks []
setblock ~-5 ~10 ~-1 packed_ice []
setblock ~-5 ~11 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 string 11
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 4 goat_horn 6
replaceitem block ~3 ~1 ~4 slot.container 5 leather 12
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 10 coal 17
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_mutton 10
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~3 ~1 ~4 slot.container 13 leather_boots 1
replaceitem block ~3 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
