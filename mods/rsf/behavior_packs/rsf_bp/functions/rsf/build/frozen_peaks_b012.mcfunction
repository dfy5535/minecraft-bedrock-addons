# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2188/4224 | 主题内编号: b012/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·双子暗门地底宝库 (frozen_peaks_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 bone 17
replaceitem block ~4 ~-3 ~3 slot.container 1 arrow 26
replaceitem block ~4 ~-3 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 3 string 8
replaceitem block ~4 ~-3 ~3 slot.container 4 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 5 goat_horn 3
replaceitem block ~4 ~-3 ~3 slot.container 9 campfire 2
replaceitem block ~4 ~-3 ~3 slot.container 10 lantern 5
replaceitem block ~4 ~-3 ~3 slot.container 11 emerald 8
replaceitem block ~4 ~-3 ~3 slot.container 12 iron_ingot 11
replaceitem block ~4 ~-3 ~3 slot.container 13 coal 20
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_mutton 13
loot insert ~4 ~-3 ~3 loot "rsf/frozen_peaks"
loot insert ~4 ~-3 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~6 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 packed_ice []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~0 ~-7 ~5 ~0 deepslate_bricks []
setblock ~-7 ~6 ~0 packed_ice []
setblock ~-7 ~7 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 goat_horn 6
replaceitem block ~-5 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 10 leather_boots 1
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 13 campfire 3
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 6
loot insert ~-5 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 leather 7
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 bone 15
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 24
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 14
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~5 ~1 ~4 slot.container 10 leather_boots 1
replaceitem block ~5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~4 slot.container 13 campfire 8
replaceitem block ~5 ~1 ~4 slot.container 14 lantern 4
loot insert ~5 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~4 loot "chests/pillager_outpost"
summon zombie ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon stray ~1 ~1 ~1
