# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2206/4224 | 主题内编号: b030/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·双坡顶驻军卫戍塔 (frozen_peaks_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 calcite []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 campfire []
setblock ~2 ~-4 ~-3 campfire []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 bone 17
replaceitem block ~2 ~-2 ~3 slot.container 1 arrow 26
replaceitem block ~2 ~-2 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 3 string 8
replaceitem block ~2 ~-2 ~3 slot.container 4 gunpowder 9
replaceitem block ~2 ~-2 ~3 slot.container 5 goat_horn 3
replaceitem block ~2 ~-2 ~3 slot.container 9 emerald 9
replaceitem block ~2 ~-2 ~3 slot.container 10 iron_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 11 coal 21
replaceitem block ~2 ~-2 ~3 slot.container 12 cooked_mutton 14
replaceitem block ~2 ~-2 ~3 slot.container 13 golden_apple 2
replaceitem block ~2 ~-2 ~3 slot.container 14 leather_boots 1
loot insert ~2 ~-2 ~3 loot "rsf/frozen_peaks"
loot insert ~2 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~8 ~5 calcite []
fill ~-4 ~1 ~0 ~4 ~7 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~-1 ~7 ~4 air []
fill ~-1 ~1 ~1 ~3 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-5 ~-4 ~10 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~4 ~10 ~-5 ~4 ~10 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-3 ~10 ~-5 ~3 ~10 ~5 stone_brick_slab []
fill ~0 ~11 ~-6 ~0 ~11 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~10 ~2 cobblestone []
fill ~5 ~1 ~-1 ~6 ~9 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~11 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x6x5) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 deepslate_bricks []
setblock ~-5 ~9 ~-2 packed_ice []
setblock ~-5 ~10 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 3 arrow 21
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 string 11
replaceitem block ~-3 ~1 ~4 slot.container 9 campfire 3
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~-3 ~1 ~4 slot.container 11 emerald 9
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 13 coal 21
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_mutton 14
loot insert ~-3 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 15
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 24
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 goat_horn 1
replaceitem block ~3 ~1 ~4 slot.container 9 campfire 8
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 4
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 13 coal 19
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_mutton 12
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon zombie ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon stray ~1 ~1 ~1
