# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2264/4224 | 主题内编号: b088/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·矿车铁轨转运仓库 (frozen_peaks_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 stone_bricks [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 stone_bricks [] replace water
fill ~-5 ~1 ~-8 ~5 ~7 ~8 air []
fill ~-5 ~0 ~-8 ~5 ~0 ~8 stone_brick_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 cobblestone []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 deepslate_bricks []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 gunpowder 9
replaceitem block ~2 ~-2 ~5 slot.container 1 goat_horn 3
replaceitem block ~2 ~-2 ~5 slot.container 2 leather 9
replaceitem block ~2 ~-2 ~5 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~5 slot.container 4 bone 17
replaceitem block ~2 ~-2 ~5 slot.container 5 arrow 26
replaceitem block ~2 ~-2 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~-2 ~5 slot.container 10 crossbow 1
replaceitem block ~2 ~-2 ~5 slot.container 11 campfire 3
replaceitem block ~2 ~-2 ~5 slot.container 12 lantern 6
replaceitem block ~2 ~-2 ~5 slot.container 13 emerald 9
replaceitem block ~2 ~-2 ~5 slot.container 14 iron_ingot 12
loot insert ~2 ~-2 ~5 loot "rsf/frozen_peaks"
loot insert ~2 ~-2 ~5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~5 ~7 stone_bricks []
fill ~-3 ~1 ~-6 ~3 ~4 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 spruce_log []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 spruce_log []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 spruce_log []
fill ~4 ~1 ~7 ~4 ~5 ~7 spruce_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-8 ~-5 ~6 ~8 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-8 ~5 ~6 ~8 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-7 ~-4 ~7 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-7 ~4 ~7 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-7 ~3 ~7 ~7 stone_brick_slab []
fill ~0 ~8 ~-8 ~0 ~8 ~8 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 packed_ice []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x9x3) ---
fill ~-5 ~0 ~0 ~-5 ~6 ~0 deepslate_bricks []
setblock ~-5 ~7 ~0 packed_ice []
setblock ~-5 ~8 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 iron_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 bone 12
replaceitem block ~-3 ~1 ~6 slot.container 1 arrow 21
replaceitem block ~-3 ~1 ~6 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~6 slot.container 3 string 11
replaceitem block ~-3 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~6 slot.container 5 goat_horn 6
replaceitem block ~-3 ~1 ~6 slot.container 9 coal 19
replaceitem block ~-3 ~1 ~6 slot.container 10 cooked_mutton 12
replaceitem block ~-3 ~1 ~6 slot.container 11 golden_apple 7
replaceitem block ~-3 ~1 ~6 slot.container 12 leather_boots 1
replaceitem block ~-3 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~-3 ~1 ~6 slot.container 14 crossbow 1
loot insert ~-3 ~1 ~6 loot "rsf/frozen_peaks"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~6 slot.container 1 string 14
replaceitem block ~3 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~6 slot.container 3 goat_horn 1
replaceitem block ~3 ~1 ~6 slot.container 4 leather 7
replaceitem block ~3 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~6 slot.container 9 coal 17
replaceitem block ~3 ~1 ~6 slot.container 10 cooked_mutton 10
replaceitem block ~3 ~1 ~6 slot.container 11 golden_apple 5
replaceitem block ~3 ~1 ~6 slot.container 12 leather_boots 1
replaceitem block ~3 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~6 slot.container 14 crossbow 1
loot insert ~3 ~1 ~6 loot "rsf/frozen_peaks"
loot insert ~3 ~1 ~6 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-2 ~0
