# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2224/4224 | 主题内编号: b048/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·阶梯王座巅峰试炼台 (frozen_peaks_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 deepslate_bricks []
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
setblock ~0 ~-5 ~0 blue_ice []
fill ~0 ~-4 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-5 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-2 ~-5 slot.container 1 string 8
replaceitem block ~0 ~-2 ~-5 slot.container 2 gunpowder 9
replaceitem block ~0 ~-2 ~-5 slot.container 3 goat_horn 3
replaceitem block ~0 ~-2 ~-5 slot.container 4 leather 9
replaceitem block ~0 ~-2 ~-5 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-5 slot.container 9 campfire 3
replaceitem block ~0 ~-2 ~-5 slot.container 10 lantern 6
replaceitem block ~0 ~-2 ~-5 slot.container 11 emerald 9
replaceitem block ~0 ~-2 ~-5 slot.container 12 iron_ingot 12
replaceitem block ~0 ~-2 ~-5 slot.container 13 coal 21
replaceitem block ~0 ~-2 ~-5 slot.container 14 cooked_mutton 14
loot insert ~0 ~-2 ~-5 loot "rsf/frozen_peaks"
loot insert ~0 ~-2 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 packed_ice []
fill ~-4 ~5 ~-5 ~4 ~6 ~5 deepslate_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 spruce_log []
setblock ~-6 ~9 ~-7 lantern []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 spruce_log []
setblock ~-6 ~9 ~7 lantern []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 spruce_log []
setblock ~6 ~9 ~-7 lantern []
fill ~6 ~6 ~7 ~6 ~8 ~7 spruce_log []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-7 ~0 ~2 ~-7 ~6 ~2 deepslate_bricks []
setblock ~-7 ~7 ~2 packed_ice []
setblock ~-7 ~8 ~2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 1 arrow 21
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 goat_horn 6
replaceitem block ~-5 ~1 ~6 slot.container 9 coal 21
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_mutton 14
replaceitem block ~-5 ~1 ~6 slot.container 11 golden_apple 2
replaceitem block ~-5 ~1 ~6 slot.container 12 leather_boots 1
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~6 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 goat_horn 1
replaceitem block ~5 ~1 ~6 slot.container 4 leather 7
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 coal 19
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_mutton 12
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 7
replaceitem block ~5 ~1 ~6 slot.container 12 leather_boots 1
replaceitem block ~5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 14 crossbow 1
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon zombie ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon stray ~1 ~1 ~1
