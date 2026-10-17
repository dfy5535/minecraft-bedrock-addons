# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2223/4224 | 主题内编号: b047/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·深渊跨桥决斗长台 (frozen_peaks_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 snow []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 arrow 26
replaceitem block ~-4 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~-4 ~3 slot.container 2 string 8
replaceitem block ~-4 ~-4 ~3 slot.container 3 gunpowder 9
replaceitem block ~-4 ~-4 ~3 slot.container 4 goat_horn 3
replaceitem block ~-4 ~-4 ~3 slot.container 5 leather 9
replaceitem block ~-4 ~-4 ~3 slot.container 9 leather_boots 1
replaceitem block ~-4 ~-4 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~-4 ~3 slot.container 11 crossbow 1
replaceitem block ~-4 ~-4 ~3 slot.container 12 campfire 3
replaceitem block ~-4 ~-4 ~3 slot.container 13 lantern 6
replaceitem block ~-4 ~-4 ~3 slot.container 14 emerald 9
loot insert ~-4 ~-4 ~3 loot "rsf/frozen_peaks"
loot insert ~-4 ~-4 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 spruce_log []
setblock ~-6 ~8 ~-5 torch []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 spruce_log []
setblock ~-6 ~8 ~5 torch []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 spruce_log []
setblock ~6 ~8 ~-5 torch []
fill ~6 ~5 ~5 ~6 ~7 ~5 spruce_log []
setblock ~6 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~0 ~-7 ~5 ~0 deepslate_bricks []
setblock ~-7 ~6 ~0 packed_ice []
setblock ~-7 ~7 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 1 bone 12
replaceitem block ~5 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 4 string 11
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 11
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 12 coal 16
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_mutton 9
replaceitem block ~5 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~5 ~1 ~4 loot "rsf/frozen_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
