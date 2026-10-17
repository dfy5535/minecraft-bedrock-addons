# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2278/4224 | 主题内编号: b102/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·双子箭塔联防碉楼 (frozen_peaks_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 calcite []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 campfire []
setblock ~4 ~-4 ~-3 campfire []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 17
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 26
replaceitem block ~4 ~-2 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 3 string 8
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 9
replaceitem block ~4 ~-2 ~3 slot.container 5 goat_horn 3
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 10 crossbow 1
replaceitem block ~4 ~-2 ~3 slot.container 11 campfire 2
replaceitem block ~4 ~-2 ~3 slot.container 12 lantern 5
replaceitem block ~4 ~-2 ~3 slot.container 13 emerald 8
replaceitem block ~4 ~-2 ~3 slot.container 14 iron_ingot 11
loot insert ~4 ~-2 ~3 loot "rsf/frozen_peaks"
loot insert ~4 ~-2 ~3 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 calcite []
fill ~2 ~1 ~-5 ~6 ~8 ~5 calcite []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cobblestone_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 spruce_log []
setblock ~-6 ~9 ~-5 campfire []
setblock ~-6 ~8 ~5 spruce_log []
setblock ~-6 ~9 ~5 campfire []
setblock ~6 ~8 ~-5 spruce_log []
setblock ~6 ~9 ~-5 campfire []
setblock ~6 ~8 ~5 spruce_log []
setblock ~6 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~0 ~-7 ~5 ~0 deepslate_bricks []
setblock ~-7 ~6 ~0 packed_ice []
setblock ~-7 ~7 ~0 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 blue_ice []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 string 11
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 10 leather_boots 1
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~-5 ~1 ~4 slot.container 13 campfire 2
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 5
loot insert ~-5 ~1 ~4 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 15
replaceitem block ~5 ~1 ~4 slot.container 1 arrow 24
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 string 14
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 goat_horn 1
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~5 ~1 ~4 slot.container 10 leather_boots 1
replaceitem block ~5 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 12 crossbow 1
replaceitem block ~5 ~1 ~4 slot.container 13 campfire 7
replaceitem block ~5 ~1 ~4 slot.container 14 lantern 10
loot insert ~5 ~1 ~4 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~4 loot "chests/pillager_outpost"
summon zombie ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon stray ~1 ~1 ~1
