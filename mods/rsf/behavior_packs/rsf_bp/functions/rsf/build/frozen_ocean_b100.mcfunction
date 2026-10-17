# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2916/4224 | 主题内编号: b100/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·半地下暗堡火力点 (frozen_ocean_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 prismarine_bricks [] replace water
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 prismarine_bricks [] replace air
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 dark_prismarine []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 prismarine_bricks []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 sea_lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 prismarine_shard 21
replaceitem block ~3 ~-4 ~2 slot.container 1 prismarine_crystals 18
replaceitem block ~3 ~-4 ~2 slot.container 2 nautilus_shell 10
replaceitem block ~3 ~-4 ~2 slot.container 3 bone 10
replaceitem block ~3 ~-4 ~2 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~-4 ~2 slot.container 5 wet_sponge 6
replaceitem block ~3 ~-4 ~2 slot.container 9 gold_ingot 11
replaceitem block ~3 ~-4 ~2 slot.container 10 iron_ingot 12
replaceitem block ~3 ~-4 ~2 slot.container 11 emerald 9
replaceitem block ~3 ~-4 ~2 slot.container 12 diamond 8
replaceitem block ~3 ~-4 ~2 slot.container 13 golden_apple 2
replaceitem block ~3 ~-4 ~2 slot.container 14 sea_lantern 7
loot insert ~3 ~-4 ~2 loot "rsf/frozen_ocean"
loot insert ~3 ~-4 ~2 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 prismarine_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 blue_ice []
fill ~0 ~1 ~-4 ~0 ~2 ~4 blue_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 blue_ice []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 cobblestone_wall []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~-5 ~7 ~-4 sea_lantern []
setblock ~-5 ~8 ~-4 sea_lantern []
setblock ~-5 ~7 ~4 sea_lantern []
setblock ~-5 ~8 ~4 sea_lantern []
setblock ~5 ~7 ~-4 sea_lantern []
setblock ~5 ~8 ~-4 sea_lantern []
setblock ~5 ~7 ~4 sea_lantern []
setblock ~5 ~8 ~4 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 prismarine []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~2 ~0 ~5 ~2 ~8 ~5 dark_prismarine []
setblock ~2 ~9 ~5 blue_ice []
setblock ~2 ~10 ~5 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 1 wet_sponge 9
replaceitem block ~-4 ~1 ~2 slot.container 2 copper_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~2 slot.container 4 prismarine_shard 16
replaceitem block ~-4 ~1 ~2 slot.container 5 prismarine_crystals 13
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 10 sea_lantern 11
replaceitem block ~-4 ~1 ~2 slot.container 11 heart_of_the_sea 7
replaceitem block ~-4 ~1 ~2 slot.container 12 blue_ice 12
replaceitem block ~-4 ~1 ~2 slot.container 13 sponge 5
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_salmon 14
loot insert ~-4 ~1 ~2 loot "rsf/frozen_ocean"
summon drowned ~0 ~1 ~-1
summon guardian ~-1 ~1 ~1
