# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2286/4224 | 主题内编号: b110/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·双子附魔与酿造实验楼 (frozen_peaks_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 1 string 8
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 3 goat_horn 3
replaceitem block ~4 ~-2 ~3 slot.container 4 leather 9
replaceitem block ~4 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 9 coal 16
replaceitem block ~4 ~-2 ~3 slot.container 10 cooked_mutton 9
replaceitem block ~4 ~-2 ~3 slot.container 11 golden_apple 4
replaceitem block ~4 ~-2 ~3 slot.container 12 leather_boots 1
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 14 crossbow 1
loot insert ~4 ~-2 ~3 loot "rsf/frozen_peaks"
loot insert ~4 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 calcite []
fill ~2 ~1 ~-5 ~6 ~7 ~5 calcite []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 stone_brick_slab []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 cobblestone []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone_slab []
setblock ~0 ~10 ~0 iron_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 deepslate_bricks []
setblock ~-7 ~9 ~-2 packed_ice []
setblock ~-7 ~10 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 string 11
replaceitem block ~-5 ~1 ~4 slot.container 9 campfire 6
replaceitem block ~-5 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 12
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 13 coal 17
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_mutton 10
loot insert ~-5 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 15
replaceitem block ~5 ~1 ~4 slot.container 1 arrow 24
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 string 14
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 goat_horn 1
replaceitem block ~5 ~1 ~4 slot.container 9 campfire 4
replaceitem block ~5 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~5 ~1 ~4 slot.container 11 emerald 10
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 13
replaceitem block ~5 ~1 ~4 slot.container 13 coal 22
replaceitem block ~5 ~1 ~4 slot.container 14 cooked_mutton 8
loot insert ~5 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~4 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
