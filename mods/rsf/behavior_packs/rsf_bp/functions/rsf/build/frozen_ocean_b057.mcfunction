# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2873/4224 | 主题内编号: b057/128
# 地形主题 #23: 冷水海洋与冰冻深海 (frozen_ocean) —— 带暗海晶蓝冰密封舱与深海远古祭坛
# 建筑名称: 冻洋深渊系·中央石棺帝王地下陵寝 (frozen_ocean_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: cold_ocean, deep_cold_ocean, frozen_ocean, deep_frozen_ocean, legacy_frozen_ocean
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 stone_bricks [] replace water
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 stone_bricks [] replace air
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 prismarine []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 packed_ice []
setblock ~0 ~0 ~0 sponge []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 prismarine []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 packed_ice []
setblock ~0 ~-6 ~0 diamond_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 sea_lantern []
setblock ~2 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-3 ~-4 slot.container 2 wet_sponge 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 copper_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 trident 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 prismarine_shard 21
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_ingot 14
replaceitem block ~0 ~-3 ~-4 slot.container 10 emerald 4
replaceitem block ~0 ~-3 ~-4 slot.container 11 diamond 3
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 13 sea_lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 14 heart_of_the_sea 5
loot insert ~0 ~-3 ~-4 loot "rsf/frozen_ocean"
loot insert ~0 ~-3 ~-4 loot "chests/shipwrecktreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 stone_bricks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 packed_ice []
fill ~0 ~1 ~-6 ~0 ~2 ~6 packed_ice []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 packed_ice []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 prismarine []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 sponge []
setblock ~0 ~10 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 sea_lantern []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 sea_lantern []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 sea_lantern []
fill ~8 ~0 ~2 ~8 ~6 ~2 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_ocean 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~-3 ~0 ~9 ~-3 ~5 ~9 dark_prismarine []
setblock ~-3 ~6 ~9 blue_ice []
setblock ~-3 ~7 ~9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 sea_lantern []
setblock ~0 ~1 ~0 sponge []
setblock ~0 ~2 ~0 sea_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 prismarine_crystals 13
replaceitem block ~5 ~1 ~4 slot.container 1 nautilus_shell 5
replaceitem block ~5 ~1 ~4 slot.container 2 bone 13
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 4 wet_sponge 9
replaceitem block ~5 ~1 ~4 slot.container 5 copper_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 9 sea_lantern 9
replaceitem block ~5 ~1 ~4 slot.container 10 heart_of_the_sea 5
replaceitem block ~5 ~1 ~4 slot.container 11 blue_ice 17
replaceitem block ~5 ~1 ~4 slot.container 12 sponge 10
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_salmon 12
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 9
loot insert ~5 ~1 ~4 loot "rsf/frozen_ocean"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~5 slot.container 1 rotten_flesh 19
replaceitem block ~-5 ~1 ~5 slot.container 2 wet_sponge 4
replaceitem block ~-5 ~1 ~5 slot.container 3 copper_ingot 9
replaceitem block ~-5 ~1 ~5 slot.container 4 trident 3
replaceitem block ~-5 ~1 ~5 slot.container 5 prismarine_shard 19
replaceitem block ~-5 ~1 ~5 slot.container 9 sea_lantern 7
replaceitem block ~-5 ~1 ~5 slot.container 10 heart_of_the_sea 3
replaceitem block ~-5 ~1 ~5 slot.container 11 blue_ice 15
replaceitem block ~-5 ~1 ~5 slot.container 12 sponge 8
replaceitem block ~-5 ~1 ~5 slot.container 13 cooked_salmon 17
replaceitem block ~-5 ~1 ~5 slot.container 14 gold_ingot 14
loot insert ~-5 ~1 ~5 loot "rsf/frozen_ocean"
loot insert ~-5 ~1 ~5 loot "chests/shipwrecktreasure"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon guardian ~1 ~1 ~1
summon stray ~0 ~-3 ~0
