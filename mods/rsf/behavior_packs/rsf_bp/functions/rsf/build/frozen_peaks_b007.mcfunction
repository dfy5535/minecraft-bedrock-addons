# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2183/4224 | 主题内编号: b007/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·八角星芒图腾祭坛 (frozen_peaks_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 snow []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 bone 17
replaceitem block ~3 ~-3 ~0 slot.container 2 arrow 26
replaceitem block ~3 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 4 string 8
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~0 slot.container 9 leather_boots 1
replaceitem block ~3 ~-3 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~-3 ~0 slot.container 11 crossbow 1
replaceitem block ~3 ~-3 ~0 slot.container 12 campfire 2
replaceitem block ~3 ~-3 ~0 slot.container 13 lantern 5
replaceitem block ~3 ~-3 ~0 slot.container 14 emerald 8
loot insert ~3 ~-3 ~0 loot "rsf/frozen_peaks"
loot insert ~3 ~-3 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 air []
fill ~5 ~1 ~6 ~5 ~8 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 spruce_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 cobblestone []
fill ~0 ~13 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 spruce_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 spruce_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 deepslate_bricks []
setblock ~-6 ~6 ~-2 packed_ice []
setblock ~-6 ~7 ~-2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 bone 12
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 12 coal 18
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_mutton 11
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
