# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2195/4224 | 主题内编号: b019/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·琉璃穹顶圣物秘室 (frozen_peaks_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 snow []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 string 8
replaceitem block ~2 ~-3 ~0 slot.container 1 gunpowder 9
replaceitem block ~2 ~-3 ~0 slot.container 2 goat_horn 3
replaceitem block ~2 ~-3 ~0 slot.container 3 leather 9
replaceitem block ~2 ~-3 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-3 ~0 slot.container 5 bone 17
replaceitem block ~2 ~-3 ~0 slot.container 9 iron_ingot 10
replaceitem block ~2 ~-3 ~0 slot.container 10 coal 19
replaceitem block ~2 ~-3 ~0 slot.container 11 cooked_mutton 12
replaceitem block ~2 ~-3 ~0 slot.container 12 golden_apple 7
replaceitem block ~2 ~-3 ~0 slot.container 13 leather_boots 1
replaceitem block ~2 ~-3 ~0 slot.container 14 iron_pickaxe 1
loot insert ~2 ~-3 ~0 loot "rsf/frozen_peaks"
loot insert ~2 ~-3 ~0 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 spruce_log []
fill ~3 ~1 ~4 ~3 ~6 ~4 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 stone_bricks []
fill ~-3 ~7 ~-4 ~3 ~8 ~4 glass []
fill ~-2 ~7 ~-3 ~2 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~3 ~-7 spruce_log []
setblock ~-6 ~4 ~-7 torch []
fill ~-6 ~0 ~7 ~-6 ~3 ~7 spruce_log []
setblock ~-6 ~4 ~7 torch []
fill ~6 ~0 ~-7 ~6 ~3 ~-7 spruce_log []
setblock ~6 ~4 ~-7 torch []
fill ~6 ~0 ~7 ~6 ~3 ~7 spruce_log []
setblock ~6 ~4 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x7x4) ---
fill ~-5 ~0 ~2 ~-5 ~7 ~2 deepslate_bricks []
setblock ~-5 ~8 ~2 packed_ice []
setblock ~-5 ~9 ~2 campfire []

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
replaceitem block ~3 ~1 ~4 slot.container 9 leather_boots 1
replaceitem block ~3 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 11 crossbow 1
replaceitem block ~3 ~1 ~4 slot.container 12 campfire 2
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 8
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
summon vindicator ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon goat ~1 ~1 ~1
summon pillager ~0 ~-3 ~0
