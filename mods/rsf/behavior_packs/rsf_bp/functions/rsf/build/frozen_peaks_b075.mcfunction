# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2251/4224 | 主题内编号: b075/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·远古巨石环廊法阵 (frozen_peaks_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 snow []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 goat_horn 3
replaceitem block ~0 ~-3 ~-5 slot.container 1 leather 9
replaceitem block ~0 ~-3 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~-5 slot.container 4 arrow 26
replaceitem block ~0 ~-3 ~-5 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-5 slot.container 9 lantern 4
replaceitem block ~0 ~-3 ~-5 slot.container 10 emerald 7
replaceitem block ~0 ~-3 ~-5 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-3 ~-5 slot.container 12 coal 19
replaceitem block ~0 ~-3 ~-5 slot.container 13 cooked_mutton 12
replaceitem block ~0 ~-3 ~-5 slot.container 14 golden_apple 7
loot insert ~0 ~-3 ~-5 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 stone_bricks []
fill ~-6 ~1 ~-7 ~-6 ~5 ~-7 spruce_log []
fill ~-6 ~1 ~7 ~-6 ~5 ~7 spruce_log []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 spruce_log []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 spruce_log []
fill ~-2 ~1 ~-7 ~-2 ~5 ~-7 spruce_log []
fill ~-2 ~1 ~7 ~-2 ~5 ~7 spruce_log []
fill ~0 ~1 ~-7 ~0 ~5 ~-7 spruce_log []
fill ~0 ~1 ~7 ~0 ~5 ~7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~5 ~-7 spruce_log []
fill ~2 ~1 ~7 ~2 ~5 ~7 spruce_log []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 spruce_log []
fill ~4 ~1 ~7 ~4 ~5 ~7 spruce_log []
fill ~6 ~1 ~-7 ~6 ~5 ~-7 spruce_log []
fill ~6 ~1 ~7 ~6 ~5 ~7 spruce_log []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~5 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~5 ~3 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 spruce_log []
fill ~6 ~1 ~5 ~6 ~5 ~5 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-7 ~-6 ~8 ~-7 spruce_log []
setblock ~-6 ~9 ~-7 torch []
fill ~-6 ~6 ~7 ~-6 ~8 ~7 spruce_log []
setblock ~-6 ~9 ~7 torch []
fill ~6 ~6 ~-7 ~6 ~8 ~-7 spruce_log []
setblock ~6 ~9 ~-7 torch []
fill ~6 ~6 ~7 ~6 ~8 ~7 spruce_log []
setblock ~6 ~9 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~1 ~-7 ~8 ~1 deepslate_bricks []
setblock ~-7 ~9 ~1 packed_ice []
setblock ~-7 ~10 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~6 ~2 ~2 ~6 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 goat_horn 6
replaceitem block ~5 ~1 ~6 slot.container 3 leather 12
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 bone 12
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_mutton 12
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~6 slot.container 11 leather_boots 1
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 14 campfire 4
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
