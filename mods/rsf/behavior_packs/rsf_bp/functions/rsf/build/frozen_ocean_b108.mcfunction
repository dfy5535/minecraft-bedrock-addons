# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2924/4224 | 主题内编号: b108/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·十字四相元素秘法殿 (frozen_ocean_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace water
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace air
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 prismarine_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 dark_prismarine []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 prismarine []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~-3 ~0 slot.container 1 wet_sponge 6
replaceitem block ~4 ~-3 ~0 slot.container 2 copper_ingot 11
replaceitem block ~4 ~-3 ~0 slot.container 3 trident 5
replaceitem block ~4 ~-3 ~0 slot.container 4 prismarine_shard 21
replaceitem block ~4 ~-3 ~0 slot.container 5 prismarine_crystals 18
replaceitem block ~4 ~-3 ~0 slot.container 9 golden_apple 5
replaceitem block ~4 ~-3 ~0 slot.container 10 sea_lantern 10
replaceitem block ~4 ~-3 ~0 slot.container 11 heart_of_the_sea 6
replaceitem block ~4 ~-3 ~0 slot.container 12 blue_ice 18
replaceitem block ~4 ~-3 ~0 slot.container 13 sponge 4
replaceitem block ~4 ~-3 ~0 slot.container 14 cooked_salmon 13
loot insert ~4 ~-3 ~0 loot "rsf/frozen_ocean"
loot insert ~4 ~-3 ~0 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 prismarine_bricks []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 prismarine_bricks []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 blue_ice []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 gold_block []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~9 ~-2 sea_lantern []
fill ~-8 ~0 ~2 ~-8 ~9 ~2 sea_lantern []
fill ~8 ~0 ~-2 ~8 ~9 ~-2 sea_lantern []
fill ~8 ~0 ~2 ~8 ~9 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~0 ~0 ~8 ~0 ~6 ~8 dark_prismarine []
setblock ~0 ~7 ~8 blue_ice []
setblock ~0 ~8 ~8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 sea_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 1 wet_sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 2 copper_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~3 slot.container 4 prismarine_shard 16
replaceitem block ~-5 ~1 ~3 slot.container 5 prismarine_crystals 13
replaceitem block ~-5 ~1 ~3 slot.container 9 sponge 9
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_salmon 18
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 8
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 13 emerald 6
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 5
loot insert ~-5 ~1 ~3 loot "rsf/frozen_ocean"
summon stray ~0 ~1 ~-1
summon polar_bear ~-1 ~1 ~1
summon elder_guardian ~1 ~1 ~1
summon squid ~0 ~-3 ~0
