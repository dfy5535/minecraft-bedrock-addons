# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2245/4224 | 主题内编号: b069/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·藤蔓侵蚀十字修道院 (frozen_peaks_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 packed_ice []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 snow []
setblock ~0 ~-6 ~0 iron_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 26
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 9
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_ingot 9
replaceitem block ~0 ~-3 ~-4 slot.container 10 coal 18
replaceitem block ~0 ~-3 ~-4 slot.container 11 cooked_mutton 11
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 6
replaceitem block ~0 ~-3 ~-4 slot.container 13 leather_boots 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-3 ~-4 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 deepslate_bricks []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 deepslate_bricks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 deepslate_brick_wall []
setblock ~5 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 deepslate_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 snow []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 polished_deepslate []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 polished_deepslate []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 deepslate_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-6 ~0 ~0 ~-6 ~7 ~0 deepslate_bricks []
setblock ~-6 ~8 ~0 packed_ice []
setblock ~-6 ~9 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 goat_horn 6
replaceitem block ~4 ~1 ~5 slot.container 1 leather 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 12
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 leather_boots 1
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 12 campfire 3
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 9
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
