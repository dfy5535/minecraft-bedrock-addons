# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2222/4224 | 主题内编号: b046/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·要塞校场比武演武台 (frozen_peaks_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 calcite [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 calcite [] replace water
fill ~-7 ~1 ~-8 ~7 ~7 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 packed_ice []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 goat_horn 3
replaceitem block ~0 ~-3 ~-4 slot.container 1 leather 9
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 26
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_mutton 13
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_apple 8
replaceitem block ~0 ~-3 ~-4 slot.container 11 leather_boots 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 crossbow 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 campfire 5
loot insert ~0 ~-3 ~-4 loot "rsf/frozen_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~5 ~7 calcite []
fill ~-5 ~1 ~-6 ~5 ~4 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~7 ~-6 stone_bricks []
setblock ~-6 ~8 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~7 ~7 stone_bricks []
setblock ~-6 ~8 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~7 ~-6 stone_bricks []
setblock ~5 ~8 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~7 ~7 stone_bricks []
setblock ~5 ~8 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 stone_bricks []
fill ~-6 ~6 ~-7 ~6 ~6 ~7 cobblestone_wall []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 air []
setblock ~-6 ~6 ~-7 spruce_log []
setblock ~-6 ~7 ~-7 campfire []
setblock ~-6 ~6 ~7 spruce_log []
setblock ~-6 ~7 ~7 campfire []
setblock ~6 ~6 ~-7 spruce_log []
setblock ~6 ~7 ~-7 campfire []
setblock ~6 ~6 ~7 spruce_log []
setblock ~6 ~7 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 cobblestone []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-7 ~0 ~0 ~-7 ~9 ~0 deepslate_bricks []
setblock ~-7 ~10 ~0 packed_ice []
setblock ~-7 ~11 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~6 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~6 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 5 string 11
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 10 crossbow 1
replaceitem block ~-5 ~1 ~6 slot.container 11 campfire 7
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 10
replaceitem block ~-5 ~1 ~6 slot.container 13 emerald 6
replaceitem block ~-5 ~1 ~6 slot.container 14 iron_ingot 9
loot insert ~-5 ~1 ~6 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 15
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 24
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 3 string 14
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 5 goat_horn 1
replaceitem block ~5 ~1 ~6 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 10 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 11 campfire 5
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 8
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 11
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 14
loot insert ~5 ~1 ~6 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~6 loot "chests/pillager_outpost"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon vindicator ~0 ~-2 ~0
