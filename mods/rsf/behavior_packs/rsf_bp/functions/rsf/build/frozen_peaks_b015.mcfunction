# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2191/4224 | 主题内编号: b015/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·竖井阶梯深渊地牢 (frozen_peaks_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 6格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 snow []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 torch []
setblock ~2 ~-7 ~-3 torch []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 arrow 26
replaceitem block ~2 ~-5 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~2 ~-5 ~3 slot.container 2 string 8
replaceitem block ~2 ~-5 ~3 slot.container 3 gunpowder 9
replaceitem block ~2 ~-5 ~3 slot.container 4 goat_horn 3
replaceitem block ~2 ~-5 ~3 slot.container 5 leather 9
replaceitem block ~2 ~-5 ~3 slot.container 9 leather_boots 1
replaceitem block ~2 ~-5 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~-5 ~3 slot.container 11 crossbow 1
replaceitem block ~2 ~-5 ~3 slot.container 12 campfire 7
replaceitem block ~2 ~-5 ~3 slot.container 13 lantern 10
replaceitem block ~2 ~-5 ~3 slot.container 14 emerald 6
loot insert ~2 ~-5 ~3 loot "rsf/frozen_peaks"
loot insert ~2 ~-5 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 cobblestone []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~6 ~3 stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~7 ~-2 ~2 ~8 ~2 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~11 ~1 cobblestone []
fill ~0 ~12 ~0 ~0 ~14 ~0 chiseled_stone_bricks []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 spruce_log []
setblock ~-6 ~4 ~-7 torch []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 spruce_log []
setblock ~-6 ~4 ~7 torch []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 spruce_log []
setblock ~6 ~4 ~-7 torch []
fill ~6 ~0 ~7 ~6 ~3 ~7 spruce_log []
setblock ~6 ~4 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x6x5) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 deepslate_bricks []
setblock ~-5 ~9 ~-2 packed_ice []
setblock ~-5 ~10 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 bone 12
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 string 11
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_mutton 8
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~3 ~1 ~4 slot.container 11 leather_boots 1
replaceitem block ~3 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 13 crossbow 1
replaceitem block ~3 ~1 ~4 slot.container 14 campfire 7
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
