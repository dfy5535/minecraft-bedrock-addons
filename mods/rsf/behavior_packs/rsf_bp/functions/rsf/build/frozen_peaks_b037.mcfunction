# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2213/4224 | 主题内编号: b037/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·环廊聖柱纪念碑 (frozen_peaks_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 calcite []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 blue_ice []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 goat_horn 3
replaceitem block ~3 ~-3 ~0 slot.container 1 leather 9
replaceitem block ~3 ~-3 ~0 slot.container 2 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 3 bone 17
replaceitem block ~3 ~-3 ~0 slot.container 4 arrow 26
replaceitem block ~3 ~-3 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 9 leather_boots 1
replaceitem block ~3 ~-3 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~-3 ~0 slot.container 11 crossbow 1
replaceitem block ~3 ~-3 ~0 slot.container 12 campfire 4
replaceitem block ~3 ~-3 ~0 slot.container 13 lantern 7
replaceitem block ~3 ~-3 ~0 slot.container 14 emerald 10
loot insert ~3 ~-3 ~0 loot "rsf/frozen_peaks"
loot insert ~3 ~-3 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 snow []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 polished_deepslate []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 polished_deepslate []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 polished_deepslate []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 polished_deepslate []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 polished_deepslate []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 polished_deepslate []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 polished_deepslate []
fill ~1 ~1 ~6 ~1 ~6 ~6 polished_deepslate []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 polished_deepslate []
fill ~3 ~1 ~6 ~3 ~6 ~6 polished_deepslate []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 polished_deepslate []
fill ~5 ~1 ~6 ~5 ~6 ~6 polished_deepslate []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 polished_deepslate []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 polished_deepslate []
fill ~-5 ~1 ~-2 ~-5 ~6 ~-2 polished_deepslate []
fill ~5 ~1 ~-2 ~5 ~6 ~-2 polished_deepslate []
fill ~-5 ~1 ~0 ~-5 ~6 ~0 polished_deepslate []
fill ~5 ~1 ~0 ~5 ~6 ~0 polished_deepslate []
fill ~-5 ~1 ~2 ~-5 ~6 ~2 polished_deepslate []
fill ~5 ~1 ~2 ~5 ~6 ~2 polished_deepslate []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 polished_deepslate []
fill ~5 ~1 ~4 ~5 ~6 ~4 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 polished_deepslate []
setblock ~-5 ~10 ~-6 soul_lantern []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 polished_deepslate []
setblock ~-5 ~10 ~6 soul_lantern []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 polished_deepslate []
setblock ~5 ~10 ~-6 soul_lantern []
fill ~5 ~7 ~6 ~5 ~9 ~6 polished_deepslate []
setblock ~5 ~10 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 deepslate_brick_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 deepslate_bricks []
setblock ~-6 ~6 ~-2 packed_ice []
setblock ~-6 ~7 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 blue_ice []
setblock ~0 ~1 ~0 iron_block []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 goat_horn 6
replaceitem block ~4 ~1 ~5 slot.container 1 leather 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 5
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 12 coal 20
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_mutton 13
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 8
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
