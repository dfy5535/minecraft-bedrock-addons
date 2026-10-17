# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2250/4224 | 主题内编号: b074/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·十字四象图腾柱阵 (frozen_peaks_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
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

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 iron_block []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-2 ~0 slot.container 1 string 8
replaceitem block ~3 ~-2 ~0 slot.container 2 gunpowder 9
replaceitem block ~3 ~-2 ~0 slot.container 3 goat_horn 3
replaceitem block ~3 ~-2 ~0 slot.container 4 leather 9
replaceitem block ~3 ~-2 ~0 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~-2 ~0 slot.container 10 crossbow 1
replaceitem block ~3 ~-2 ~0 slot.container 11 campfire 5
replaceitem block ~3 ~-2 ~0 slot.container 12 lantern 8
replaceitem block ~3 ~-2 ~0 slot.container 13 emerald 11
replaceitem block ~3 ~-2 ~0 slot.container 14 iron_ingot 14
loot insert ~3 ~-2 ~0 loot "rsf/frozen_peaks"
loot insert ~3 ~-2 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 calcite []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 calcite []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 spruce_log []
setblock ~-5 ~9 ~-6 campfire []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 spruce_log []
setblock ~-5 ~9 ~6 campfire []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 spruce_log []
setblock ~5 ~9 ~-6 campfire []
fill ~5 ~6 ~6 ~5 ~8 ~6 spruce_log []
setblock ~5 ~9 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~7 ~2 calcite []
fill ~6 ~1 ~-1 ~7 ~6 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~8 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x9x4) ---
fill ~-6 ~0 ~-1 ~-6 ~7 ~-1 deepslate_bricks []
setblock ~-6 ~8 ~-1 packed_ice []
setblock ~-6 ~9 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~5 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 iron_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 goat_horn 6
replaceitem block ~-4 ~1 ~5 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 emerald 9
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 11 coal 21
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_mutton 14
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 14 leather_boots 1
loot insert ~-4 ~1 ~5 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 goat_horn 1
replaceitem block ~4 ~1 ~5 slot.container 2 leather 7
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 24
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 7
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 11 coal 19
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_mutton 12
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 14 leather_boots 1
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
