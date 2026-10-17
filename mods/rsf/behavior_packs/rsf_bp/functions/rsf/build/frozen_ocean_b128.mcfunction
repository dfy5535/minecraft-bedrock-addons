# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2944/4224 | 主题内编号: b128/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·U型紫禁朝堂大殿与地底金库 (frozen_ocean_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 prismarine_bricks [] replace water
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 prismarine_bricks [] replace air
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 prismarine_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 dark_prismarine []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 prismarine_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 sea_lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~-4 ~4 slot.container 1 wet_sponge 6
replaceitem block ~5 ~-4 ~4 slot.container 2 copper_ingot 11
replaceitem block ~5 ~-4 ~4 slot.container 3 trident 5
replaceitem block ~5 ~-4 ~4 slot.container 4 prismarine_shard 21
replaceitem block ~5 ~-4 ~4 slot.container 5 prismarine_crystals 18
replaceitem block ~5 ~-4 ~4 slot.container 9 golden_apple 5
replaceitem block ~5 ~-4 ~4 slot.container 10 sea_lantern 10
replaceitem block ~5 ~-4 ~4 slot.container 11 heart_of_the_sea 6
replaceitem block ~5 ~-4 ~4 slot.container 12 blue_ice 18
replaceitem block ~5 ~-4 ~4 slot.container 13 sponge 4
replaceitem block ~5 ~-4 ~4 slot.container 14 cooked_salmon 13
loot insert ~5 ~-4 ~4 loot "rsf/frozen_ocean"
loot insert ~5 ~-4 ~4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 prismarine_bricks []
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~9 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 prismarine []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~9 ~-7 ~8 ~9 ~7 prismarine_brick_slab []
fill ~-6 ~10 ~-5 ~6 ~11 ~5 stone_bricks []
fill ~-7 ~12 ~-6 ~7 ~12 ~6 stone_brick_slab []
setblock ~0 ~13 ~0 gold_block []
setblock ~0 ~14 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x8x3) ---
fill ~-2 ~0 ~8 ~-2 ~6 ~8 dark_prismarine []
setblock ~-2 ~7 ~8 blue_ice []
setblock ~-2 ~8 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 prismarine_shard 16
replaceitem block ~-6 ~1 ~4 slot.container 1 prismarine_crystals 13
replaceitem block ~-6 ~1 ~4 slot.container 2 nautilus_shell 5
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 13
replaceitem block ~-6 ~1 ~4 slot.container 4 rotten_flesh 16
replaceitem block ~-6 ~1 ~4 slot.container 5 wet_sponge 9
replaceitem block ~-6 ~1 ~4 slot.container 9 sponge 8
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_salmon 17
replaceitem block ~-6 ~1 ~4 slot.container 11 gold_ingot 14
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-6 ~1 ~4 slot.container 13 emerald 5
replaceitem block ~-6 ~1 ~4 slot.container 14 diamond 4
loot insert ~-6 ~1 ~4 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
