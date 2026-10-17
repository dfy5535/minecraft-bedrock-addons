# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2230/4224 | 主题内编号: b054/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·切石与伐木工匠棚屋 (frozen_peaks_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[aquifer_cistern] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 2格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 calcite [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 calcite [] replace water
fill ~-6 ~1 ~-6 ~6 ~7 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 packed_ice []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 snow []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 bone 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 arrow 26
replaceitem block ~-2 ~-4 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 string 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 9
replaceitem block ~-2 ~-4 ~3 slot.container 9 lantern 9
replaceitem block ~-2 ~-4 ~3 slot.container 10 emerald 12
replaceitem block ~-2 ~-4 ~3 slot.container 11 iron_ingot 8
replaceitem block ~-2 ~-4 ~3 slot.container 12 coal 17
replaceitem block ~-2 ~-4 ~3 slot.container 13 cooked_mutton 10
replaceitem block ~-2 ~-4 ~3 slot.container 14 golden_apple 5
loot insert ~-2 ~-4 ~3 loot "rsf/frozen_peaks"
loot insert ~-2 ~-4 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~6 ~5 calcite []
fill ~2 ~1 ~-5 ~5 ~6 ~5 calcite []
fill ~-4 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 stone_bricks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-6 ~-6 ~6 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-6 ~6 ~6 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~-5 ~7 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-5 ~5 ~7 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~4 ~7 ~5 stone_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 snow []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~-6 ~0 ~2 ~-6 ~7 ~2 deepslate_bricks []
setblock ~-6 ~8 ~2 packed_ice []
setblock ~-6 ~9 ~2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 5 string 11
replaceitem block ~-4 ~1 ~4 slot.container 9 emerald 10
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_ingot 13
replaceitem block ~-4 ~1 ~4 slot.container 11 coal 22
replaceitem block ~-4 ~1 ~4 slot.container 12 cooked_mutton 8
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 14 leather_boots 1
loot insert ~-4 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 15
replaceitem block ~4 ~1 ~4 slot.container 1 arrow 24
replaceitem block ~4 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~4 slot.container 3 string 14
replaceitem block ~4 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 5 goat_horn 1
replaceitem block ~4 ~1 ~4 slot.container 9 emerald 8
replaceitem block ~4 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 11 coal 20
replaceitem block ~4 ~1 ~4 slot.container 12 cooked_mutton 13
replaceitem block ~4 ~1 ~4 slot.container 13 golden_apple 8
replaceitem block ~4 ~1 ~4 slot.container 14 leather_boots 1
loot insert ~4 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~4 loot "chests/pillager_outpost"
summon zombie ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon stray ~1 ~1 ~1
