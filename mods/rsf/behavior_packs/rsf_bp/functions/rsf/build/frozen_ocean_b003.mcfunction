# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2819/4224 | 主题内编号: b003/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·环柱巨石方尖祭坛 (frozen_ocean_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace water
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
setblock ~0 ~0 ~0 blue_ice []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 prismarine_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 packed_ice []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 sea_lantern []
setblock ~2 ~-4 ~0 sea_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 wet_sponge 6
replaceitem block ~0 ~-2 ~-3 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-2 ~-3 slot.container 2 trident 5
replaceitem block ~0 ~-2 ~-3 slot.container 3 prismarine_shard 21
replaceitem block ~0 ~-2 ~-3 slot.container 4 prismarine_crystals 18
replaceitem block ~0 ~-2 ~-3 slot.container 5 nautilus_shell 10
replaceitem block ~0 ~-2 ~-3 slot.container 9 cooked_salmon 13
replaceitem block ~0 ~-2 ~-3 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-2 ~-3 slot.container 11 iron_ingot 11
replaceitem block ~0 ~-2 ~-3 slot.container 12 emerald 8
replaceitem block ~0 ~-2 ~-3 slot.container 13 diamond 7
replaceitem block ~0 ~-2 ~-3 slot.container 14 golden_apple 8
loot insert ~0 ~-2 ~-3 loot "rsf/frozen_ocean"
loot insert ~0 ~-2 ~-3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~10 ~-5 ~6 ~10 ~5 packed_ice []
fill ~-6 ~1 ~-5 ~-6 ~9 ~-5 sea_lantern []
fill ~-6 ~1 ~5 ~-6 ~9 ~5 sea_lantern []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 sea_lantern []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 sea_lantern []
fill ~-2 ~1 ~-5 ~-2 ~9 ~-5 sea_lantern []
fill ~-2 ~1 ~5 ~-2 ~9 ~5 sea_lantern []
fill ~0 ~1 ~-5 ~0 ~9 ~-5 sea_lantern []
fill ~0 ~1 ~5 ~0 ~9 ~5 sea_lantern []
fill ~2 ~1 ~-5 ~2 ~9 ~-5 sea_lantern []
fill ~2 ~1 ~5 ~2 ~9 ~5 sea_lantern []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 sea_lantern []
fill ~4 ~1 ~5 ~4 ~9 ~5 sea_lantern []
fill ~6 ~1 ~-5 ~6 ~9 ~-5 sea_lantern []
fill ~6 ~1 ~5 ~6 ~9 ~5 sea_lantern []
fill ~-6 ~1 ~-3 ~-6 ~9 ~-3 sea_lantern []
fill ~6 ~1 ~-3 ~6 ~9 ~-3 sea_lantern []
fill ~-6 ~1 ~-1 ~-6 ~9 ~-1 sea_lantern []
fill ~6 ~1 ~-1 ~6 ~9 ~-1 sea_lantern []
fill ~-6 ~1 ~1 ~-6 ~9 ~1 sea_lantern []
fill ~6 ~1 ~1 ~6 ~9 ~1 sea_lantern []
fill ~-6 ~1 ~3 ~-6 ~9 ~3 sea_lantern []
fill ~6 ~1 ~3 ~6 ~9 ~3 sea_lantern []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 packed_ice []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 dark_prismarine []
fill ~0 ~16 ~0 ~0 ~19 ~0 blue_ice []
setblock ~0 ~20 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 sea_lantern []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 sea_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 sea_lantern []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 sea_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 sea_lantern []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 sea_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 sea_lantern []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-3 ~0 ~8 ~-3 ~6 ~8 dark_prismarine []
setblock ~-3 ~7 ~8 blue_ice []
setblock ~-3 ~8 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 13
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 2 wet_sponge 9
replaceitem block ~5 ~1 ~3 slot.container 3 copper_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 4 trident 8
replaceitem block ~5 ~1 ~3 slot.container 5 prismarine_shard 16
replaceitem block ~5 ~1 ~3 slot.container 9 diamond 7
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 8
replaceitem block ~5 ~1 ~3 slot.container 11 sea_lantern 6
replaceitem block ~5 ~1 ~3 slot.container 12 heart_of_the_sea 2
replaceitem block ~5 ~1 ~3 slot.container 13 blue_ice 14
replaceitem block ~5 ~1 ~3 slot.container 14 sponge 7
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wet_sponge 4
replaceitem block ~-5 ~1 ~4 slot.container 1 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 2 trident 3
replaceitem block ~-5 ~1 ~4 slot.container 3 prismarine_shard 19
replaceitem block ~-5 ~1 ~4 slot.container 4 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 5
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 11 sea_lantern 11
replaceitem block ~-5 ~1 ~4 slot.container 12 heart_of_the_sea 7
replaceitem block ~-5 ~1 ~4 slot.container 13 blue_ice 12
replaceitem block ~-5 ~1 ~4 slot.container 14 sponge 5
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-2 ~0
