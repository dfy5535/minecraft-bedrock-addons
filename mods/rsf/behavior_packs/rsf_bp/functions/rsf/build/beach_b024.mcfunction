# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2456/4224 | 主题内编号: b024/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·半地下掩体储藏室 (beach_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_beacon_base]
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
replaceitem block ~2 ~-3 ~3 slot.container 0 gunpowder 9
replaceitem block ~2 ~-3 ~3 slot.container 1 string 10
replaceitem block ~2 ~-3 ~3 slot.container 2 copper_ingot 11
replaceitem block ~2 ~-3 ~3 slot.container 3 trident 5
replaceitem block ~2 ~-3 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 5 nautilus_shell 8
replaceitem block ~2 ~-3 ~3 slot.container 9 gold_ingot 11
replaceitem block ~2 ~-3 ~3 slot.container 10 emerald 10
replaceitem block ~2 ~-3 ~3 slot.container 11 tnt 2
replaceitem block ~2 ~-3 ~3 slot.container 12 fishing_rod 1
replaceitem block ~2 ~-3 ~3 slot.container 13 boat 1
replaceitem block ~2 ~-3 ~3 slot.container 14 lantern 7
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

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~9 ~-10 sandstone []
setblock ~-2 ~10 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 prismarine []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 1 nautilus_shell 3
replaceitem block ~-3 ~1 ~4 slot.container 2 prismarine_shard 8
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 5 string 13
replaceitem block ~-3 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 4
replaceitem block ~-3 ~1 ~4 slot.container 11 heart_of_the_sea 2
replaceitem block ~-3 ~1 ~4 slot.container 12 cooked_cod 10
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~-3 ~1 ~4 loot "rsf/beach"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 prismarine_shard 11
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 3 string 8
replaceitem block ~3 ~1 ~4 slot.container 4 copper_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 5 trident 3
replaceitem block ~3 ~1 ~4 slot.container 9 boat 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~3 ~1 ~4 slot.container 11 heart_of_the_sea 7
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_cod 8
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_salmon 9
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~3 ~1 ~4 loot "rsf/beach"
loot insert ~3 ~1 ~4 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-3 ~0
