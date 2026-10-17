# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2941/4224 | 主题内编号: b125/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·巨型阶梯金字塔神王殿 (frozen_ocean_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 prismarine []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 sponge []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 wet_sponge 6
replaceitem block ~5 ~-3 ~0 slot.container 1 copper_ingot 11
replaceitem block ~5 ~-3 ~0 slot.container 2 trident 5
replaceitem block ~5 ~-3 ~0 slot.container 3 prismarine_shard 21
replaceitem block ~5 ~-3 ~0 slot.container 4 prismarine_crystals 18
replaceitem block ~5 ~-3 ~0 slot.container 5 nautilus_shell 10
replaceitem block ~5 ~-3 ~0 slot.container 9 sea_lantern 12
replaceitem block ~5 ~-3 ~0 slot.container 10 heart_of_the_sea 1
replaceitem block ~5 ~-3 ~0 slot.container 11 blue_ice 13
replaceitem block ~5 ~-3 ~0 slot.container 12 sponge 6
replaceitem block ~5 ~-3 ~0 slot.container 13 cooked_salmon 15
replaceitem block ~5 ~-3 ~0 slot.container 14 gold_ingot 12
loot insert ~5 ~-3 ~0 loot "rsf/frozen_ocean"
loot insert ~5 ~-3 ~0 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 stone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 packed_ice []
fill ~-5 ~5 ~-4 ~5 ~10 ~4 prismarine []
fill ~-5 ~1 ~-4 ~5 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~11 ~-6 ~7 ~11 ~6 packed_ice []
fill ~-6 ~12 ~-5 ~6 ~12 ~5 prismarine []
fill ~-1 ~13 ~-1 ~1 ~13 ~1 sponge []
setblock ~0 ~14 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 sea_lantern []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 sea_lantern []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 sea_lantern []
fill ~6 ~0 ~2 ~6 ~8 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x8x5) ---
fill ~2 ~0 ~8 ~2 ~8 ~8 dark_prismarine []
setblock ~2 ~9 ~8 blue_ice []
setblock ~2 ~10 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~9 ~0 sea_lantern []
setblock ~0 ~1 ~0 sponge []
setblock ~0 ~2 ~0 sea_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 wet_sponge 9
replaceitem block ~6 ~1 ~4 slot.container 1 copper_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 2 trident 8
replaceitem block ~6 ~1 ~4 slot.container 3 prismarine_shard 16
replaceitem block ~6 ~1 ~4 slot.container 4 prismarine_crystals 13
replaceitem block ~6 ~1 ~4 slot.container 5 nautilus_shell 5
replaceitem block ~6 ~1 ~4 slot.container 9 cooked_salmon 13
replaceitem block ~6 ~1 ~4 slot.container 10 gold_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~6 ~1 ~4 slot.container 12 emerald 8
replaceitem block ~6 ~1 ~4 slot.container 13 diamond 7
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~6 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 trident 3
replaceitem block ~-6 ~1 ~5 slot.container 1 prismarine_shard 19
replaceitem block ~-6 ~1 ~5 slot.container 2 prismarine_crystals 16
replaceitem block ~-6 ~1 ~5 slot.container 3 nautilus_shell 8
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 19
replaceitem block ~-6 ~1 ~5 slot.container 9 cooked_salmon 18
replaceitem block ~-6 ~1 ~5 slot.container 10 gold_ingot 8
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 12 emerald 6
replaceitem block ~-6 ~1 ~5 slot.container 13 diamond 5
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 6
loot insert ~-6 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecktreasure"
summon guardian ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon polar_bear ~1 ~1 ~1
