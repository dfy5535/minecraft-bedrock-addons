# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2283/4224 | 主题内编号: b107/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·观星高塔与秘术地宫 (frozen_peaks_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
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

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
setblock ~0 ~-7 ~0 torch []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 string 8
replaceitem block ~2 ~-4 ~0 slot.container 1 gunpowder 9
replaceitem block ~2 ~-4 ~0 slot.container 2 goat_horn 3
replaceitem block ~2 ~-4 ~0 slot.container 3 leather 9
replaceitem block ~2 ~-4 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-4 ~0 slot.container 5 bone 17
replaceitem block ~2 ~-4 ~0 slot.container 9 leather_boots 1
replaceitem block ~2 ~-4 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~-4 ~0 slot.container 11 crossbow 1
replaceitem block ~2 ~-4 ~0 slot.container 12 campfire 4
replaceitem block ~2 ~-4 ~0 slot.container 13 lantern 7
replaceitem block ~2 ~-4 ~0 slot.container 14 emerald 10
loot insert ~2 ~-4 ~0 loot "rsf/frozen_peaks"
loot insert ~2 ~-4 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 stone_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~8 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x8x2) ---
fill ~-5 ~0 ~0 ~-5 ~5 ~0 deepslate_bricks []
setblock ~-5 ~6 ~0 packed_ice []
setblock ~-5 ~7 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 11
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 goat_horn 6
replaceitem block ~3 ~1 ~4 slot.container 3 leather 12
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 bone 12
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 8
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 12 coal 20
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_mutton 13
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
