# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2523/4224 | 主题内编号: b091/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·跨水拱桥水神小祠 (beach_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 string 10
replaceitem block ~-3 ~-3 ~2 slot.container 1 copper_ingot 11
replaceitem block ~-3 ~-3 ~2 slot.container 2 trident 5
replaceitem block ~-3 ~-3 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 4 nautilus_shell 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 prismarine_shard 13
replaceitem block ~-3 ~-3 ~2 slot.container 9 emerald 8
replaceitem block ~-3 ~-3 ~2 slot.container 10 tnt 7
replaceitem block ~-3 ~-3 ~2 slot.container 11 fishing_rod 1
replaceitem block ~-3 ~-3 ~2 slot.container 12 boat 1
replaceitem block ~-3 ~-3 ~2 slot.container 13 lantern 5
replaceitem block ~-3 ~-3 ~2 slot.container 14 heart_of_the_sea 3
loot insert ~-3 ~-3 ~2 loot "rsf/beach"
loot insert ~-3 ~-3 ~2 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_brick_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 oak_planks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 oak_slab []
setblock ~0 ~12 ~0 prismarine []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 cobblestone []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~-1 ~0 ~-7 ~1 ~0 ~-5 oak_slab []
fill ~-2 ~0 ~-7 ~-2 ~6 ~-7 sandstone []
setblock ~-2 ~7 ~-7 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 11
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 13
replaceitem block ~4 ~1 ~3 slot.container 3 copper_ingot 14
replaceitem block ~4 ~1 ~3 slot.container 4 trident 8
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~4 ~1 ~3 slot.container 10 heart_of_the_sea 5
replaceitem block ~4 ~1 ~3 slot.container 11 cooked_cod 13
replaceitem block ~4 ~1 ~3 slot.container 12 cooked_salmon 14
replaceitem block ~4 ~1 ~3 slot.container 13 iron_ingot 8
replaceitem block ~4 ~1 ~3 slot.container 14 gold_ingot 7
loot insert ~4 ~1 ~3 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
