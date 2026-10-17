# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2914/4224 | 主题内编号: b098/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·四角炮楼重装要塞 (frozen_ocean_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 prismarine [] replace water
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 prismarine [] replace air
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 prismarine_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 packed_ice []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 sea_lantern []
setblock ~5 ~-6 ~-4 sea_lantern []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~-4 ~4 slot.container 1 wet_sponge 6
replaceitem block ~5 ~-4 ~4 slot.container 2 copper_ingot 11
replaceitem block ~5 ~-4 ~4 slot.container 3 trident 5
replaceitem block ~5 ~-4 ~4 slot.container 4 prismarine_shard 21
replaceitem block ~5 ~-4 ~4 slot.container 5 prismarine_crystals 18
replaceitem block ~5 ~-4 ~4 slot.container 9 gold_ingot 12
replaceitem block ~5 ~-4 ~4 slot.container 10 iron_ingot 13
replaceitem block ~5 ~-4 ~4 slot.container 11 emerald 10
replaceitem block ~5 ~-4 ~4 slot.container 12 diamond 2
replaceitem block ~5 ~-4 ~4 slot.container 13 golden_apple 3
replaceitem block ~5 ~-4 ~4 slot.container 14 sea_lantern 8
loot insert ~5 ~-4 ~4 loot "rsf/frozen_ocean"
loot insert ~5 ~-4 ~4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 prismarine []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~10 ~-5 dark_prismarine []
setblock ~-7 ~11 ~-6 sea_lantern []
fill ~-7 ~1 ~5 ~-6 ~10 ~6 dark_prismarine []
setblock ~-7 ~11 ~5 sea_lantern []
fill ~6 ~1 ~-6 ~7 ~10 ~-5 dark_prismarine []
setblock ~6 ~11 ~-6 sea_lantern []
fill ~6 ~1 ~5 ~7 ~10 ~6 dark_prismarine []
setblock ~6 ~11 ~5 sea_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 dark_prismarine []
fill ~-7 ~9 ~-6 ~7 ~9 ~6 cobblestone_wall []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 air []
setblock ~-7 ~9 ~-6 sea_lantern []
setblock ~-7 ~10 ~-6 sea_lantern []
setblock ~-7 ~9 ~6 sea_lantern []
setblock ~-7 ~10 ~6 sea_lantern []
setblock ~7 ~9 ~-6 sea_lantern []
setblock ~7 ~10 ~-6 sea_lantern []
setblock ~7 ~9 ~6 sea_lantern []
setblock ~7 ~10 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 sea_lantern []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 sea_lantern []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 sea_lantern []
fill ~6 ~0 ~2 ~6 ~6 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 10x8x3) ---
fill ~3 ~0 ~8 ~3 ~6 ~8 dark_prismarine []
setblock ~3 ~7 ~8 blue_ice []
setblock ~3 ~8 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 nautilus_shell 5
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-6 ~1 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~-6 ~1 ~4 slot.container 3 wet_sponge 9
replaceitem block ~-6 ~1 ~4 slot.container 4 copper_ingot 14
replaceitem block ~-6 ~1 ~4 slot.container 5 trident 8
replaceitem block ~-6 ~1 ~4 slot.container 9 sponge 6
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_salmon 15
replaceitem block ~-6 ~1 ~4 slot.container 11 gold_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_ingot 13
replaceitem block ~-6 ~1 ~4 slot.container 13 emerald 10
replaceitem block ~-6 ~1 ~4 slot.container 14 diamond 2
loot insert ~-6 ~1 ~4 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
