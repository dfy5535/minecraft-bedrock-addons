# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2277/4224 | 主题内编号: b101/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·L型驻军兵营军械所 (frozen_peaks_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
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

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 snow []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 bone 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 arrow 26
replaceitem block ~-2 ~-4 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 string 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 9
replaceitem block ~-2 ~-4 ~3 slot.container 9 lantern 9
replaceitem block ~-2 ~-4 ~3 slot.container 10 emerald 12
replaceitem block ~-2 ~-4 ~3 slot.container 11 iron_ingot 8
replaceitem block ~-2 ~-4 ~3 slot.container 12 coal 17
replaceitem block ~-2 ~-4 ~3 slot.container 13 cooked_mutton 10
replaceitem block ~-2 ~-4 ~3 slot.container 14 golden_apple 5
loot insert ~-2 ~-4 ~3 loot "rsf/frozen_peaks"
loot insert ~-2 ~-4 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 deepslate_bricks []
fill ~-5 ~1 ~0 ~5 ~5 ~6 calcite []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 snow []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 deepslate_brick_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 polished_deepslate []
setblock ~-5 ~8 ~-6 soul_lantern []
setblock ~-5 ~7 ~6 polished_deepslate []
setblock ~-5 ~8 ~6 soul_lantern []
setblock ~5 ~7 ~-6 polished_deepslate []
setblock ~5 ~8 ~-6 soul_lantern []
setblock ~5 ~7 ~6 polished_deepslate []
setblock ~5 ~8 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 calcite []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x9x6) ---
fill ~-6 ~0 ~2 ~-6 ~9 ~2 deepslate_bricks []
setblock ~-6 ~10 ~2 packed_ice []
setblock ~-6 ~11 ~2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 goat_horn 6
replaceitem block ~4 ~1 ~5 slot.container 1 leather 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 coal 19
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_mutton 12
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 13 leather_boots 1
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
