# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2255/4224 | 主题内编号: b079/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·四角结界守护柱阵 (frozen_peaks_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 snow []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 goat_horn 3
replaceitem block ~0 ~-3 ~-4 slot.container 1 leather 9
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 26
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_mutton 13
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_apple 8
replaceitem block ~0 ~-3 ~-4 slot.container 11 leather_boots 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 crossbow 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 campfire 5
loot insert ~0 ~-3 ~-4 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~8 ~-5 stone_bricks []
setblock ~-5 ~9 ~-6 torch []
fill ~-5 ~1 ~5 ~-4 ~8 ~6 stone_bricks []
setblock ~-5 ~9 ~5 torch []
fill ~4 ~1 ~-6 ~5 ~8 ~-5 stone_bricks []
setblock ~4 ~9 ~-6 torch []
fill ~4 ~1 ~5 ~5 ~8 ~6 stone_bricks []
setblock ~4 ~9 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 spruce_log []
setblock ~-5 ~9 ~-6 torch []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 spruce_log []
setblock ~-5 ~9 ~6 torch []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 spruce_log []
setblock ~5 ~9 ~-6 torch []
fill ~5 ~6 ~6 ~5 ~8 ~6 spruce_log []
setblock ~5 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~3 ~-8 spruce_log []
setblock ~-7 ~4 ~-8 torch []
fill ~-7 ~0 ~8 ~-7 ~3 ~8 spruce_log []
setblock ~-7 ~4 ~8 torch []
fill ~7 ~0 ~-8 ~7 ~3 ~-8 spruce_log []
setblock ~7 ~4 ~-8 torch []
fill ~7 ~0 ~8 ~7 ~3 ~8 spruce_log []
setblock ~7 ~4 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 deepslate_bricks []
setblock ~-6 ~8 ~-2 packed_ice []
setblock ~-6 ~9 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 chiseled_stone_bricks []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 bone 12
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 leather_boots 1
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 12 campfire 6
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 12
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
