# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2201/4224 | 主题内编号: b025/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·雉堞女墙四方哨塔 (frozen_peaks_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 9x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~11 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_ice []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 snow []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~9 ~4 deepslate_bricks []
fill ~-2 ~1 ~-3 ~2 ~8 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~9 ~-4 polished_deepslate []
fill ~-3 ~1 ~4 ~-3 ~9 ~4 polished_deepslate []
fill ~3 ~1 ~-4 ~3 ~9 ~-4 polished_deepslate []
fill ~3 ~1 ~4 ~3 ~9 ~4 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 deepslate_brick_wall []
setblock ~3 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~9 ~-4 ~3 ~9 ~4 snow []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 deepslate_brick_wall []
fill ~-2 ~10 ~-3 ~2 ~10 ~3 air []
setblock ~-3 ~10 ~-4 polished_deepslate []
setblock ~-3 ~11 ~-4 soul_lantern []
setblock ~-3 ~10 ~4 polished_deepslate []
setblock ~-3 ~11 ~4 soul_lantern []
setblock ~3 ~10 ~-4 polished_deepslate []
setblock ~3 ~11 ~-4 soul_lantern []
setblock ~3 ~10 ~4 polished_deepslate []
setblock ~3 ~11 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 snow []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 polished_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 polished_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 4x6x5) ---
fill ~-4 ~0 ~1 ~-4 ~8 ~1 deepslate_bricks []
setblock ~-4 ~9 ~1 packed_ice []
setblock ~-4 ~10 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 string 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 goat_horn 6
replaceitem block ~2 ~1 ~3 slot.container 5 leather 12
replaceitem block ~2 ~1 ~3 slot.container 9 cooked_mutton 11
replaceitem block ~2 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~2 ~1 ~3 slot.container 11 leather_boots 1
replaceitem block ~2 ~1 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 13 crossbow 1
replaceitem block ~2 ~1 ~3 slot.container 14 campfire 3
loot insert ~2 ~1 ~3 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~2 ~0
