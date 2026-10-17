# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2275/4224 | 主题内编号: b099/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·铁闸门瓮城防御堡 (frozen_peaks_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 cobblestone [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 cobblestone [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 snow []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 stone_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~3 slot.container 1 bone 17
replaceitem block ~3 ~-3 ~3 slot.container 2 arrow 26
replaceitem block ~3 ~-3 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~3 slot.container 4 string 8
replaceitem block ~3 ~-3 ~3 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~3 slot.container 9 lantern 7
replaceitem block ~3 ~-3 ~3 slot.container 10 emerald 10
replaceitem block ~3 ~-3 ~3 slot.container 11 iron_ingot 13
replaceitem block ~3 ~-3 ~3 slot.container 12 coal 22
replaceitem block ~3 ~-3 ~3 slot.container 13 cooked_mutton 8
replaceitem block ~3 ~-3 ~3 slot.container 14 golden_apple 3
loot insert ~3 ~-3 ~3 loot "rsf/frozen_peaks"
loot insert ~3 ~-3 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 cobblestone []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 stone_bricks []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 spruce_fence []
fill ~-4 ~7 ~-4 ~4 ~7 ~4 air []
setblock ~-5 ~7 ~-5 spruce_log []
setblock ~-5 ~8 ~-5 torch []
setblock ~-5 ~7 ~5 spruce_log []
setblock ~-5 ~8 ~5 torch []
setblock ~5 ~7 ~-5 spruce_log []
setblock ~5 ~8 ~-5 torch []
setblock ~5 ~7 ~5 spruce_log []
setblock ~5 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~-6 ~0 ~2 ~-6 ~7 ~2 deepslate_bricks []
setblock ~-6 ~8 ~2 packed_ice []
setblock ~-6 ~9 ~2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 11
replaceitem block ~4 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~4 slot.container 2 goat_horn 6
replaceitem block ~4 ~1 ~4 slot.container 3 leather 12
replaceitem block ~4 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 5 bone 12
replaceitem block ~4 ~1 ~4 slot.container 9 leather_boots 1
replaceitem block ~4 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~4 slot.container 12 campfire 5
replaceitem block ~4 ~1 ~4 slot.container 13 lantern 8
replaceitem block ~4 ~1 ~4 slot.container 14 emerald 11
loot insert ~4 ~1 ~4 loot "rsf/frozen_peaks"
summon goat ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
