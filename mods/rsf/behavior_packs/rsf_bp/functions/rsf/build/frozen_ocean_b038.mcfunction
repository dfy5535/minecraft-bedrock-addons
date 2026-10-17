# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2854/4224 | 主题内编号: b038/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·四方凯旋衣冠冢 (frozen_ocean_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine [] replace water
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine [] replace air
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 dark_prismarine []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dark_prismarine []
setblock ~0 ~-6 ~0 blue_ice []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 sea_lantern []
setblock ~2 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 prismarine_shard 21
replaceitem block ~0 ~-3 ~-2 slot.container 1 prismarine_crystals 18
replaceitem block ~0 ~-3 ~-2 slot.container 2 nautilus_shell 10
replaceitem block ~0 ~-3 ~-2 slot.container 3 bone 10
replaceitem block ~0 ~-3 ~-2 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-3 ~-2 slot.container 5 wet_sponge 6
replaceitem block ~0 ~-3 ~-2 slot.container 9 golden_apple 3
replaceitem block ~0 ~-3 ~-2 slot.container 10 sea_lantern 8
replaceitem block ~0 ~-3 ~-2 slot.container 11 heart_of_the_sea 4
replaceitem block ~0 ~-3 ~-2 slot.container 12 blue_ice 16
replaceitem block ~0 ~-3 ~-2 slot.container 13 sponge 9
replaceitem block ~0 ~-3 ~-2 slot.container 14 cooked_salmon 18
loot insert ~0 ~-3 ~-2 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~-2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~9 ~4 prismarine []
fill ~-5 ~1 ~-2 ~5 ~9 ~2 prismarine []
fill ~-1 ~1 ~-3 ~1 ~8 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~8 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 dark_prismarine []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 dark_prismarine []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 diamond_block []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~9 ~-2 sea_lantern []
fill ~-8 ~0 ~2 ~-8 ~9 ~2 sea_lantern []
fill ~8 ~0 ~-2 ~8 ~9 ~-2 sea_lantern []
fill ~8 ~0 ~2 ~8 ~9 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~0 ~0 ~6 ~0 ~6 ~6 dark_prismarine []
setblock ~0 ~7 ~6 blue_ice []
setblock ~0 ~8 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~8 ~0 sea_lantern []
fill ~-4 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 diamond_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 copper_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 1 trident 8
replaceitem block ~-4 ~1 ~2 slot.container 2 prismarine_shard 16
replaceitem block ~-4 ~1 ~2 slot.container 3 prismarine_crystals 13
replaceitem block ~-4 ~1 ~2 slot.container 4 nautilus_shell 5
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 9 sponge 9
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_salmon 18
replaceitem block ~-4 ~1 ~2 slot.container 11 gold_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 13 emerald 6
replaceitem block ~-4 ~1 ~2 slot.container 14 diamond 5
loot insert ~-4 ~1 ~2 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
