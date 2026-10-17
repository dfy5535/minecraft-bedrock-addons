# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2436/4224 | 主题内编号: b004/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双子火盆高台神坛 (beach_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 oak_planks []
fill ~2 ~1 ~-5 ~6 ~9 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 spruce_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 stripped_oak_log []
setblock ~-6 ~11 ~-5 campfire []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 stripped_oak_log []
setblock ~-6 ~11 ~5 campfire []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 stripped_oak_log []
setblock ~6 ~11 ~-5 campfire []
fill ~6 ~8 ~5 ~6 ~10 ~5 stripped_oak_log []
setblock ~6 ~11 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x6x6) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~9 ~-8 sandstone []
setblock ~-2 ~10 ~-8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 copper_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 3
replaceitem block ~-5 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 10 lantern 5
replaceitem block ~-5 ~1 ~4 slot.container 11 heart_of_the_sea 3
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_cod 11
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_salmon 12
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 13
loot insert ~-5 ~1 ~4 loot "rsf/beach"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 copper_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 1 trident 3
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 nautilus_shell 6
replaceitem block ~5 ~1 ~4 slot.container 4 prismarine_shard 11
replaceitem block ~5 ~1 ~4 slot.container 5 bone 14
replaceitem block ~5 ~1 ~4 slot.container 9 boat 1
replaceitem block ~5 ~1 ~4 slot.container 10 lantern 10
replaceitem block ~5 ~1 ~4 slot.container 11 heart_of_the_sea 1
replaceitem block ~5 ~1 ~4 slot.container 12 cooked_cod 9
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_salmon 10
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~5 ~1 ~4 loot "rsf/beach"
loot insert ~5 ~1 ~4 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
