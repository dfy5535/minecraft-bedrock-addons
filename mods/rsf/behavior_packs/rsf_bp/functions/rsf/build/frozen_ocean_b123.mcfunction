# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2939/4224 | 主题内编号: b123/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·四角塔楼领主城堡复合体 (frozen_ocean_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 dark_prismarine [] replace water
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 dark_prismarine [] replace air
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 dark_prismarine_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 sea_lantern []
setblock ~5 ~-5 ~-4 sea_lantern []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 wet_sponge 6
replaceitem block ~5 ~-3 ~4 slot.container 1 copper_ingot 11
replaceitem block ~5 ~-3 ~4 slot.container 2 trident 5
replaceitem block ~5 ~-3 ~4 slot.container 3 prismarine_shard 21
replaceitem block ~5 ~-3 ~4 slot.container 4 prismarine_crystals 18
replaceitem block ~5 ~-3 ~4 slot.container 5 nautilus_shell 10
replaceitem block ~5 ~-3 ~4 slot.container 9 sea_lantern 7
replaceitem block ~5 ~-3 ~4 slot.container 10 heart_of_the_sea 3
replaceitem block ~5 ~-3 ~4 slot.container 11 blue_ice 15
replaceitem block ~5 ~-3 ~4 slot.container 12 sponge 8
replaceitem block ~5 ~-3 ~4 slot.container 13 cooked_salmon 17
replaceitem block ~5 ~-3 ~4 slot.container 14 gold_ingot 14
loot insert ~5 ~-3 ~4 loot "rsf/frozen_ocean"
loot insert ~5 ~-3 ~4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 dark_prismarine []
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~11 ~-5 packed_ice []
setblock ~-7 ~12 ~-6 sea_lantern []
fill ~-7 ~1 ~5 ~-6 ~11 ~6 packed_ice []
setblock ~-7 ~12 ~5 sea_lantern []
fill ~6 ~1 ~-6 ~7 ~11 ~-5 packed_ice []
setblock ~6 ~12 ~-6 sea_lantern []
fill ~6 ~1 ~5 ~7 ~11 ~6 packed_ice []
setblock ~6 ~12 ~5 sea_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 packed_ice []
fill ~-7 ~10 ~-6 ~7 ~10 ~6 cobblestone_wall []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 air []
setblock ~-7 ~10 ~-6 sea_lantern []
setblock ~-7 ~11 ~-6 sea_lantern []
setblock ~-7 ~10 ~6 sea_lantern []
setblock ~-7 ~11 ~6 sea_lantern []
setblock ~7 ~10 ~-6 sea_lantern []
setblock ~7 ~11 ~-6 sea_lantern []
setblock ~7 ~10 ~6 sea_lantern []
setblock ~7 ~11 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 prismarine_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x9x3) ---
fill ~0 ~0 ~9 ~0 ~6 ~9 dark_prismarine []
setblock ~0 ~7 ~9 blue_ice []
setblock ~0 ~8 ~9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~8 ~0 sea_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 13
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 2 wet_sponge 9
replaceitem block ~6 ~1 ~4 slot.container 3 copper_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 4 trident 8
replaceitem block ~6 ~1 ~4 slot.container 5 prismarine_shard 16
replaceitem block ~6 ~1 ~4 slot.container 9 diamond 8
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~6 ~1 ~4 slot.container 11 sea_lantern 7
replaceitem block ~6 ~1 ~4 slot.container 12 heart_of_the_sea 3
replaceitem block ~6 ~1 ~4 slot.container 13 blue_ice 15
replaceitem block ~6 ~1 ~4 slot.container 14 sponge 8
loot insert ~6 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 wet_sponge 4
replaceitem block ~-6 ~1 ~5 slot.container 1 copper_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 2 trident 3
replaceitem block ~-6 ~1 ~5 slot.container 3 prismarine_shard 19
replaceitem block ~-6 ~1 ~5 slot.container 4 prismarine_crystals 16
replaceitem block ~-6 ~1 ~5 slot.container 5 nautilus_shell 8
replaceitem block ~-6 ~1 ~5 slot.container 9 diamond 6
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~-6 ~1 ~5 slot.container 11 sea_lantern 12
replaceitem block ~-6 ~1 ~5 slot.container 12 heart_of_the_sea 1
replaceitem block ~-6 ~1 ~5 slot.container 13 blue_ice 13
replaceitem block ~-6 ~1 ~5 slot.container 14 sponge 6
loot insert ~-6 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-3 ~0
