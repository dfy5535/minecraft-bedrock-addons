# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2466/4224 | 主题内编号: b034/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双子对称铭文方尖碑 (beach_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x11 | 地上高度 11格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 sandstone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~13 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 copper_ingot 11
replaceitem block ~3 ~-2 ~2 slot.container 1 trident 5
replaceitem block ~3 ~-2 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~3 ~-2 ~2 slot.container 3 nautilus_shell 8
replaceitem block ~3 ~-2 ~2 slot.container 4 prismarine_shard 13
replaceitem block ~3 ~-2 ~2 slot.container 5 bone 8
replaceitem block ~3 ~-2 ~2 slot.container 9 cooked_salmon 13
replaceitem block ~3 ~-2 ~2 slot.container 10 iron_ingot 14
replaceitem block ~3 ~-2 ~2 slot.container 11 gold_ingot 6
replaceitem block ~3 ~-2 ~2 slot.container 12 emerald 5
replaceitem block ~3 ~-2 ~2 slot.container 13 tnt 4
replaceitem block ~3 ~-2 ~2 slot.container 14 fishing_rod 1
loot insert ~3 ~-2 ~2 loot "rsf/beach"
loot insert ~3 ~-2 ~2 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~12 ~4 sandstone []
fill ~2 ~1 ~-4 ~5 ~12 ~4 sandstone []
fill ~-4 ~1 ~-3 ~-3 ~11 ~3 air []
fill ~3 ~1 ~-3 ~4 ~11 ~3 air []
fill ~-2 ~9 ~-1 ~2 ~11 ~1 oak_planks []
fill ~-3 ~10 ~0 ~3 ~10 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 oak_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 sandstone []
fill ~0 ~17 ~0 ~0 ~17 ~0 sea_lantern []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 oak_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x5x6) ---
fill ~-1 ~0 ~-7 ~1 ~0 ~-5 oak_slab []
fill ~-2 ~0 ~-7 ~-2 ~9 ~-7 sandstone []
setblock ~-2 ~10 ~-7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 prismarine_shard 8
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 3 string 13
replaceitem block ~-4 ~1 ~3 slot.container 4 copper_ingot 14
replaceitem block ~-4 ~1 ~3 slot.container 5 trident 8
replaceitem block ~-4 ~1 ~3 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~3 slot.container 10 lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 11 heart_of_the_sea 5
replaceitem block ~-4 ~1 ~3 slot.container 12 cooked_cod 13
replaceitem block ~-4 ~1 ~3 slot.container 13 cooked_salmon 14
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~3 loot "rsf/beach"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~3 slot.container 1 string 8
replaceitem block ~4 ~1 ~3 slot.container 2 copper_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 3 trident 3
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 5 nautilus_shell 6
replaceitem block ~4 ~1 ~3 slot.container 9 boat 1
replaceitem block ~4 ~1 ~3 slot.container 10 lantern 5
replaceitem block ~4 ~1 ~3 slot.container 11 heart_of_the_sea 3
replaceitem block ~4 ~1 ~3 slot.container 12 cooked_cod 11
replaceitem block ~4 ~1 ~3 slot.container 13 cooked_salmon 12
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 13
loot insert ~4 ~1 ~3 loot "rsf/beach"
loot insert ~4 ~1 ~3 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
