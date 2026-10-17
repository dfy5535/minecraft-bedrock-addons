# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2551/4224 | 主题内编号: b119/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·半地下恒温洞穴苗圃 (beach_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 stone_bricks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 stone_bricks [] replace water
fill ~-5 ~1 ~-7 ~5 ~8 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 sandstone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 cobblestone []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 nautilus_shell 8
replaceitem block ~-2 ~-4 ~4 slot.container 1 prismarine_shard 13
replaceitem block ~-2 ~-4 ~4 slot.container 2 bone 8
replaceitem block ~-2 ~-4 ~4 slot.container 3 gunpowder 9
replaceitem block ~-2 ~-4 ~4 slot.container 4 string 10
replaceitem block ~-2 ~-4 ~4 slot.container 5 copper_ingot 11
replaceitem block ~-2 ~-4 ~4 slot.container 9 lantern 8
replaceitem block ~-2 ~-4 ~4 slot.container 10 heart_of_the_sea 6
replaceitem block ~-2 ~-4 ~4 slot.container 11 cooked_cod 14
replaceitem block ~-2 ~-4 ~4 slot.container 12 cooked_salmon 8
replaceitem block ~-2 ~-4 ~4 slot.container 13 iron_ingot 9
replaceitem block ~-2 ~-4 ~4 slot.container 14 gold_ingot 8
loot insert ~-2 ~-4 ~4 loot "rsf/beach"
loot insert ~-2 ~-4 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 cobblestone []
fill ~0 ~1 ~-6 ~0 ~2 ~6 cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~6 ~-6 ~4 ~6 ~6 cobblestone []
fill ~-3 ~7 ~-5 ~3 ~8 ~5 glass []
fill ~-2 ~7 ~-4 ~2 ~7 ~4 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-8 ~6 ~2 ~8 cobblestone_wall []
fill ~-5 ~1 ~-7 ~5 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~9 ~-10 sandstone []
setblock ~-2 ~10 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 trident 8
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 nautilus_shell 3
replaceitem block ~3 ~1 ~5 slot.container 3 prismarine_shard 8
replaceitem block ~3 ~1 ~5 slot.container 4 bone 11
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~3 ~1 ~5 slot.container 10 gold_ingot 10
replaceitem block ~3 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~3 ~1 ~5 slot.container 12 tnt 8
replaceitem block ~3 ~1 ~5 slot.container 13 fishing_rod 1
replaceitem block ~3 ~1 ~5 slot.container 14 boat 1
loot insert ~3 ~1 ~5 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
