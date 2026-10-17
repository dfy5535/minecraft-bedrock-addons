# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2437/4224 | 主题内编号: b005/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·下沉圣泉秘宝祭坛 (beach_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 sandstone []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 trident 5
replaceitem block ~-2 ~-4 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 2 nautilus_shell 8
replaceitem block ~-2 ~-4 ~3 slot.container 3 prismarine_shard 13
replaceitem block ~-2 ~-4 ~3 slot.container 4 bone 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 9
replaceitem block ~-2 ~-4 ~3 slot.container 9 fishing_rod 1
replaceitem block ~-2 ~-4 ~3 slot.container 10 boat 1
replaceitem block ~-2 ~-4 ~3 slot.container 11 lantern 8
replaceitem block ~-2 ~-4 ~3 slot.container 12 heart_of_the_sea 6
replaceitem block ~-2 ~-4 ~3 slot.container 13 cooked_cod 14
replaceitem block ~-2 ~-4 ~3 slot.container 14 cooked_salmon 8
loot insert ~-2 ~-4 ~3 loot "rsf/beach"
loot insert ~-2 ~-4 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 prismarine_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 sandstone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 sandstone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~6 ~-5 ~-4 ~8 ~-5 chiseled_sandstone []
setblock ~-4 ~9 ~-5 sea_lantern []
fill ~-4 ~6 ~5 ~-4 ~8 ~5 chiseled_sandstone []
setblock ~-4 ~9 ~5 sea_lantern []
fill ~4 ~6 ~-5 ~4 ~8 ~-5 chiseled_sandstone []
setblock ~4 ~9 ~-5 sea_lantern []
fill ~4 ~6 ~5 ~4 ~8 ~5 chiseled_sandstone []
setblock ~4 ~9 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone_wall []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~5 ~-9 sandstone []
setblock ~-2 ~6 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 13
replaceitem block ~3 ~1 ~4 slot.container 1 copper_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 2 trident 8
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 nautilus_shell 3
replaceitem block ~3 ~1 ~4 slot.container 5 prismarine_shard 8
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_cod 9
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_salmon 10
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 14 tnt 8
loot insert ~3 ~1 ~4 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
