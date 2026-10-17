# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2465/4224 | 主题内编号: b033/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·太阳金顶高耸方尖碑 (beach_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~14 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 sandstone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 sandstone []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 sea_lantern []
setblock ~2 ~-5 ~0 sea_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 8
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 2 string 10
replaceitem block ~0 ~-3 ~-2 slot.container 3 copper_ingot 11
replaceitem block ~0 ~-3 ~-2 slot.container 4 trident 5
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 cooked_cod 12
replaceitem block ~0 ~-3 ~-2 slot.container 10 cooked_salmon 13
replaceitem block ~0 ~-3 ~-2 slot.container 11 iron_ingot 14
replaceitem block ~0 ~-3 ~-2 slot.container 12 gold_ingot 6
replaceitem block ~0 ~-3 ~-2 slot.container 13 emerald 5
replaceitem block ~0 ~-3 ~-2 slot.container 14 tnt 4
loot insert ~0 ~-3 ~-2 loot "rsf/beach"
loot insert ~0 ~-3 ~-2 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 prismarine_bricks []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 sandstone []
fill ~-1 ~5 ~-2 ~1 ~12 ~2 sandstone []
fill ~-1 ~1 ~-2 ~1 ~11 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 sandstone []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 prismarine_bricks []
fill ~0 ~18 ~0 ~0 ~18 ~0 emerald_block []
setblock ~0 ~19 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~5 ~-6 chiseled_sandstone []
setblock ~-5 ~6 ~-6 sea_lantern []
fill ~-5 ~0 ~6 ~-5 ~5 ~6 chiseled_sandstone []
setblock ~-5 ~6 ~6 sea_lantern []
fill ~5 ~0 ~-6 ~5 ~5 ~-6 chiseled_sandstone []
setblock ~5 ~6 ~-6 sea_lantern []
fill ~5 ~0 ~6 ~5 ~5 ~6 chiseled_sandstone []
setblock ~5 ~6 ~6 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-5 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~8 ~-9 sandstone []
setblock ~-2 ~9 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 nautilus_shell 3
replaceitem block ~2 ~1 ~3 slot.container 1 prismarine_shard 8
replaceitem block ~2 ~1 ~3 slot.container 2 bone 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 string 13
replaceitem block ~2 ~1 ~3 slot.container 5 copper_ingot 14
replaceitem block ~2 ~1 ~3 slot.container 9 emerald 5
replaceitem block ~2 ~1 ~3 slot.container 10 tnt 4
replaceitem block ~2 ~1 ~3 slot.container 11 fishing_rod 1
replaceitem block ~2 ~1 ~3 slot.container 12 boat 1
replaceitem block ~2 ~1 ~3 slot.container 13 lantern 9
replaceitem block ~2 ~1 ~3 slot.container 14 heart_of_the_sea 7
loot insert ~2 ~1 ~3 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
