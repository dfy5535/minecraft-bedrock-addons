# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2526/4224 | 主题内编号: b094/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·圆形圣泉祈祷亭 (beach_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 oak_planks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~-2 ~-2 ~3 slot.container 1 nautilus_shell 8
replaceitem block ~-2 ~-2 ~3 slot.container 2 prismarine_shard 13
replaceitem block ~-2 ~-2 ~3 slot.container 3 bone 8
replaceitem block ~-2 ~-2 ~3 slot.container 4 gunpowder 9
replaceitem block ~-2 ~-2 ~3 slot.container 5 string 10
replaceitem block ~-2 ~-2 ~3 slot.container 9 gold_ingot 6
replaceitem block ~-2 ~-2 ~3 slot.container 10 emerald 5
replaceitem block ~-2 ~-2 ~3 slot.container 11 tnt 4
replaceitem block ~-2 ~-2 ~3 slot.container 12 fishing_rod 1
replaceitem block ~-2 ~-2 ~3 slot.container 13 boat 1
replaceitem block ~-2 ~-2 ~3 slot.container 14 lantern 9
loot insert ~-2 ~-2 ~3 loot "rsf/beach"
loot insert ~-2 ~-2 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 oak_planks []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 oak_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 oak_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 oak_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 oak_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 oak_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 oak_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 oak_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 oak_log []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 oak_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 oak_log []
fill ~-4 ~1 ~-1 ~-4 ~7 ~-1 oak_log []
fill ~4 ~1 ~-1 ~4 ~7 ~-1 oak_log []
fill ~-4 ~1 ~1 ~-4 ~7 ~1 oak_log []
fill ~4 ~1 ~1 ~4 ~7 ~1 oak_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 oak_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 oak_planks []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 prismarine []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 prismarine []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 oak_log []
setblock ~-6 ~4 ~0 prismarine []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 oak_log []
setblock ~6 ~4 ~0 prismarine []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~9 ~-8 sandstone []
setblock ~-2 ~10 ~-8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 copper_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 nautilus_shell 3
replaceitem block ~-3 ~1 ~4 slot.container 4 prismarine_shard 8
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 4
replaceitem block ~-3 ~1 ~4 slot.container 11 heart_of_the_sea 2
replaceitem block ~-3 ~1 ~4 slot.container 12 cooked_cod 10
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~-3 ~1 ~4 loot "rsf/beach"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 nautilus_shell 6
replaceitem block ~3 ~1 ~4 slot.container 2 prismarine_shard 11
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 8
replaceitem block ~3 ~1 ~4 slot.container 9 boat 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~3 ~1 ~4 slot.container 11 heart_of_the_sea 7
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_cod 8
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_salmon 9
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~3 ~1 ~4 loot "rsf/beach"
loot insert ~3 ~1 ~4 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
