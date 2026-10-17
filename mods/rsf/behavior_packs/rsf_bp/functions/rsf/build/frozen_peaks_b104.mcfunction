# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2280/4224 | 主题内编号: b104/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·双层指挥台卫戍堡 (frozen_peaks_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

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

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-6 ~5 ~3 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~2 ~5 air []
fill ~-6 ~3 ~-7 ~6 ~3 ~7 stone_brick_slab []
fill ~-4 ~4 ~-5 ~4 ~7 ~5 deepslate_bricks []
fill ~-3 ~4 ~-4 ~3 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 packed_ice []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone_wall []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 air []
setblock ~-5 ~8 ~-6 spruce_log []
setblock ~-5 ~9 ~-6 lantern []
setblock ~-5 ~8 ~6 spruce_log []
setblock ~-5 ~9 ~6 lantern []
setblock ~5 ~8 ~-6 spruce_log []
setblock ~5 ~9 ~-6 lantern []
setblock ~5 ~8 ~6 spruce_log []
setblock ~5 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x9x4) ---
fill ~-6 ~0 ~-1 ~-6 ~7 ~-1 deepslate_bricks []
setblock ~-6 ~8 ~-1 packed_ice []
setblock ~-6 ~9 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 11
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 5 goat_horn 6
replaceitem block ~-4 ~1 ~5 slot.container 9 emerald 11
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 11 coal 16
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_mutton 9
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_apple 4
replaceitem block ~-4 ~1 ~5 slot.container 14 leather_boots 1
loot insert ~-4 ~1 ~5 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 3 goat_horn 1
replaceitem block ~4 ~1 ~5 slot.container 4 leather 7
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 11 coal 21
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_mutton 14
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 2
replaceitem block ~4 ~1 ~5 slot.container 14 leather_boots 1
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
