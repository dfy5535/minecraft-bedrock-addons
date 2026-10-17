# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2239/4224 | 主题内编号: b063/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·方尖碑镇压古墓穴 (frozen_peaks_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 snow []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 goat_horn 3
replaceitem block ~0 ~-4 ~3 slot.container 1 leather 9
replaceitem block ~0 ~-4 ~3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 3 bone 17
replaceitem block ~0 ~-4 ~3 slot.container 4 arrow 26
replaceitem block ~0 ~-4 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~3 slot.container 9 lantern 9
replaceitem block ~0 ~-4 ~3 slot.container 10 emerald 12
replaceitem block ~0 ~-4 ~3 slot.container 11 iron_ingot 8
replaceitem block ~0 ~-4 ~3 slot.container 12 coal 17
replaceitem block ~0 ~-4 ~3 slot.container 13 cooked_mutton 10
replaceitem block ~0 ~-4 ~3 slot.container 14 golden_apple 5
loot insert ~0 ~-4 ~3 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~3 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 goat_horn 1
replaceitem block ~0 ~-4 ~-3 slot.container 1 leather 7
replaceitem block ~0 ~-4 ~-3 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 3 bone 15
replaceitem block ~0 ~-4 ~-3 slot.container 4 arrow 24
replaceitem block ~0 ~-4 ~-3 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-4 ~-3 slot.container 9 lantern 8
replaceitem block ~0 ~-4 ~-3 slot.container 10 emerald 11
replaceitem block ~0 ~-4 ~-3 slot.container 11 iron_ingot 14
replaceitem block ~0 ~-4 ~-3 slot.container 12 coal 16
replaceitem block ~0 ~-4 ~-3 slot.container 13 cooked_mutton 9
replaceitem block ~0 ~-4 ~-3 slot.container 14 golden_apple 4
loot insert ~0 ~-4 ~-3 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~-3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 spruce_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobblestone []
fill ~0 ~14 ~0 ~0 ~16 ~0 chiseled_stone_bricks []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x6x3) ---
fill ~-5 ~0 ~1 ~-5 ~6 ~1 deepslate_bricks []
setblock ~-5 ~7 ~1 packed_ice []
setblock ~-5 ~8 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 bone 12
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 string 11
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 9 crossbow 1
replaceitem block ~3 ~1 ~4 slot.container 10 campfire 2
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 8
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 14 coal 20
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
