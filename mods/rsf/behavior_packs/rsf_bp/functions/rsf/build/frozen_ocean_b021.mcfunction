# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2837/4224 | 主题内编号: b021/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·U型合院天井秘宝房 (frozen_ocean_chamber_courtyard_villa)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 packed_ice []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 packed_ice []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_brick_slab []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 prismarine []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 prismarine_slab []
setblock ~0 ~11 ~0 sponge []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 prismarine_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-3 ~0 ~8 ~-3 ~9 ~8 dark_prismarine []
setblock ~-3 ~10 ~8 blue_ice []
setblock ~-3 ~11 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 wet_sponge 9
replaceitem block ~5 ~1 ~3 slot.container 1 copper_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 2 trident 8
replaceitem block ~5 ~1 ~3 slot.container 3 prismarine_shard 16
replaceitem block ~5 ~1 ~3 slot.container 4 prismarine_crystals 13
replaceitem block ~5 ~1 ~3 slot.container 5 nautilus_shell 5
replaceitem block ~5 ~1 ~3 slot.container 9 blue_ice 14
replaceitem block ~5 ~1 ~3 slot.container 10 sponge 7
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_salmon 16
replaceitem block ~5 ~1 ~3 slot.container 12 gold_ingot 13
replaceitem block ~5 ~1 ~3 slot.container 13 iron_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 14 emerald 4
loot insert ~5 ~1 ~3 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 trident 3
replaceitem block ~-5 ~1 ~4 slot.container 1 prismarine_shard 19
replaceitem block ~-5 ~1 ~4 slot.container 2 prismarine_crystals 16
replaceitem block ~-5 ~1 ~4 slot.container 3 nautilus_shell 8
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 19
replaceitem block ~-5 ~1 ~4 slot.container 9 blue_ice 12
replaceitem block ~-5 ~1 ~4 slot.container 10 sponge 5
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_salmon 14
replaceitem block ~-5 ~1 ~4 slot.container 12 gold_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 14 emerald 9
loot insert ~-5 ~1 ~4 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~2 ~0
