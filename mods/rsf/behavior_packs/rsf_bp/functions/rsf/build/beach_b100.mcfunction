# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2532/4224 | 主题内编号: b100/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·半地下暗堡火力点 (beach_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 oak_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 oak_planks [] replace water
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 oak_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 1 nautilus_shell 8
replaceitem block ~2 ~-3 ~3 slot.container 2 prismarine_shard 13
replaceitem block ~2 ~-3 ~3 slot.container 3 bone 8
replaceitem block ~2 ~-3 ~3 slot.container 4 gunpowder 9
replaceitem block ~2 ~-3 ~3 slot.container 5 string 10
replaceitem block ~2 ~-3 ~3 slot.container 9 cooked_salmon 12
replaceitem block ~2 ~-3 ~3 slot.container 10 iron_ingot 13
replaceitem block ~2 ~-3 ~3 slot.container 11 gold_ingot 12
replaceitem block ~2 ~-3 ~3 slot.container 12 emerald 4
replaceitem block ~2 ~-3 ~3 slot.container 13 tnt 3
replaceitem block ~2 ~-3 ~3 slot.container 14 fishing_rod 1
loot insert ~2 ~-3 ~3 loot "rsf/beach"
loot insert ~2 ~-3 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 oak_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 spruce_planks []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 oak_fence []
fill ~-3 ~7 ~-4 ~3 ~7 ~4 air []
setblock ~-4 ~7 ~-5 stripped_oak_log []
setblock ~-4 ~8 ~-5 campfire []
setblock ~-4 ~7 ~5 stripped_oak_log []
setblock ~-4 ~8 ~5 campfire []
setblock ~4 ~7 ~-5 stripped_oak_log []
setblock ~4 ~8 ~-5 campfire []
setblock ~4 ~7 ~5 stripped_oak_log []
setblock ~4 ~8 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 oak_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~5 ~-8 sandstone []
setblock ~-2 ~6 ~-8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 string 13
replaceitem block ~-3 ~1 ~4 slot.container 2 copper_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 nautilus_shell 3
replaceitem block ~-3 ~1 ~4 slot.container 9 tnt 7
replaceitem block ~-3 ~1 ~4 slot.container 10 fishing_rod 1
replaceitem block ~-3 ~1 ~4 slot.container 11 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~-3 ~1 ~4 slot.container 13 heart_of_the_sea 3
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_cod 11
loot insert ~-3 ~1 ~4 loot "rsf/beach"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 copper_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 1 trident 3
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 nautilus_shell 6
replaceitem block ~3 ~1 ~4 slot.container 4 prismarine_shard 11
replaceitem block ~3 ~1 ~4 slot.container 5 bone 14
replaceitem block ~3 ~1 ~4 slot.container 9 tnt 5
replaceitem block ~3 ~1 ~4 slot.container 10 fishing_rod 1
replaceitem block ~3 ~1 ~4 slot.container 11 boat 1
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~3 ~1 ~4 slot.container 13 heart_of_the_sea 1
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_cod 9
loot insert ~3 ~1 ~4 loot "rsf/beach"
loot insert ~3 ~1 ~4 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
