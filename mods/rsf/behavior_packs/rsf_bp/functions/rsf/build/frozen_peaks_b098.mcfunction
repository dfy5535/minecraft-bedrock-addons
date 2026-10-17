# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2274/4224 | 主题内编号: b098/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·四角炮楼重装要塞 (frozen_peaks_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 calcite [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 calcite [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 packed_ice []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 calcite []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~5 campfire []
setblock ~4 ~-5 ~-5 campfire []
setblock ~4 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~5 slot.container 1 goat_horn 3
replaceitem block ~4 ~-3 ~5 slot.container 2 leather 9
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 bone 17
replaceitem block ~4 ~-3 ~5 slot.container 5 arrow 26
replaceitem block ~4 ~-3 ~5 slot.container 9 golden_apple 3
replaceitem block ~4 ~-3 ~5 slot.container 10 leather_boots 1
replaceitem block ~4 ~-3 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~-3 ~5 slot.container 12 crossbow 1
replaceitem block ~4 ~-3 ~5 slot.container 13 campfire 7
replaceitem block ~4 ~-3 ~5 slot.container 14 lantern 10
loot insert ~4 ~-3 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~-3 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 calcite []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 stone_bricks []
setblock ~-6 ~9 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 stone_bricks []
setblock ~-6 ~9 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 stone_bricks []
setblock ~5 ~9 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~8 ~7 stone_bricks []
setblock ~5 ~9 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 stone_bricks []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 cobblestone_wall []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 spruce_log []
setblock ~-6 ~8 ~-7 campfire []
setblock ~-6 ~7 ~7 spruce_log []
setblock ~-6 ~8 ~7 campfire []
setblock ~6 ~7 ~-7 spruce_log []
setblock ~6 ~8 ~-7 campfire []
setblock ~6 ~7 ~7 spruce_log []
setblock ~6 ~8 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x10x3) ---
fill ~-7 ~0 ~3 ~-7 ~6 ~3 deepslate_bricks []
setblock ~-7 ~7 ~3 packed_ice []
setblock ~-7 ~8 ~3 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 string 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 goat_horn 6
replaceitem block ~-5 ~1 ~6 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 coal 22
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_mutton 8
replaceitem block ~-5 ~1 ~6 slot.container 11 golden_apple 3
replaceitem block ~-5 ~1 ~6 slot.container 12 leather_boots 1
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~6 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 goat_horn 1
replaceitem block ~5 ~1 ~6 slot.container 2 leather 7
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 bone 15
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 24
replaceitem block ~5 ~1 ~6 slot.container 9 coal 20
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_mutton 13
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 8
replaceitem block ~5 ~1 ~6 slot.container 12 leather_boots 1
replaceitem block ~5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 14 crossbow 1
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
