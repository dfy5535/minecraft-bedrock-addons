# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2265/4224 | 主题内编号: b089/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·四柱挑檐祈愿凉亭 (frozen_peaks_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 9x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 deepslate_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_ice []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 bone 17
replaceitem block ~3 ~-3 ~0 slot.container 2 arrow 26
replaceitem block ~3 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 4 string 8
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~0 slot.container 9 leather_boots 1
replaceitem block ~3 ~-3 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~-3 ~0 slot.container 11 crossbow 1
replaceitem block ~3 ~-3 ~0 slot.container 12 campfire 2
replaceitem block ~3 ~-3 ~0 slot.container 13 lantern 5
replaceitem block ~3 ~-3 ~0 slot.container 14 emerald 8
loot insert ~3 ~-3 ~0 loot "rsf/frozen_peaks"
loot insert ~3 ~-3 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~6 ~4 deepslate_bricks []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 polished_deepslate []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 polished_deepslate []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 polished_deepslate []
fill ~3 ~1 ~4 ~3 ~6 ~4 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 deepslate_brick_wall []
setblock ~3 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 deepslate_brick_slab []
fill ~-2 ~7 ~-3 ~2 ~8 ~3 calcite []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 stone_brick_slab []
setblock ~0 ~10 ~0 blue_ice []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 snow []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 polished_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 polished_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 4x7x4) ---
fill ~-4 ~0 ~1 ~-4 ~7 ~1 deepslate_bricks []
setblock ~-4 ~8 ~1 packed_ice []
setblock ~-4 ~9 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-2 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 string 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 goat_horn 6
replaceitem block ~2 ~1 ~3 slot.container 5 leather 12
replaceitem block ~2 ~1 ~3 slot.container 9 leather_boots 1
replaceitem block ~2 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 11 crossbow 1
replaceitem block ~2 ~1 ~3 slot.container 12 campfire 2
replaceitem block ~2 ~1 ~3 slot.container 13 lantern 5
replaceitem block ~2 ~1 ~3 slot.container 14 emerald 8
loot insert ~2 ~1 ~3 loot "rsf/frozen_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
