# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2480/4224 | 主题内编号: b048/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·阶梯王座巅峰试炼台 (beach_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 oak_planks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 oak_planks [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 prismarine_bricks []
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 spruce_planks []
setblock ~0 ~-5 ~0 emerald_block []
fill ~0 ~-4 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-5 slot.container 0 prismarine_shard 13
replaceitem block ~0 ~-2 ~-5 slot.container 1 bone 8
replaceitem block ~0 ~-2 ~-5 slot.container 2 gunpowder 9
replaceitem block ~0 ~-2 ~-5 slot.container 3 string 10
replaceitem block ~0 ~-2 ~-5 slot.container 4 copper_ingot 11
replaceitem block ~0 ~-2 ~-5 slot.container 5 trident 5
replaceitem block ~0 ~-2 ~-5 slot.container 9 tnt 7
replaceitem block ~0 ~-2 ~-5 slot.container 10 fishing_rod 1
replaceitem block ~0 ~-2 ~-5 slot.container 11 boat 1
replaceitem block ~0 ~-2 ~-5 slot.container 12 lantern 5
replaceitem block ~0 ~-2 ~-5 slot.container 13 heart_of_the_sea 3
replaceitem block ~0 ~-2 ~-5 slot.container 14 cooked_cod 11
loot insert ~0 ~-2 ~-5 loot "rsf/beach"
loot insert ~0 ~-2 ~-5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 oak_planks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 spruce_planks []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 prismarine_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 stripped_oak_log []
setblock ~-6 ~11 ~-7 campfire []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 stripped_oak_log []
setblock ~-6 ~11 ~7 campfire []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 stripped_oak_log []
setblock ~6 ~11 ~-7 campfire []
fill ~6 ~8 ~7 ~6 ~10 ~7 stripped_oak_log []
setblock ~6 ~11 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 stripped_oak_log []
setblock ~0 ~4 ~-9 emerald_block []
setblock ~0 ~5 ~-9 campfire []
fill ~0 ~0 ~9 ~0 ~3 ~9 stripped_oak_log []
setblock ~0 ~4 ~9 emerald_block []
setblock ~0 ~5 ~9 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_oak_log []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_oak_log []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x10x5) ---
fill ~-1 ~0 ~-12 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-12 ~-2 ~8 ~-12 sandstone []
setblock ~-2 ~9 ~-12 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 nautilus_shell 3
replaceitem block ~-5 ~1 ~6 slot.container 2 prismarine_shard 8
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 string 13
replaceitem block ~-5 ~1 ~6 slot.container 9 heart_of_the_sea 3
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_cod 11
replaceitem block ~-5 ~1 ~6 slot.container 11 cooked_salmon 12
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 13
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 12
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 4
loot insert ~-5 ~1 ~6 loot "rsf/beach"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 prismarine_shard 11
replaceitem block ~5 ~1 ~6 slot.container 1 bone 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 string 8
replaceitem block ~5 ~1 ~6 slot.container 4 copper_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 5 trident 3
replaceitem block ~5 ~1 ~6 slot.container 9 heart_of_the_sea 1
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_cod 9
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_salmon 10
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 9
loot insert ~5 ~1 ~6 loot "rsf/beach"
loot insert ~5 ~1 ~6 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-2 ~0
