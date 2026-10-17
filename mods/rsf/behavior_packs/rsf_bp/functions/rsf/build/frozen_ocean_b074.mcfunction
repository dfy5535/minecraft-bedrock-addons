# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2890/4224 | 主题内编号: b074/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·十字四象图腾柱阵 (frozen_ocean_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine [] replace air
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 dark_prismarine []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 diamond_block []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 nautilus_shell 10
replaceitem block ~4 ~-3 ~0 slot.container 1 bone 10
replaceitem block ~4 ~-3 ~0 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~-3 ~0 slot.container 3 wet_sponge 6
replaceitem block ~4 ~-3 ~0 slot.container 4 copper_ingot 11
replaceitem block ~4 ~-3 ~0 slot.container 5 trident 5
replaceitem block ~4 ~-3 ~0 slot.container 9 emerald 8
replaceitem block ~4 ~-3 ~0 slot.container 10 diamond 7
replaceitem block ~4 ~-3 ~0 slot.container 11 golden_apple 8
replaceitem block ~4 ~-3 ~0 slot.container 12 sea_lantern 6
replaceitem block ~4 ~-3 ~0 slot.container 13 heart_of_the_sea 2
replaceitem block ~4 ~-3 ~0 slot.container 14 blue_ice 14
loot insert ~4 ~-3 ~0 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~0 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 prismarine []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 prismarine []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 sea_lantern []
setblock ~-6 ~11 ~-5 sea_lantern []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 sea_lantern []
setblock ~-6 ~11 ~5 sea_lantern []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 sea_lantern []
setblock ~6 ~11 ~-5 sea_lantern []
fill ~6 ~8 ~5 ~6 ~10 ~5 sea_lantern []
setblock ~6 ~11 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dark_prismarine []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sea_lantern []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sea_lantern []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 prismarine_slab []
setblock ~0 ~3 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~2 ~0 ~7 ~2 ~7 ~7 dark_prismarine []
setblock ~2 ~8 ~7 blue_ice []
setblock ~2 ~9 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 sea_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 diamond_block []
setblock ~0 ~1 ~0 blue_ice []
setblock ~0 ~2 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 nautilus_shell 5
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 3 wet_sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 4 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 5 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 9 heart_of_the_sea 7
replaceitem block ~-5 ~1 ~3 slot.container 10 blue_ice 12
replaceitem block ~-5 ~1 ~3 slot.container 11 sponge 5
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_salmon 14
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
