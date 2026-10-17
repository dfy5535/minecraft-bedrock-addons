# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2938/4224 | 主题内编号: b122/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·十字穹顶宏伟圣堂与墓窟 (frozen_ocean_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 prismarine [] replace water
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 prismarine [] replace air
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 prismarine_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 packed_ice []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 dark_prismarine []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 dark_prismarine []
setblock ~0 ~-7 ~0 blue_ice []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 sea_lantern []
setblock ~2 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-4 ~-4 slot.container 1 wet_sponge 6
replaceitem block ~0 ~-4 ~-4 slot.container 2 copper_ingot 11
replaceitem block ~0 ~-4 ~-4 slot.container 3 trident 5
replaceitem block ~0 ~-4 ~-4 slot.container 4 prismarine_shard 21
replaceitem block ~0 ~-4 ~-4 slot.container 5 prismarine_crystals 18
replaceitem block ~0 ~-4 ~-4 slot.container 9 heart_of_the_sea 2
replaceitem block ~0 ~-4 ~-4 slot.container 10 blue_ice 14
replaceitem block ~0 ~-4 ~-4 slot.container 11 sponge 7
replaceitem block ~0 ~-4 ~-4 slot.container 12 cooked_salmon 16
replaceitem block ~0 ~-4 ~-4 slot.container 13 gold_ingot 13
replaceitem block ~0 ~-4 ~-4 slot.container 14 iron_ingot 14
loot insert ~0 ~-4 ~-4 loot "rsf/frozen_ocean"
loot insert ~0 ~-4 ~-4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~10 ~6 prismarine []
fill ~-7 ~1 ~-2 ~7 ~10 ~2 prismarine []
fill ~-1 ~1 ~-5 ~1 ~9 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~9 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 dark_prismarine []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 prismarine []
fill ~0 ~16 ~0 ~0 ~19 ~0 diamond_block []
setblock ~0 ~20 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~9 ~-2 sea_lantern []
fill ~-8 ~0 ~2 ~-8 ~9 ~2 sea_lantern []
fill ~8 ~0 ~-2 ~8 ~9 ~-2 sea_lantern []
fill ~8 ~0 ~2 ~8 ~9 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x8x2) ---
fill ~-1 ~0 ~8 ~-1 ~5 ~8 dark_prismarine []
setblock ~-1 ~6 ~8 blue_ice []
setblock ~-1 ~7 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 nautilus_shell 5
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~-6 ~1 ~4 slot.container 3 wet_sponge 9
replaceitem block ~-6 ~1 ~4 slot.container 4 copper_ingot 14
replaceitem block ~-6 ~1 ~4 slot.container 5 trident 8
replaceitem block ~-6 ~1 ~4 slot.container 9 gold_ingot 13
replaceitem block ~-6 ~1 ~4 slot.container 10 iron_ingot 14
replaceitem block ~-6 ~1 ~4 slot.container 11 emerald 4
replaceitem block ~-6 ~1 ~4 slot.container 12 diamond 3
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 4
replaceitem block ~-6 ~1 ~4 slot.container 14 sea_lantern 9
loot insert ~-6 ~1 ~4 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
