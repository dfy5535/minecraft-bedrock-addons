# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2219/4224 | 主题内编号: b043/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·十字四门试炼擂台 (frozen_peaks_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~1 ~-8 ~7 ~7 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 snow []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 bone 17
replaceitem block ~0 ~-4 ~5 slot.container 1 arrow 26
replaceitem block ~0 ~-4 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 3 string 8
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 5 goat_horn 3
replaceitem block ~0 ~-4 ~5 slot.container 9 emerald 7
replaceitem block ~0 ~-4 ~5 slot.container 10 iron_ingot 10
replaceitem block ~0 ~-4 ~5 slot.container 11 coal 19
replaceitem block ~0 ~-4 ~5 slot.container 12 cooked_mutton 12
replaceitem block ~0 ~-4 ~5 slot.container 13 golden_apple 7
replaceitem block ~0 ~-4 ~5 slot.container 14 leather_boots 1
loot insert ~0 ~-4 ~5 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~5 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 arrow 24
replaceitem block ~0 ~-4 ~-5 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 3 string 14
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 5 goat_horn 1
replaceitem block ~0 ~-4 ~-5 slot.container 9 emerald 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_ingot 9
replaceitem block ~0 ~-4 ~-5 slot.container 11 coal 18
replaceitem block ~0 ~-4 ~-5 slot.container 12 cooked_mutton 11
replaceitem block ~0 ~-4 ~-5 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~-5 slot.container 14 leather_boots 1
loot insert ~0 ~-4 ~-5 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~5 ~7 cobblestone []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 cobblestone []
fill ~-1 ~1 ~-6 ~1 ~4 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 stone_bricks []
fill ~-6 ~6 ~-7 ~6 ~6 ~7 spruce_fence []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 air []
setblock ~-6 ~6 ~-7 spruce_log []
setblock ~-6 ~7 ~-7 torch []
setblock ~-6 ~6 ~7 spruce_log []
setblock ~-6 ~7 ~7 torch []
setblock ~6 ~6 ~-7 spruce_log []
setblock ~6 ~7 ~-7 torch []
setblock ~6 ~6 ~7 spruce_log []
setblock ~6 ~7 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 stone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 torch []
setblock ~2 ~4 ~-10 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-7 ~0 ~-3 ~-7 ~6 ~-3 deepslate_bricks []
setblock ~-7 ~7 ~-3 packed_ice []
setblock ~-7 ~8 ~-3 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~6 fletching_table []
setblock ~0 ~1 ~6 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 goat_horn 6
replaceitem block ~5 ~1 ~6 slot.container 3 leather 12
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 bone 12
replaceitem block ~5 ~1 ~6 slot.container 9 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 10 campfire 3
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 6
replaceitem block ~5 ~1 ~6 slot.container 12 emerald 9
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 14 coal 21
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~2 ~0
