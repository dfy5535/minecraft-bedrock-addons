# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2244/4224 | 主题内编号: b068/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·断裂凯旋高架拱廊 (frozen_peaks_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 packed_ice []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-7 ~0 ~1 ~-7 ~6 ~1 deepslate_bricks []
setblock ~-7 ~7 ~1 packed_ice []
setblock ~-7 ~8 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 goat_horn 6
replaceitem block ~-5 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~4 slot.container 9 coal 20
replaceitem block ~-5 ~1 ~4 slot.container 10 cooked_mutton 13
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 12 leather_boots 1
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-5 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 leather 7
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 bone 15
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 24
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 14
replaceitem block ~5 ~1 ~4 slot.container 9 coal 18
replaceitem block ~5 ~1 ~4 slot.container 10 cooked_mutton 11
replaceitem block ~5 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~5 ~1 ~4 slot.container 12 leather_boots 1
replaceitem block ~5 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 14 crossbow 1
loot insert ~5 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~4 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
