# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2198/4224 | 主题内编号: b022/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·廊柱书库秘藏室 (frozen_peaks_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 calcite [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 calcite [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-2 ~4 slot.container 1 string 8
replaceitem block ~3 ~-2 ~4 slot.container 2 gunpowder 9
replaceitem block ~3 ~-2 ~4 slot.container 3 goat_horn 3
replaceitem block ~3 ~-2 ~4 slot.container 4 leather 9
replaceitem block ~3 ~-2 ~4 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 9 campfire 5
replaceitem block ~3 ~-2 ~4 slot.container 10 lantern 8
replaceitem block ~3 ~-2 ~4 slot.container 11 emerald 11
replaceitem block ~3 ~-2 ~4 slot.container 12 iron_ingot 14
replaceitem block ~3 ~-2 ~4 slot.container 13 coal 16
replaceitem block ~3 ~-2 ~4 slot.container 14 cooked_mutton 9
loot insert ~3 ~-2 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~-2 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 stone_bricks []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~5 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~5 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 spruce_log []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 spruce_log []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 spruce_log []
fill ~5 ~1 ~0 ~5 ~5 ~0 spruce_log []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 spruce_log []
fill ~5 ~1 ~2 ~5 ~5 ~2 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~5 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_bricks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 cobblestone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 iron_block []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-6 ~0 ~1 ~-6 ~5 ~1 deepslate_bricks []
setblock ~-6 ~6 ~1 packed_ice []
setblock ~-6 ~7 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 string 11
replaceitem block ~-4 ~1 ~5 slot.container 9 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 10 leather_boots 1
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 13 campfire 6
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 9
loot insert ~-4 ~1 ~5 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 15
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 24
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 string 14
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 goat_horn 1
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 10 leather_boots 1
replaceitem block ~4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 13 campfire 4
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 7
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-2 ~0
