# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2298/4224 | 主题内编号: b122/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·十字穹顶宏伟圣堂与墓窟 (frozen_peaks_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 calcite [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 calcite [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 packed_ice []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 gunpowder 9
replaceitem block ~0 ~-3 ~-5 slot.container 1 goat_horn 3
replaceitem block ~0 ~-3 ~-5 slot.container 2 leather 9
replaceitem block ~0 ~-3 ~-5 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~-5 slot.container 4 bone 17
replaceitem block ~0 ~-3 ~-5 slot.container 5 arrow 26
replaceitem block ~0 ~-3 ~-5 slot.container 9 emerald 11
replaceitem block ~0 ~-3 ~-5 slot.container 10 iron_ingot 14
replaceitem block ~0 ~-3 ~-5 slot.container 11 coal 16
replaceitem block ~0 ~-3 ~-5 slot.container 12 cooked_mutton 9
replaceitem block ~0 ~-3 ~-5 slot.container 13 golden_apple 4
replaceitem block ~0 ~-3 ~-5 slot.container 14 leather_boots 1
loot insert ~0 ~-3 ~-5 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~-5 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~8 ~7 calcite []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 calcite []
fill ~-1 ~1 ~-6 ~1 ~7 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 calcite []
fill ~0 ~14 ~0 ~0 ~16 ~0 iron_block []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x10x2) ---
fill ~-7 ~0 ~-1 ~-7 ~5 ~-1 deepslate_bricks []
setblock ~-7 ~6 ~-1 packed_ice []
setblock ~-7 ~7 ~-1 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 string 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 goat_horn 6
replaceitem block ~-5 ~1 ~6 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 golden_apple 4
replaceitem block ~-5 ~1 ~6 slot.container 10 leather_boots 1
replaceitem block ~-5 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~6 slot.container 13 campfire 8
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 4
loot insert ~-5 ~1 ~6 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 goat_horn 1
replaceitem block ~5 ~1 ~6 slot.container 2 leather 7
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 bone 15
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 24
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 10 leather_boots 1
replaceitem block ~5 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 13 campfire 6
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 9
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
