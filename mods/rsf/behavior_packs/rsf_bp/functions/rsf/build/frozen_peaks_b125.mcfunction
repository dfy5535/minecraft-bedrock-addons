# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2301/4224 | 主题内编号: b125/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·巨型阶梯金字塔神王殿 (frozen_peaks_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 packed_ice []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 calcite []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 blue_ice []
setblock ~0 ~-7 ~0 soul_lantern []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 goat_horn 3
replaceitem block ~4 ~-4 ~0 slot.container 1 leather 9
replaceitem block ~4 ~-4 ~0 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~0 slot.container 3 bone 17
replaceitem block ~4 ~-4 ~0 slot.container 4 arrow 26
replaceitem block ~4 ~-4 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-4 ~0 slot.container 9 lantern 7
replaceitem block ~4 ~-4 ~0 slot.container 10 emerald 10
replaceitem block ~4 ~-4 ~0 slot.container 11 iron_ingot 13
replaceitem block ~4 ~-4 ~0 slot.container 12 coal 22
replaceitem block ~4 ~-4 ~0 slot.container 13 cooked_mutton 8
replaceitem block ~4 ~-4 ~0 slot.container 14 golden_apple 3
loot insert ~4 ~-4 ~0 loot "rsf/frozen_peaks"
loot insert ~4 ~-4 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 deepslate_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 snow []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 calcite []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 snow []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 calcite []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 blue_ice []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x10x5) ---
fill ~-7 ~0 ~2 ~-7 ~8 ~2 deepslate_bricks []
setblock ~-7 ~9 ~2 packed_ice []
setblock ~-7 ~10 ~2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 goat_horn 6
replaceitem block ~5 ~1 ~6 slot.container 1 leather 12
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 bone 12
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_mutton 13
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 8
replaceitem block ~5 ~1 ~6 slot.container 11 leather_boots 1
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 14 campfire 5
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
