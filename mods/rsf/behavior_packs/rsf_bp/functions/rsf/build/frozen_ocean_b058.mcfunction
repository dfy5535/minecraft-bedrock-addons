# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2874/4224 | 主题内编号: b058/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·十字拱顶家族陵墓 (frozen_ocean_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 sea_lantern []
setblock ~4 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 prismarine_shard 21
replaceitem block ~0 ~-4 ~3 slot.container 1 prismarine_crystals 18
replaceitem block ~0 ~-4 ~3 slot.container 2 nautilus_shell 10
replaceitem block ~0 ~-4 ~3 slot.container 3 bone 10
replaceitem block ~0 ~-4 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-4 ~3 slot.container 5 wet_sponge 6
replaceitem block ~0 ~-4 ~3 slot.container 9 gold_ingot 11
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_ingot 12
replaceitem block ~0 ~-4 ~3 slot.container 11 emerald 9
replaceitem block ~0 ~-4 ~3 slot.container 12 diamond 8
replaceitem block ~0 ~-4 ~3 slot.container 13 golden_apple 2
replaceitem block ~0 ~-4 ~3 slot.container 14 sea_lantern 7
loot insert ~0 ~-4 ~3 loot "rsf/frozen_ocean"
loot insert ~0 ~-4 ~3 loot "chests/shipwrecktreasure"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 prismarine_shard 19
replaceitem block ~0 ~-4 ~-3 slot.container 1 prismarine_crystals 16
replaceitem block ~0 ~-4 ~-3 slot.container 2 nautilus_shell 8
replaceitem block ~0 ~-4 ~-3 slot.container 3 bone 16
replaceitem block ~0 ~-4 ~-3 slot.container 4 rotten_flesh 19
replaceitem block ~0 ~-4 ~-3 slot.container 5 wet_sponge 4
replaceitem block ~0 ~-4 ~-3 slot.container 9 gold_ingot 10
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-4 ~-3 slot.container 11 emerald 8
replaceitem block ~0 ~-4 ~-3 slot.container 12 diamond 7
replaceitem block ~0 ~-4 ~-3 slot.container 13 golden_apple 8
replaceitem block ~0 ~-4 ~-3 slot.container 14 sea_lantern 6
loot insert ~0 ~-4 ~-3 loot "rsf/frozen_ocean"
loot insert ~0 ~-4 ~-3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 prismarine []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 prismarine []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 prismarine_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 prismarine_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 prismarine_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 prismarine_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 prismarine_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 dark_prismarine []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~9 ~-2 sea_lantern []
fill ~-8 ~0 ~2 ~-8 ~9 ~2 sea_lantern []
fill ~8 ~0 ~-2 ~8 ~9 ~-2 sea_lantern []
fill ~8 ~0 ~2 ~8 ~9 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~-2 ~0 ~6 ~-2 ~6 ~6 dark_prismarine []
setblock ~-2 ~7 ~6 blue_ice []
setblock ~-2 ~8 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 3 wet_sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 4 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 5 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 9 sponge 8
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_salmon 17
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 13 emerald 5
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 4
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
