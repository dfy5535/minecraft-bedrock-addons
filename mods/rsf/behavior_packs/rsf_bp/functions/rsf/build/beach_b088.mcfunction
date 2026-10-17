# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2520/4224 | 主题内编号: b088/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·矿车铁轨转运仓库 (beach_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 oak_planks [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 oak_planks [] replace water
fill ~-5 ~1 ~-8 ~5 ~9 ~8 air []
fill ~-5 ~0 ~-8 ~5 ~0 ~8 oak_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 sandstone []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 prismarine_bricks []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 gunpowder 9
replaceitem block ~2 ~-2 ~5 slot.container 1 string 10
replaceitem block ~2 ~-2 ~5 slot.container 2 copper_ingot 11
replaceitem block ~2 ~-2 ~5 slot.container 3 trident 5
replaceitem block ~2 ~-2 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-2 ~5 slot.container 5 nautilus_shell 8
replaceitem block ~2 ~-2 ~5 slot.container 9 gold_ingot 9
replaceitem block ~2 ~-2 ~5 slot.container 10 emerald 8
replaceitem block ~2 ~-2 ~5 slot.container 11 tnt 7
replaceitem block ~2 ~-2 ~5 slot.container 12 fishing_rod 1
replaceitem block ~2 ~-2 ~5 slot.container 13 boat 1
replaceitem block ~2 ~-2 ~5 slot.container 14 lantern 5
loot insert ~2 ~-2 ~5 loot "rsf/beach"
loot insert ~2 ~-2 ~5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~7 ~7 oak_planks []
fill ~-3 ~1 ~-6 ~3 ~6 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 stripped_oak_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 stripped_oak_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 stripped_oak_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 stripped_oak_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 oak_fence []
setblock ~4 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-8 ~-5 ~8 ~8 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-8 ~5 ~8 ~8 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-7 ~-4 ~9 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-7 ~4 ~9 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-7 ~3 ~9 ~7 oak_slab []
fill ~0 ~10 ~-8 ~0 ~10 ~8 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 spruce_planks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 campfire []
setblock ~2 ~4 ~-10 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~8 ~-10 sandstone []
setblock ~-2 ~9 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~6 slot.container 1 nautilus_shell 3
replaceitem block ~-3 ~1 ~6 slot.container 2 prismarine_shard 8
replaceitem block ~-3 ~1 ~6 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~6 slot.container 5 string 13
replaceitem block ~-3 ~1 ~6 slot.container 9 heart_of_the_sea 1
replaceitem block ~-3 ~1 ~6 slot.container 10 cooked_cod 9
replaceitem block ~-3 ~1 ~6 slot.container 11 cooked_salmon 10
replaceitem block ~-3 ~1 ~6 slot.container 12 iron_ingot 11
replaceitem block ~-3 ~1 ~6 slot.container 13 gold_ingot 10
replaceitem block ~-3 ~1 ~6 slot.container 14 emerald 9
loot insert ~-3 ~1 ~6 loot "rsf/beach"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 prismarine_shard 11
replaceitem block ~3 ~1 ~6 slot.container 1 bone 14
replaceitem block ~3 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~6 slot.container 3 string 8
replaceitem block ~3 ~1 ~6 slot.container 4 copper_ingot 9
replaceitem block ~3 ~1 ~6 slot.container 5 trident 3
replaceitem block ~3 ~1 ~6 slot.container 9 heart_of_the_sea 6
replaceitem block ~3 ~1 ~6 slot.container 10 cooked_cod 14
replaceitem block ~3 ~1 ~6 slot.container 11 cooked_salmon 8
replaceitem block ~3 ~1 ~6 slot.container 12 iron_ingot 9
replaceitem block ~3 ~1 ~6 slot.container 13 gold_ingot 8
replaceitem block ~3 ~1 ~6 slot.container 14 emerald 7
loot insert ~3 ~1 ~6 loot "rsf/beach"
loot insert ~3 ~1 ~6 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
