# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2860/4224 | 主题内编号: b044/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·双子祭台勇士角斗场 (frozen_ocean_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 prismarine_bricks [] replace water
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 prismarine_bricks [] replace air
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 dark_prismarine []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 stone_bricks []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 prismarine_shard 21
replaceitem block ~5 ~-3 ~3 slot.container 1 prismarine_crystals 18
replaceitem block ~5 ~-3 ~3 slot.container 2 nautilus_shell 10
replaceitem block ~5 ~-3 ~3 slot.container 3 bone 10
replaceitem block ~5 ~-3 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~-3 ~3 slot.container 5 wet_sponge 6
replaceitem block ~5 ~-3 ~3 slot.container 9 gold_ingot 8
replaceitem block ~5 ~-3 ~3 slot.container 10 iron_ingot 9
replaceitem block ~5 ~-3 ~3 slot.container 11 emerald 6
replaceitem block ~5 ~-3 ~3 slot.container 12 diamond 5
replaceitem block ~5 ~-3 ~3 slot.container 13 golden_apple 6
replaceitem block ~5 ~-3 ~3 slot.container 14 sea_lantern 11
loot insert ~5 ~-3 ~3 loot "rsf/frozen_ocean"
loot insert ~5 ~-3 ~3 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~8 ~5 prismarine_bricks []
fill ~2 ~1 ~-5 ~7 ~8 ~5 prismarine_bricks []
fill ~-6 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~6 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 blue_ice []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-5 ~-7 ~9 ~-5 sea_lantern []
setblock ~-7 ~10 ~-5 sea_lantern []
fill ~-7 ~7 ~5 ~-7 ~9 ~5 sea_lantern []
setblock ~-7 ~10 ~5 sea_lantern []
fill ~7 ~7 ~-5 ~7 ~9 ~-5 sea_lantern []
setblock ~7 ~10 ~-5 sea_lantern []
fill ~7 ~7 ~5 ~7 ~9 ~5 sea_lantern []
setblock ~7 ~10 ~5 sea_lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x7x4) ---
fill ~-2 ~0 ~7 ~-2 ~7 ~7 dark_prismarine []
setblock ~-2 ~8 ~7 blue_ice []
setblock ~-2 ~9 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 sea_lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~-6 ~1 ~3 slot.container 1 wet_sponge 9
replaceitem block ~-6 ~1 ~3 slot.container 2 copper_ingot 14
replaceitem block ~-6 ~1 ~3 slot.container 3 trident 8
replaceitem block ~-6 ~1 ~3 slot.container 4 prismarine_shard 16
replaceitem block ~-6 ~1 ~3 slot.container 5 prismarine_crystals 13
replaceitem block ~-6 ~1 ~3 slot.container 9 heart_of_the_sea 5
replaceitem block ~-6 ~1 ~3 slot.container 10 blue_ice 17
replaceitem block ~-6 ~1 ~3 slot.container 11 sponge 10
replaceitem block ~-6 ~1 ~3 slot.container 12 cooked_salmon 12
replaceitem block ~-6 ~1 ~3 slot.container 13 gold_ingot 9
replaceitem block ~-6 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~-6 ~1 ~3 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
