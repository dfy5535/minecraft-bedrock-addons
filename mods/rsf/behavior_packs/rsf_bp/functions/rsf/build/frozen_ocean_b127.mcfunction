# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2943/4224 | 主题内编号: b127/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·万神殿巨型穹顶与试炼宫 (frozen_ocean_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_living]
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

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 dark_prismarine []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 blue_ice []
setblock ~-5 ~-5 ~-4 sea_lantern []
setblock ~5 ~-5 ~4 sea_lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 trident 5
replaceitem block ~0 ~-3 ~4 slot.container 1 prismarine_shard 21
replaceitem block ~0 ~-3 ~4 slot.container 2 prismarine_crystals 18
replaceitem block ~0 ~-3 ~4 slot.container 3 nautilus_shell 10
replaceitem block ~0 ~-3 ~4 slot.container 4 bone 10
replaceitem block ~0 ~-3 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~0 ~-3 ~4 slot.container 9 blue_ice 12
replaceitem block ~0 ~-3 ~4 slot.container 10 sponge 5
replaceitem block ~0 ~-3 ~4 slot.container 11 cooked_salmon 14
replaceitem block ~0 ~-3 ~4 slot.container 12 gold_ingot 11
replaceitem block ~0 ~-3 ~4 slot.container 13 iron_ingot 12
replaceitem block ~0 ~-3 ~4 slot.container 14 emerald 9
loot insert ~0 ~-3 ~4 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 packed_ice []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 sea_lantern []
fill ~-7 ~1 ~6 ~-7 ~8 ~6 sea_lantern []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 sea_lantern []
fill ~-5 ~1 ~6 ~-5 ~8 ~6 sea_lantern []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 sea_lantern []
fill ~-3 ~1 ~6 ~-3 ~8 ~6 sea_lantern []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 sea_lantern []
fill ~-1 ~1 ~6 ~-1 ~8 ~6 sea_lantern []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 sea_lantern []
fill ~1 ~1 ~6 ~1 ~8 ~6 sea_lantern []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 sea_lantern []
fill ~3 ~1 ~6 ~3 ~8 ~6 sea_lantern []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 sea_lantern []
fill ~5 ~1 ~6 ~5 ~8 ~6 sea_lantern []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 sea_lantern []
fill ~7 ~1 ~6 ~7 ~8 ~6 sea_lantern []
fill ~-7 ~1 ~-4 ~-7 ~8 ~-4 sea_lantern []
fill ~7 ~1 ~-4 ~7 ~8 ~-4 sea_lantern []
fill ~-7 ~1 ~-2 ~-7 ~8 ~-2 sea_lantern []
fill ~7 ~1 ~-2 ~7 ~8 ~-2 sea_lantern []
fill ~-7 ~1 ~0 ~-7 ~8 ~0 sea_lantern []
fill ~7 ~1 ~0 ~7 ~8 ~0 sea_lantern []
fill ~-7 ~1 ~2 ~-7 ~8 ~2 sea_lantern []
fill ~7 ~1 ~2 ~7 ~8 ~2 sea_lantern []
fill ~-7 ~1 ~4 ~-7 ~8 ~4 sea_lantern []
fill ~7 ~1 ~4 ~7 ~8 ~4 sea_lantern []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 packed_ice []
fill ~-6 ~10 ~-5 ~6 ~11 ~5 glass []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 air []
setblock ~0 ~11 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 sea_lantern []
setblock ~0 ~4 ~-8 gold_block []
setblock ~0 ~5 ~-8 sea_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 sea_lantern []
setblock ~0 ~4 ~8 gold_block []
setblock ~0 ~5 ~8 sea_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 sea_lantern []
setblock ~-9 ~4 ~0 gold_block []
setblock ~-9 ~5 ~0 sea_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 sea_lantern []
setblock ~9 ~4 ~0 gold_block []
setblock ~9 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x7x2) ---
fill ~-3 ~0 ~7 ~-3 ~5 ~7 dark_prismarine []
setblock ~-3 ~6 ~7 blue_ice []
setblock ~-3 ~7 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 trident 8
replaceitem block ~6 ~1 ~4 slot.container 1 prismarine_shard 16
replaceitem block ~6 ~1 ~4 slot.container 2 prismarine_crystals 13
replaceitem block ~6 ~1 ~4 slot.container 3 nautilus_shell 5
replaceitem block ~6 ~1 ~4 slot.container 4 bone 13
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 9 sea_lantern 9
replaceitem block ~6 ~1 ~4 slot.container 10 heart_of_the_sea 5
replaceitem block ~6 ~1 ~4 slot.container 11 blue_ice 17
replaceitem block ~6 ~1 ~4 slot.container 12 sponge 10
replaceitem block ~6 ~1 ~4 slot.container 13 cooked_salmon 12
replaceitem block ~6 ~1 ~4 slot.container 14 gold_ingot 9
loot insert ~6 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 prismarine_crystals 16
replaceitem block ~-6 ~1 ~5 slot.container 1 nautilus_shell 8
replaceitem block ~-6 ~1 ~5 slot.container 2 bone 16
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 19
replaceitem block ~-6 ~1 ~5 slot.container 4 wet_sponge 4
replaceitem block ~-6 ~1 ~5 slot.container 5 copper_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 9 sea_lantern 7
replaceitem block ~-6 ~1 ~5 slot.container 10 heart_of_the_sea 3
replaceitem block ~-6 ~1 ~5 slot.container 11 blue_ice 15
replaceitem block ~-6 ~1 ~5 slot.container 12 sponge 8
replaceitem block ~-6 ~1 ~5 slot.container 13 cooked_salmon 17
replaceitem block ~-6 ~1 ~5 slot.container 14 gold_ingot 14
loot insert ~-6 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
