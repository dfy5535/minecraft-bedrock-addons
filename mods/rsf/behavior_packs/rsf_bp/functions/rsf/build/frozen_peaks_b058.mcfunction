# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2234/4224 | 主题内编号: b058/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·十字拱顶家族陵墓 (frozen_peaks_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 calcite [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 campfire []
setblock ~3 ~-5 ~0 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 bone 17
replaceitem block ~0 ~-3 ~4 slot.container 1 arrow 26
replaceitem block ~0 ~-3 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 3 string 8
replaceitem block ~0 ~-3 ~4 slot.container 4 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 5 goat_horn 3
replaceitem block ~0 ~-3 ~4 slot.container 9 golden_apple 2
replaceitem block ~0 ~-3 ~4 slot.container 10 leather_boots 1
replaceitem block ~0 ~-3 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-3 ~4 slot.container 12 crossbow 1
replaceitem block ~0 ~-3 ~4 slot.container 13 campfire 6
replaceitem block ~0 ~-3 ~4 slot.container 14 lantern 9
loot insert ~0 ~-3 ~4 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~4 loot "chests/pillager_outpost"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 24
replaceitem block ~0 ~-3 ~-4 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 14
replaceitem block ~0 ~-3 ~-4 slot.container 4 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 5 goat_horn 1
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 8
replaceitem block ~0 ~-3 ~-4 slot.container 10 leather_boots 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 crossbow 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 campfire 5
replaceitem block ~0 ~-3 ~-4 slot.container 14 lantern 8
loot insert ~0 ~-3 ~-4 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 calcite []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 calcite []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 stone_brick_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~-6 ~0 ~1 ~-6 ~6 ~1 deepslate_bricks []
setblock ~-6 ~7 ~1 packed_ice []
setblock ~-6 ~8 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 iron_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 goat_horn 6
replaceitem block ~-4 ~1 ~5 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 coal 17
replaceitem block ~-4 ~1 ~5 slot.container 10 cooked_mutton 10
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 12 leather_boots 1
replaceitem block ~-4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 14 crossbow 1
loot insert ~-4 ~1 ~5 loot "rsf/frozen_peaks"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 goat_horn 1
replaceitem block ~4 ~1 ~5 slot.container 2 leather 7
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 24
replaceitem block ~4 ~1 ~5 slot.container 9 coal 22
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_mutton 8
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 12 leather_boots 1
replaceitem block ~4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 14 crossbow 1
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
loot insert ~4 ~1 ~5 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-3 ~0
