# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2218/4224 | 主题内编号: b042/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·地底铁栏死斗深坑 (frozen_peaks_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 4格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite [] replace water
fill ~-6 ~1 ~-7 ~6 ~6 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~4 campfire []
setblock ~3 ~-5 ~-4 campfire []
setblock ~3 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~4 slot.container 0 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 1 goat_horn 3
replaceitem block ~3 ~-3 ~4 slot.container 2 leather 9
replaceitem block ~3 ~-3 ~4 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 17
replaceitem block ~3 ~-3 ~4 slot.container 5 arrow 26
replaceitem block ~3 ~-3 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~-3 ~4 slot.container 10 crossbow 1
replaceitem block ~3 ~-3 ~4 slot.container 11 campfire 5
replaceitem block ~3 ~-3 ~4 slot.container 12 lantern 8
replaceitem block ~3 ~-3 ~4 slot.container 13 emerald 11
replaceitem block ~3 ~-3 ~4 slot.container 14 iron_ingot 14
loot insert ~3 ~-3 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 calcite []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~4 ~-6 ~-5 ~6 ~-6 spruce_log []
setblock ~-5 ~7 ~-6 campfire []
fill ~-5 ~4 ~6 ~-5 ~6 ~6 spruce_log []
setblock ~-5 ~7 ~6 campfire []
fill ~5 ~4 ~-6 ~5 ~6 ~-6 spruce_log []
setblock ~5 ~7 ~-6 campfire []
fill ~5 ~4 ~6 ~5 ~6 ~6 spruce_log []
setblock ~5 ~7 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-6 ~0 ~-3 ~-6 ~5 ~-3 deepslate_bricks []
setblock ~-6 ~6 ~-3 packed_ice []
setblock ~-6 ~7 ~-3 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-3 ~1 ~4 crafting_table []
setblock ~-2 ~1 ~4 furnace []
setblock ~3 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 goat_horn 6
replaceitem block ~-4 ~1 ~5 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 golden_apple 8
replaceitem block ~-4 ~1 ~5 slot.container 10 leather_boots 1
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 13 campfire 5
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 8
loot insert ~-4 ~1 ~5 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 goat_horn 1
replaceitem block ~4 ~1 ~5 slot.container 2 leather 7
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 24
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 10 leather_boots 1
replaceitem block ~4 ~1 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 13 campfire 3
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 6
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon zombie ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon stray ~1 ~1 ~1
