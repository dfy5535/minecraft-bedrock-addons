# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2861/4224 | 主题内编号: b045/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·十二柱神殿试炼场 (frozen_ocean_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 sponge []
setblock ~-5 ~-4 ~-4 sea_lantern []
setblock ~5 ~-4 ~4 sea_lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 wet_sponge 6
replaceitem block ~0 ~-2 ~4 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-2 ~4 slot.container 2 trident 5
replaceitem block ~0 ~-2 ~4 slot.container 3 prismarine_shard 21
replaceitem block ~0 ~-2 ~4 slot.container 4 prismarine_crystals 18
replaceitem block ~0 ~-2 ~4 slot.container 5 nautilus_shell 10
replaceitem block ~0 ~-2 ~4 slot.container 9 iron_ingot 10
replaceitem block ~0 ~-2 ~4 slot.container 10 emerald 7
replaceitem block ~0 ~-2 ~4 slot.container 11 diamond 6
replaceitem block ~0 ~-2 ~4 slot.container 12 golden_apple 7
replaceitem block ~0 ~-2 ~4 slot.container 13 sea_lantern 12
replaceitem block ~0 ~-2 ~4 slot.container 14 heart_of_the_sea 1
loot insert ~0 ~-2 ~4 loot "rsf/frozen_ocean"
loot insert ~0 ~-2 ~4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 packed_ice []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 sea_lantern []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 sea_lantern []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 sea_lantern []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 sea_lantern []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 sea_lantern []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 sea_lantern []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 sea_lantern []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 sea_lantern []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 sea_lantern []
fill ~1 ~1 ~6 ~1 ~7 ~6 sea_lantern []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 sea_lantern []
fill ~3 ~1 ~6 ~3 ~7 ~6 sea_lantern []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 sea_lantern []
fill ~5 ~1 ~6 ~5 ~7 ~6 sea_lantern []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 sea_lantern []
fill ~7 ~1 ~6 ~7 ~7 ~6 sea_lantern []
fill ~-7 ~1 ~-4 ~-7 ~7 ~-4 sea_lantern []
fill ~7 ~1 ~-4 ~7 ~7 ~-4 sea_lantern []
fill ~-7 ~1 ~-2 ~-7 ~7 ~-2 sea_lantern []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 sea_lantern []
fill ~-7 ~1 ~0 ~-7 ~7 ~0 sea_lantern []
fill ~7 ~1 ~0 ~7 ~7 ~0 sea_lantern []
fill ~-7 ~1 ~2 ~-7 ~7 ~2 sea_lantern []
fill ~7 ~1 ~2 ~7 ~7 ~2 sea_lantern []
fill ~-7 ~1 ~4 ~-7 ~7 ~4 sea_lantern []
fill ~7 ~1 ~4 ~7 ~7 ~4 sea_lantern []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~8 ~-6 ~-7 ~10 ~-6 sea_lantern []
setblock ~-7 ~11 ~-6 sea_lantern []
fill ~-7 ~8 ~6 ~-7 ~10 ~6 sea_lantern []
setblock ~-7 ~11 ~6 sea_lantern []
fill ~7 ~8 ~-6 ~7 ~10 ~-6 sea_lantern []
setblock ~7 ~11 ~-6 sea_lantern []
fill ~7 ~8 ~6 ~7 ~10 ~6 sea_lantern []
setblock ~7 ~11 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 sea_lantern []
setblock ~0 ~4 ~-8 diamond_block []
setblock ~0 ~5 ~-8 sea_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 sea_lantern []
setblock ~0 ~4 ~8 diamond_block []
setblock ~0 ~5 ~8 sea_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 sea_lantern []
setblock ~-9 ~4 ~0 diamond_block []
setblock ~-9 ~5 ~0 sea_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 sea_lantern []
setblock ~9 ~4 ~0 diamond_block []
setblock ~9 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x9x5) ---
fill ~-1 ~0 ~9 ~-1 ~8 ~9 dark_prismarine []
setblock ~-1 ~9 ~9 blue_ice []
setblock ~-1 ~10 ~9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 wet_sponge 9
replaceitem block ~6 ~1 ~4 slot.container 1 copper_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 2 trident 8
replaceitem block ~6 ~1 ~4 slot.container 3 prismarine_shard 16
replaceitem block ~6 ~1 ~4 slot.container 4 prismarine_crystals 13
replaceitem block ~6 ~1 ~4 slot.container 5 nautilus_shell 5
replaceitem block ~6 ~1 ~4 slot.container 9 cooked_salmon 17
replaceitem block ~6 ~1 ~4 slot.container 10 gold_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~6 ~1 ~4 slot.container 12 emerald 5
replaceitem block ~6 ~1 ~4 slot.container 13 diamond 4
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 5
loot insert ~6 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 trident 3
replaceitem block ~-6 ~1 ~5 slot.container 1 prismarine_shard 19
replaceitem block ~-6 ~1 ~5 slot.container 2 prismarine_crystals 16
replaceitem block ~-6 ~1 ~5 slot.container 3 nautilus_shell 8
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 19
replaceitem block ~-6 ~1 ~5 slot.container 9 cooked_salmon 15
replaceitem block ~-6 ~1 ~5 slot.container 10 gold_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_ingot 13
replaceitem block ~-6 ~1 ~5 slot.container 12 emerald 10
replaceitem block ~-6 ~1 ~5 slot.container 13 diamond 2
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~-6 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-2 ~0
