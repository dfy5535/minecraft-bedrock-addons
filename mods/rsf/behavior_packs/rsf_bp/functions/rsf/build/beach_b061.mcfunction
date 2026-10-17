# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2493/4224 | 主题内编号: b061/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双子封土古墓地宫 (beach_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 prismarine_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 sandstone []
setblock ~0 ~-7 ~0 sea_lantern []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 sea_lantern []
setblock ~2 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 trident 5
replaceitem block ~0 ~-4 ~-3 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 nautilus_shell 8
replaceitem block ~0 ~-4 ~-3 slot.container 3 prismarine_shard 13
replaceitem block ~0 ~-4 ~-3 slot.container 4 bone 8
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~-3 slot.container 9 emerald 8
replaceitem block ~0 ~-4 ~-3 slot.container 10 tnt 7
replaceitem block ~0 ~-4 ~-3 slot.container 11 fishing_rod 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 boat 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 lantern 5
replaceitem block ~0 ~-4 ~-3 slot.container 14 heart_of_the_sea 3
loot insert ~0 ~-4 ~-3 loot "rsf/beach"
loot insert ~0 ~-4 ~-3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 prismarine_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 prismarine_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 sandstone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 sandstone []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 sandstone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 emerald_block []
setblock ~0 ~11 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 sandstone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x6x3) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~6 ~-8 sandstone []
setblock ~-2 ~7 ~-8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 string 13
replaceitem block ~5 ~1 ~4 slot.container 1 copper_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 2 trident 8
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 4 nautilus_shell 3
replaceitem block ~5 ~1 ~4 slot.container 5 prismarine_shard 8
replaceitem block ~5 ~1 ~4 slot.container 9 lantern 5
replaceitem block ~5 ~1 ~4 slot.container 10 heart_of_the_sea 3
replaceitem block ~5 ~1 ~4 slot.container 11 cooked_cod 11
replaceitem block ~5 ~1 ~4 slot.container 12 cooked_salmon 12
replaceitem block ~5 ~1 ~4 slot.container 13 iron_ingot 13
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 12
loot insert ~5 ~1 ~4 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
