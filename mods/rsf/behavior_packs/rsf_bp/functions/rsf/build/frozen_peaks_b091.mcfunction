# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2267/4224 | 主题内编号: b091/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·跨水拱桥水神小祠 (frozen_peaks_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 goat_horn 3
replaceitem block ~-3 ~-3 ~2 slot.container 1 leather 9
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 3 bone 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 arrow 26
replaceitem block ~-3 ~-3 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 9 crossbow 1
replaceitem block ~-3 ~-3 ~2 slot.container 10 campfire 3
replaceitem block ~-3 ~-3 ~2 slot.container 11 lantern 6
replaceitem block ~-3 ~-3 ~2 slot.container 12 emerald 9
replaceitem block ~-3 ~-3 ~2 slot.container 13 iron_ingot 12
replaceitem block ~-3 ~-3 ~2 slot.container 14 coal 21
loot insert ~-3 ~-3 ~2 loot "rsf/frozen_peaks"
loot insert ~-3 ~-3 ~2 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 cobblestone_slab []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 stone_bricks []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 stone_brick_slab []
setblock ~0 ~10 ~0 chiseled_stone_bricks []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-6 ~0 ~-1 ~-6 ~9 ~-1 deepslate_bricks []
setblock ~-6 ~10 ~-1 packed_ice []
setblock ~-6 ~11 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 string 11
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 2 goat_horn 6
replaceitem block ~4 ~1 ~3 slot.container 3 leather 12
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 bone 12
replaceitem block ~4 ~1 ~3 slot.container 9 iron_ingot 14
replaceitem block ~4 ~1 ~3 slot.container 10 coal 16
replaceitem block ~4 ~1 ~3 slot.container 11 cooked_mutton 9
replaceitem block ~4 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~4 ~1 ~3 slot.container 13 leather_boots 1
replaceitem block ~4 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~3 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
