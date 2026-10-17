# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2208/4224 | 主题内编号: b032/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·断顶残垣古哨塔 (frozen_peaks_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 9x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 stone_bricks [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 stone_bricks [] replace water
fill ~-4 ~1 ~-6 ~4 ~10 ~6 air []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_brick_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 cobblestone []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 deepslate_bricks []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
setblock ~0 ~-5 ~0 blue_ice []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 string 8
replaceitem block ~0 ~-2 ~-3 slot.container 2 gunpowder 9
replaceitem block ~0 ~-2 ~-3 slot.container 3 goat_horn 3
replaceitem block ~0 ~-2 ~-3 slot.container 4 leather 9
replaceitem block ~0 ~-2 ~-3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 9 emerald 12
replaceitem block ~0 ~-2 ~-3 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-2 ~-3 slot.container 11 coal 17
replaceitem block ~0 ~-2 ~-3 slot.container 12 cooked_mutton 10
replaceitem block ~0 ~-2 ~-3 slot.container 13 golden_apple 5
replaceitem block ~0 ~-2 ~-3 slot.container 14 leather_boots 1
loot insert ~0 ~-2 ~-3 loot "rsf/frozen_peaks"
loot insert ~0 ~-2 ~-3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~8 ~5 stone_bricks []
fill ~-2 ~1 ~-4 ~2 ~7 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~8 ~-5 spruce_log []
fill ~-3 ~1 ~5 ~-3 ~8 ~5 spruce_log []
fill ~3 ~1 ~-5 ~3 ~8 ~-5 spruce_log []
fill ~3 ~1 ~5 ~3 ~8 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~8 ~-5 ~3 ~8 ~5 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-3 ~7 ~-1 ~-3 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~7 ~-2 spruce_log []
fill ~-4 ~0 ~2 ~-4 ~7 ~2 spruce_log []
fill ~4 ~0 ~-2 ~4 ~7 ~-2 spruce_log []
fill ~4 ~0 ~2 ~4 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 4x8x2) ---
fill ~-4 ~0 ~0 ~-4 ~5 ~0 deepslate_bricks []
setblock ~-4 ~6 ~0 packed_ice []
setblock ~-4 ~7 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-2 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-2 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-2 ~1 ~4 slot.container 3 string 11
replaceitem block ~-2 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-2 ~1 ~4 slot.container 5 goat_horn 6
replaceitem block ~-2 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~-2 ~1 ~4 slot.container 10 leather_boots 1
replaceitem block ~-2 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-2 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-2 ~1 ~4 slot.container 13 campfire 2
replaceitem block ~-2 ~1 ~4 slot.container 14 lantern 5
loot insert ~-2 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~2 ~1 ~4 slot.container 1 string 14
replaceitem block ~2 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~2 ~1 ~4 slot.container 3 goat_horn 1
replaceitem block ~2 ~1 ~4 slot.container 4 leather 7
replaceitem block ~2 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~2 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~2 ~1 ~4 slot.container 10 leather_boots 1
replaceitem block ~2 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~2 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~2 ~1 ~4 slot.container 13 campfire 7
replaceitem block ~2 ~1 ~4 slot.container 14 lantern 10
loot insert ~2 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~2 ~1 ~4 loot "chests/pillager_outpost"
summon stray ~0 ~1 ~-1
summon goat ~-1 ~1 ~1
