# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2295/4224 | 主题内编号: b119/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·半地下恒温洞穴苗圃 (frozen_peaks_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 11x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cobblestone [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 cobblestone [] replace water
fill ~-5 ~1 ~-7 ~5 ~6 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 cobblestone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 snow []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 stone_bricks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 arrow 26
replaceitem block ~-2 ~-4 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~4 slot.container 2 string 8
replaceitem block ~-2 ~-4 ~4 slot.container 3 gunpowder 9
replaceitem block ~-2 ~-4 ~4 slot.container 4 goat_horn 3
replaceitem block ~-2 ~-4 ~4 slot.container 5 leather 9
replaceitem block ~-2 ~-4 ~4 slot.container 9 iron_ingot 8
replaceitem block ~-2 ~-4 ~4 slot.container 10 coal 17
replaceitem block ~-2 ~-4 ~4 slot.container 11 cooked_mutton 10
replaceitem block ~-2 ~-4 ~4 slot.container 12 golden_apple 5
replaceitem block ~-2 ~-4 ~4 slot.container 13 leather_boots 1
replaceitem block ~-2 ~-4 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-2 ~-4 ~4 loot "rsf/frozen_peaks"
loot insert ~-2 ~-4 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 cobblestone []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~4 ~-6 ~4 ~4 ~6 stone_bricks []
fill ~-3 ~5 ~-5 ~3 ~6 ~5 glass []
fill ~-2 ~5 ~-4 ~2 ~5 ~4 air []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 spruce_fence []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x9x4) ---
fill ~-5 ~0 ~2 ~-5 ~7 ~2 deepslate_bricks []
setblock ~-5 ~8 ~2 packed_ice []
setblock ~-5 ~9 ~2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 bone 12
replaceitem block ~3 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 4 string 11
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 9 leather_boots 1
replaceitem block ~3 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~1 ~5 slot.container 11 crossbow 1
replaceitem block ~3 ~1 ~5 slot.container 12 campfire 4
replaceitem block ~3 ~1 ~5 slot.container 13 lantern 7
replaceitem block ~3 ~1 ~5 slot.container 14 emerald 10
loot insert ~3 ~1 ~5 loot "rsf/frozen_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
