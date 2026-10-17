# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2186/4224 | 主题内编号: b010/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·十字交叉深层地牢 (frozen_peaks_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x17 | 地上高度 4格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 calcite [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 calcite [] replace water
fill ~-7 ~1 ~-8 ~7 ~6 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 packed_ice []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 snow []
setblock ~0 ~0 ~0 iron_block []

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
fill ~-2 ~1 ~-7 ~2 ~4 ~7 calcite []
fill ~-6 ~1 ~-2 ~6 ~4 ~2 calcite []
fill ~-1 ~1 ~-6 ~1 ~3 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~3 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-7 ~6 ~4 ~7 stone_brick_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 spruce_log []
setblock ~-8 ~4 ~-9 campfire []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 spruce_log []
setblock ~-8 ~4 ~9 campfire []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 spruce_log []
setblock ~8 ~4 ~-9 campfire []
fill ~8 ~0 ~9 ~8 ~3 ~9 spruce_log []
setblock ~8 ~4 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-7 ~0 ~-1 ~-7 ~8 ~-1 deepslate_bricks []
setblock ~-7 ~9 ~-1 packed_ice []
setblock ~-7 ~10 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 string 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 goat_horn 6
replaceitem block ~-5 ~1 ~6 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 campfire 4
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 7
replaceitem block ~-5 ~1 ~6 slot.container 11 emerald 10
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 13
replaceitem block ~-5 ~1 ~6 slot.container 13 coal 22
replaceitem block ~-5 ~1 ~6 slot.container 14 cooked_mutton 8
loot insert ~-5 ~1 ~6 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 goat_horn 1
replaceitem block ~5 ~1 ~6 slot.container 2 leather 7
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 bone 15
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 24
replaceitem block ~5 ~1 ~6 slot.container 9 campfire 2
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 5
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 8
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 13 coal 20
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_mutton 13
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-4 ~0
