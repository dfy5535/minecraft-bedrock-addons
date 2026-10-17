# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2828/4224 | 主题内编号: b012/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子暗门地底宝库 (frozen_ocean_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 prismarine_bricks [] replace water
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 prismarine_bricks [] replace air
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 dark_prismarine []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 stone_bricks []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 sea_lantern []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 prismarine_shard 21
replaceitem block ~5 ~-4 ~2 slot.container 1 prismarine_crystals 18
replaceitem block ~5 ~-4 ~2 slot.container 2 nautilus_shell 10
replaceitem block ~5 ~-4 ~2 slot.container 3 bone 10
replaceitem block ~5 ~-4 ~2 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~-4 ~2 slot.container 5 wet_sponge 6
replaceitem block ~5 ~-4 ~2 slot.container 9 golden_apple 5
replaceitem block ~5 ~-4 ~2 slot.container 10 sea_lantern 10
replaceitem block ~5 ~-4 ~2 slot.container 11 heart_of_the_sea 6
replaceitem block ~5 ~-4 ~2 slot.container 12 blue_ice 18
replaceitem block ~5 ~-4 ~2 slot.container 13 sponge 4
replaceitem block ~5 ~-4 ~2 slot.container 14 cooked_salmon 13
loot insert ~5 ~-4 ~2 loot "rsf/frozen_ocean"
loot insert ~5 ~-4 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 prismarine_bricks []
fill ~2 ~1 ~-4 ~7 ~8 ~4 prismarine_bricks []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 blue_ice []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~8 ~-5 ~-8 ~8 ~5 prismarine_bricks_stairs ["weirdo_direction"=0]
fill ~8 ~8 ~-5 ~8 ~8 ~5 prismarine_bricks_stairs ["weirdo_direction"=1]
fill ~-7 ~9 ~-4 ~-7 ~9 ~4 prismarine_bricks_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-4 ~7 ~9 ~4 prismarine_bricks_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-4 ~6 ~9 ~4 prismarine_brick_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 blue_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 sea_lantern []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 sea_lantern []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 sea_lantern []
fill ~8 ~0 ~2 ~8 ~6 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x7x2) ---
fill ~1 ~0 ~7 ~1 ~5 ~7 dark_prismarine []
setblock ~1 ~6 ~7 blue_ice []
setblock ~1 ~7 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~5 ~0 sea_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 sponge []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-6 ~1 ~2 slot.container 1 wet_sponge 9
replaceitem block ~-6 ~1 ~2 slot.container 2 copper_ingot 14
replaceitem block ~-6 ~1 ~2 slot.container 3 trident 8
replaceitem block ~-6 ~1 ~2 slot.container 4 prismarine_shard 16
replaceitem block ~-6 ~1 ~2 slot.container 5 prismarine_crystals 13
replaceitem block ~-6 ~1 ~2 slot.container 9 gold_ingot 8
replaceitem block ~-6 ~1 ~2 slot.container 10 iron_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 11 emerald 6
replaceitem block ~-6 ~1 ~2 slot.container 12 diamond 5
replaceitem block ~-6 ~1 ~2 slot.container 13 golden_apple 6
replaceitem block ~-6 ~1 ~2 slot.container 14 sea_lantern 11
loot insert ~-6 ~1 ~2 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-4 ~0
