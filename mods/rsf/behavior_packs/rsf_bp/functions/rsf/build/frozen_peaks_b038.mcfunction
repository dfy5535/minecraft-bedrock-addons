# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2214/4224 | 主题内编号: b038/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·四方凯旋衣冠冢 (frozen_peaks_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 calcite [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 packed_ice []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 bone 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 arrow 26
replaceitem block ~0 ~-2 ~-3 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 3 string 8
replaceitem block ~0 ~-2 ~-3 slot.container 4 gunpowder 9
replaceitem block ~0 ~-2 ~-3 slot.container 5 goat_horn 3
replaceitem block ~0 ~-2 ~-3 slot.container 9 campfire 7
replaceitem block ~0 ~-2 ~-3 slot.container 10 lantern 10
replaceitem block ~0 ~-2 ~-3 slot.container 11 emerald 6
replaceitem block ~0 ~-2 ~-3 slot.container 12 iron_ingot 9
replaceitem block ~0 ~-2 ~-3 slot.container 13 coal 18
replaceitem block ~0 ~-2 ~-3 slot.container 14 cooked_mutton 11
loot insert ~0 ~-2 ~-3 loot "rsf/frozen_peaks"
loot insert ~0 ~-2 ~-3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 calcite []
fill ~-4 ~1 ~-2 ~4 ~7 ~2 calcite []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 cobblestone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 iron_block []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 snow []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x8x3) ---
fill ~-5 ~0 ~1 ~-5 ~6 ~1 deepslate_bricks []
setblock ~-5 ~7 ~1 packed_ice []
setblock ~-5 ~8 ~1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 iron_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 3 arrow 21
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 string 11
replaceitem block ~-3 ~1 ~4 slot.container 9 coal 18
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_mutton 11
replaceitem block ~-3 ~1 ~4 slot.container 11 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 12 leather_boots 1
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-3 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 15
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 24
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 goat_horn 1
replaceitem block ~3 ~1 ~4 slot.container 9 coal 16
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_mutton 9
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 12 leather_boots 1
replaceitem block ~3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 14 crossbow 1
loot insert ~3 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~3 ~1 ~4 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
