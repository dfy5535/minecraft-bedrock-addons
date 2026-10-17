# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2258/4224 | 主题内编号: b082/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·竖井井架矿工物资站 (frozen_peaks_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 calcite [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 calcite [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 calcite []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-6 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-6 ~3 campfire []
setblock ~2 ~-6 ~-3 campfire []
setblock ~2 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-4 ~3 slot.container 0 gunpowder 9
replaceitem block ~2 ~-4 ~3 slot.container 1 goat_horn 3
replaceitem block ~2 ~-4 ~3 slot.container 2 leather 9
replaceitem block ~2 ~-4 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-4 ~3 slot.container 4 bone 17
replaceitem block ~2 ~-4 ~3 slot.container 5 arrow 26
replaceitem block ~2 ~-4 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~-4 ~3 slot.container 10 crossbow 1
replaceitem block ~2 ~-4 ~3 slot.container 11 campfire 3
replaceitem block ~2 ~-4 ~3 slot.container 12 lantern 6
replaceitem block ~2 ~-4 ~3 slot.container 13 emerald 9
replaceitem block ~2 ~-4 ~3 slot.container 14 iron_ingot 12
loot insert ~2 ~-4 ~3 loot "rsf/frozen_peaks"
loot insert ~2 ~-4 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~3 ~5 calcite []
fill ~-3 ~1 ~-4 ~3 ~2 ~4 air []
fill ~-5 ~3 ~-6 ~5 ~3 ~6 stone_brick_slab []
fill ~-3 ~4 ~-4 ~3 ~7 ~4 cobblestone []
fill ~-2 ~4 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 iron_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 snow []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x7x2) ---
fill ~-5 ~0 ~0 ~-5 ~5 ~0 deepslate_bricks []
setblock ~-5 ~6 ~0 packed_ice []
setblock ~-5 ~7 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 1 string 11
replaceitem block ~-3 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 3 goat_horn 6
replaceitem block ~-3 ~1 ~4 slot.container 4 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 10 leather_boots 1
replaceitem block ~-3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-3 ~1 ~4 slot.container 13 campfire 3
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 6
loot insert ~-3 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 1 goat_horn 1
replaceitem block ~3 ~1 ~4 slot.container 2 leather 7
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 4 bone 15
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 24
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 10 leather_boots 1
replaceitem block ~3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~3 ~1 ~4 slot.container 13 campfire 8
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 4
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-4 ~0
