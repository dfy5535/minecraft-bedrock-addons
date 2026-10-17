# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2287/4224 | 主题内编号: b111/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·地下禁忌书库与炼药室 (frozen_peaks_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 snow []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-6 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-6 ~0 torch []
setblock ~3 ~-6 ~0 torch []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 goat_horn 3
replaceitem block ~0 ~-4 ~4 slot.container 1 leather 9
replaceitem block ~0 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 3 bone 17
replaceitem block ~0 ~-4 ~4 slot.container 4 arrow 26
replaceitem block ~0 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~4 slot.container 9 cooked_mutton 12
replaceitem block ~0 ~-4 ~4 slot.container 10 golden_apple 7
replaceitem block ~0 ~-4 ~4 slot.container 11 leather_boots 1
replaceitem block ~0 ~-4 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~4 slot.container 13 crossbow 1
replaceitem block ~0 ~-4 ~4 slot.container 14 campfire 4
loot insert ~0 ~-4 ~4 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~4 loot "chests/pillager_outpost"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 goat_horn 1
replaceitem block ~0 ~-4 ~-4 slot.container 1 leather 7
replaceitem block ~0 ~-4 ~-4 slot.container 2 ender_pearl 4
replaceitem block ~0 ~-4 ~-4 slot.container 3 bone 15
replaceitem block ~0 ~-4 ~-4 slot.container 4 arrow 24
replaceitem block ~0 ~-4 ~-4 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-4 ~-4 slot.container 9 cooked_mutton 11
replaceitem block ~0 ~-4 ~-4 slot.container 10 golden_apple 6
replaceitem block ~0 ~-4 ~-4 slot.container 11 leather_boots 1
replaceitem block ~0 ~-4 ~-4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-4 slot.container 13 crossbow 1
replaceitem block ~0 ~-4 ~-4 slot.container 14 campfire 3
loot insert ~0 ~-4 ~-4 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 stone_bricks []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 stone_bricks []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 chiseled_stone_bricks []
setblock ~0 ~9 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 spruce_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-6 ~0 ~0 ~-6 ~9 ~0 deepslate_bricks []
setblock ~-6 ~10 ~0 packed_ice []
setblock ~-6 ~11 ~0 campfire []

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
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 10 coal 22
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_mutton 8
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 13 leather_boots 1
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
