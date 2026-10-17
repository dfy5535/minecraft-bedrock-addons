# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2302/4224 | 主题内编号: b126/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·双子主塔天桥宫殿与暗牢 (frozen_peaks_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 calcite [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 calcite [] replace water
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 packed_ice []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 snow []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 calcite []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 campfire []
setblock ~4 ~-5 ~-4 campfire []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 bone 17
replaceitem block ~4 ~-3 ~4 slot.container 1 arrow 26
replaceitem block ~4 ~-3 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-3 ~4 slot.container 3 string 8
replaceitem block ~4 ~-3 ~4 slot.container 4 gunpowder 9
replaceitem block ~4 ~-3 ~4 slot.container 5 goat_horn 3
replaceitem block ~4 ~-3 ~4 slot.container 9 campfire 3
replaceitem block ~4 ~-3 ~4 slot.container 10 lantern 6
replaceitem block ~4 ~-3 ~4 slot.container 11 emerald 9
replaceitem block ~4 ~-3 ~4 slot.container 12 iron_ingot 12
replaceitem block ~4 ~-3 ~4 slot.container 13 coal 21
replaceitem block ~4 ~-3 ~4 slot.container 14 cooked_mutton 14
loot insert ~4 ~-3 ~4 loot "rsf/frozen_peaks"
loot insert ~4 ~-3 ~4 loot "chests/pillager_outpost"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~9 ~6 calcite []
fill ~2 ~1 ~-6 ~6 ~9 ~6 calcite []
fill ~-5 ~1 ~-5 ~-3 ~8 ~5 air []
fill ~3 ~1 ~-5 ~5 ~8 ~5 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 calcite []
fill ~0 ~14 ~0 ~0 ~16 ~0 iron_block []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 stone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 campfire []
setblock ~2 ~4 ~-9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-3 ~-7 ~9 ~-3 deepslate_bricks []
setblock ~-7 ~10 ~-3 packed_ice []
setblock ~-7 ~11 ~-3 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~5 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 5 string 11
replaceitem block ~-5 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~-5 ~1 ~5 slot.container 11 campfire 3
replaceitem block ~-5 ~1 ~5 slot.container 12 lantern 6
replaceitem block ~-5 ~1 ~5 slot.container 13 emerald 9
replaceitem block ~-5 ~1 ~5 slot.container 14 iron_ingot 12
loot insert ~-5 ~1 ~5 loot "rsf/frozen_peaks"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 bone 15
replaceitem block ~5 ~1 ~5 slot.container 1 arrow 24
replaceitem block ~5 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 3 string 14
replaceitem block ~5 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~5 slot.container 5 goat_horn 1
replaceitem block ~5 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~5 slot.container 10 crossbow 1
replaceitem block ~5 ~1 ~5 slot.container 11 campfire 8
replaceitem block ~5 ~1 ~5 slot.container 12 lantern 4
replaceitem block ~5 ~1 ~5 slot.container 13 emerald 7
replaceitem block ~5 ~1 ~5 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~5 loot "rsf/frozen_peaks"
loot insert ~5 ~1 ~5 loot "chests/pillager_outpost"
summon zombie ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon stray ~1 ~1 ~1
