# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2937/4224 | 主题内编号: b121/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·卫城廊柱王座大殿与地宫 (frozen_ocean_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 sea_lantern []
setblock ~5 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 trident 5
replaceitem block ~0 ~-3 ~4 slot.container 1 prismarine_shard 21
replaceitem block ~0 ~-3 ~4 slot.container 2 prismarine_crystals 18
replaceitem block ~0 ~-3 ~4 slot.container 3 nautilus_shell 10
replaceitem block ~0 ~-3 ~4 slot.container 4 bone 10
replaceitem block ~0 ~-3 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~0 ~-3 ~4 slot.container 9 cooked_salmon 15
replaceitem block ~0 ~-3 ~4 slot.container 10 gold_ingot 12
replaceitem block ~0 ~-3 ~4 slot.container 11 iron_ingot 13
replaceitem block ~0 ~-3 ~4 slot.container 12 emerald 10
replaceitem block ~0 ~-3 ~4 slot.container 13 diamond 2
replaceitem block ~0 ~-3 ~4 slot.container 14 golden_apple 3
loot insert ~0 ~-3 ~4 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~4 loot "chests/shipwrecktreasure"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 trident 3
replaceitem block ~0 ~-3 ~-4 slot.container 1 prismarine_shard 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 prismarine_crystals 16
replaceitem block ~0 ~-3 ~-4 slot.container 3 nautilus_shell 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 19
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_salmon 14
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 12 emerald 9
replaceitem block ~0 ~-3 ~-4 slot.container 13 diamond 8
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 2
loot insert ~0 ~-3 ~-4 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~-4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~9 ~6 stone_bricks []
fill ~-6 ~1 ~0 ~6 ~8 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~9 ~-6 sea_lantern []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 sea_lantern []
fill ~-3 ~1 ~-6 ~-3 ~9 ~-6 sea_lantern []
fill ~-1 ~1 ~-6 ~-1 ~9 ~-6 sea_lantern []
fill ~1 ~1 ~-6 ~1 ~9 ~-6 sea_lantern []
fill ~3 ~1 ~-6 ~3 ~9 ~-6 sea_lantern []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 sea_lantern []
fill ~7 ~1 ~-6 ~7 ~9 ~-6 sea_lantern []
fill ~-7 ~9 ~-6 ~7 ~9 ~-1 packed_ice []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~10 ~-7 ~-8 ~10 ~7 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~10 ~-7 ~8 ~10 ~7 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~11 ~-6 ~-7 ~11 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~11 ~-6 ~7 ~11 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-6 ~6 ~11 ~6 stone_brick_slab []
fill ~0 ~12 ~-7 ~0 ~12 ~7 packed_ice []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 sea_lantern []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 sea_lantern []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 sea_lantern []
fill ~8 ~0 ~2 ~8 ~6 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x7x6) ---
fill ~-2 ~0 ~7 ~-2 ~9 ~7 dark_prismarine []
setblock ~-2 ~10 ~7 blue_ice []
setblock ~-2 ~11 ~7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 sea_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 sponge []
setblock ~0 ~1 ~0 diamond_block []
setblock ~0 ~2 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 prismarine_crystals 13
replaceitem block ~6 ~1 ~4 slot.container 1 nautilus_shell 5
replaceitem block ~6 ~1 ~4 slot.container 2 bone 13
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 4 wet_sponge 9
replaceitem block ~6 ~1 ~4 slot.container 5 copper_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 9 blue_ice 16
replaceitem block ~6 ~1 ~4 slot.container 10 sponge 9
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_salmon 18
replaceitem block ~6 ~1 ~4 slot.container 12 gold_ingot 8
replaceitem block ~6 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~6 ~1 ~4 slot.container 14 emerald 6
loot insert ~6 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 bone 16
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 19
replaceitem block ~-6 ~1 ~5 slot.container 2 wet_sponge 4
replaceitem block ~-6 ~1 ~5 slot.container 3 copper_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 4 trident 3
replaceitem block ~-6 ~1 ~5 slot.container 5 prismarine_shard 19
replaceitem block ~-6 ~1 ~5 slot.container 9 blue_ice 14
replaceitem block ~-6 ~1 ~5 slot.container 10 sponge 7
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_salmon 16
replaceitem block ~-6 ~1 ~5 slot.container 12 gold_ingot 13
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_ingot 14
replaceitem block ~-6 ~1 ~5 slot.container 14 emerald 4
loot insert ~-6 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecktreasure"
summon polar_bear ~0 ~1 ~-1
summon elder_guardian ~-1 ~1 ~1
