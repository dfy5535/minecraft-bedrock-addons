# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2235/4224 | 主题内编号: b059/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·阶梯金字塔法老墓室 (frozen_peaks_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 snow []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 stone_bricks []
setblock ~0 ~-7 ~0 emerald_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 goat_horn 3
replaceitem block ~0 ~-4 ~-5 slot.container 1 leather 9
replaceitem block ~0 ~-4 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 3 bone 17
replaceitem block ~0 ~-4 ~-5 slot.container 4 arrow 26
replaceitem block ~0 ~-4 ~-5 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_ingot 13
replaceitem block ~0 ~-4 ~-5 slot.container 10 coal 22
replaceitem block ~0 ~-4 ~-5 slot.container 11 cooked_mutton 8
replaceitem block ~0 ~-4 ~-5 slot.container 12 golden_apple 3
replaceitem block ~0 ~-4 ~-5 slot.container 13 leather_boots 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-4 ~-5 loot "rsf/frozen_peaks"
loot insert ~0 ~-4 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 stone_bricks []
fill ~-4 ~5 ~-5 ~4 ~6 ~5 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 stone_bricks []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_stone_bricks []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 spruce_log []
setblock ~-8 ~4 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 spruce_log []
setblock ~-8 ~4 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 spruce_log []
setblock ~8 ~4 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~3 ~9 spruce_log []
setblock ~8 ~4 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x10x4) ---
fill ~-7 ~0 ~-1 ~-7 ~7 ~-1 deepslate_bricks []
setblock ~-7 ~8 ~-1 packed_ice []
setblock ~-7 ~9 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 goat_horn 6
replaceitem block ~5 ~1 ~6 slot.container 3 leather 12
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 bone 12
replaceitem block ~5 ~1 ~6 slot.container 9 leather_boots 1
replaceitem block ~5 ~1 ~6 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 11 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 12 campfire 7
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 6
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
