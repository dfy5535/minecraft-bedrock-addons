# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2197/4224 | 主题内编号: b021/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·U型合院天井秘宝房 (frozen_peaks_chamber_courtyard_villa)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 snow []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 deepslate_bricks []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 packed_ice []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 deepslate_brick_slab []
fill ~-4 ~6 ~-5 ~4 ~7 ~5 calcite []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_brick_slab []
setblock ~0 ~9 ~0 blue_ice []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-6 ~0 ~0 ~-6 ~9 ~0 deepslate_bricks []
setblock ~-6 ~10 ~0 packed_ice []
setblock ~-6 ~11 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 goat_horn 6
replaceitem block ~4 ~1 ~5 slot.container 1 leather 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 10 coal 16
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_mutton 9
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 13 leather_boots 1
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
