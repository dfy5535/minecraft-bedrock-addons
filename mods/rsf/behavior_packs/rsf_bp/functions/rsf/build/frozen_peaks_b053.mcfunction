# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2229/4224 | 主题内编号: b053/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·测绘师观景制图站 (frozen_peaks_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 deepslate_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 snow []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 deepslate_bricks []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 polished_deepslate []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 polished_deepslate []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 polished_deepslate []
fill ~3 ~1 ~4 ~3 ~6 ~4 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 snow []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 calcite []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 blue_ice []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x8x3) ---
fill ~-5 ~0 ~1 ~-5 ~6 ~1 deepslate_bricks []
setblock ~-5 ~7 ~1 packed_ice []
setblock ~-5 ~8 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~3 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 goat_horn 6
replaceitem block ~3 ~1 ~4 slot.container 1 leather 12
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 bone 12
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 crossbow 1
replaceitem block ~3 ~1 ~4 slot.container 10 campfire 6
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 9
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 12
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 14 coal 17
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
