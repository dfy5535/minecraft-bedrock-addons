# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2508/4224 | 主题内编号: b076/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·阶梯高台图腾战阵 (beach_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks [] replace water
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 oak_planks []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 gold_block []
setblock ~-3 ~-4 ~-4 campfire []
setblock ~3 ~-4 ~4 campfire []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 gunpowder 9
replaceitem block ~0 ~-2 ~4 slot.container 1 string 10
replaceitem block ~0 ~-2 ~4 slot.container 2 copper_ingot 11
replaceitem block ~0 ~-2 ~4 slot.container 3 trident 5
replaceitem block ~0 ~-2 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-2 ~4 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-2 ~4 slot.container 9 tnt 8
replaceitem block ~0 ~-2 ~4 slot.container 10 fishing_rod 1
replaceitem block ~0 ~-2 ~4 slot.container 11 boat 1
replaceitem block ~0 ~-2 ~4 slot.container 12 lantern 6
replaceitem block ~0 ~-2 ~4 slot.container 13 heart_of_the_sea 4
replaceitem block ~0 ~-2 ~4 slot.container 14 cooked_cod 12
loot insert ~0 ~-2 ~4 loot "rsf/beach"
loot insert ~0 ~-2 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 oak_planks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 spruce_planks []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 prismarine_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 spruce_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 oak_planks []
fill ~0 ~15 ~0 ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_oak_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_oak_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_oak_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_oak_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~6 ~-9 sandstone []
setblock ~-2 ~7 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 13
replaceitem block ~-4 ~1 ~5 slot.container 2 copper_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 nautilus_shell 3
replaceitem block ~-4 ~1 ~5 slot.container 9 gold_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 7
replaceitem block ~-4 ~1 ~5 slot.container 11 tnt 6
replaceitem block ~-4 ~1 ~5 slot.container 12 fishing_rod 1
replaceitem block ~-4 ~1 ~5 slot.container 13 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 4
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 copper_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 1 trident 3
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 nautilus_shell 6
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_shard 11
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 11 tnt 4
replaceitem block ~4 ~1 ~5 slot.container 12 fishing_rod 1
replaceitem block ~4 ~1 ~5 slot.container 13 boat 1
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 9
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
