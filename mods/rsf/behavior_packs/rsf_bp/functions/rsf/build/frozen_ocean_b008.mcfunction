# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2824/4224 | 主题内编号: b008/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·凯旋双拱圣物祭坛 (frozen_ocean_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 prismarine_bricks [] replace water
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 prismarine_bricks [] replace air
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 dark_prismarine []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 prismarine_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 blue_ice []
setblock ~0 ~-5 ~0 sea_lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 trident 5
replaceitem block ~4 ~-2 ~0 slot.container 1 prismarine_shard 21
replaceitem block ~4 ~-2 ~0 slot.container 2 prismarine_crystals 18
replaceitem block ~4 ~-2 ~0 slot.container 3 nautilus_shell 10
replaceitem block ~4 ~-2 ~0 slot.container 4 bone 10
replaceitem block ~4 ~-2 ~0 slot.container 5 rotten_flesh 13
replaceitem block ~4 ~-2 ~0 slot.container 9 iron_ingot 8
replaceitem block ~4 ~-2 ~0 slot.container 10 emerald 5
replaceitem block ~4 ~-2 ~0 slot.container 11 diamond 4
replaceitem block ~4 ~-2 ~0 slot.container 12 golden_apple 5
replaceitem block ~4 ~-2 ~0 slot.container 13 sea_lantern 10
replaceitem block ~4 ~-2 ~0 slot.container 14 heart_of_the_sea 6
loot insert ~4 ~-2 ~0 loot "rsf/frozen_ocean"
loot insert ~4 ~-2 ~0 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 prismarine_bricks []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 blue_ice []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 cobblestone_wall []
fill ~-5 ~9 ~-3 ~5 ~9 ~3 air []
setblock ~-6 ~9 ~-4 sea_lantern []
setblock ~-6 ~10 ~-4 sea_lantern []
setblock ~-6 ~9 ~4 sea_lantern []
setblock ~-6 ~10 ~4 sea_lantern []
setblock ~6 ~9 ~-4 sea_lantern []
setblock ~6 ~10 ~-4 sea_lantern []
setblock ~6 ~9 ~4 sea_lantern []
setblock ~6 ~10 ~4 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 blue_ice []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 sea_lantern []
setblock ~2 ~4 ~-7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~2 ~0 ~6 ~2 ~6 ~6 dark_prismarine []
setblock ~2 ~7 ~6 blue_ice []
setblock ~2 ~8 ~6 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 prismarine_shard 16
replaceitem block ~-5 ~1 ~2 slot.container 1 prismarine_crystals 13
replaceitem block ~-5 ~1 ~2 slot.container 2 nautilus_shell 5
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~2 slot.container 5 wet_sponge 9
replaceitem block ~-5 ~1 ~2 slot.container 9 sponge 7
replaceitem block ~-5 ~1 ~2 slot.container 10 cooked_salmon 16
replaceitem block ~-5 ~1 ~2 slot.container 11 gold_ingot 13
replaceitem block ~-5 ~1 ~2 slot.container 12 iron_ingot 14
replaceitem block ~-5 ~1 ~2 slot.container 13 emerald 4
replaceitem block ~-5 ~1 ~2 slot.container 14 diamond 3
loot insert ~-5 ~1 ~2 loot "rsf/frozen_ocean"
summon elder_guardian ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
