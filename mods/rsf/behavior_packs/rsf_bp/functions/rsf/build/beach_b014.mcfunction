# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2446/4224 | 主题内编号: b014/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·暗渠蓄水池秘境地牢 (beach_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 sandstone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 oak_planks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~-3 ~-4 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~-3 ~-4 ~4 slot.container 2 prismarine_shard 13
replaceitem block ~-3 ~-4 ~4 slot.container 3 bone 8
replaceitem block ~-3 ~-4 ~4 slot.container 4 gunpowder 9
replaceitem block ~-3 ~-4 ~4 slot.container 5 string 10
replaceitem block ~-3 ~-4 ~4 slot.container 9 gold_ingot 10
replaceitem block ~-3 ~-4 ~4 slot.container 10 emerald 9
replaceitem block ~-3 ~-4 ~4 slot.container 11 tnt 8
replaceitem block ~-3 ~-4 ~4 slot.container 12 fishing_rod 1
replaceitem block ~-3 ~-4 ~4 slot.container 13 boat 1
replaceitem block ~-3 ~-4 ~4 slot.container 14 lantern 6
loot insert ~-3 ~-4 ~4 loot "rsf/beach"
loot insert ~-3 ~-4 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 sandstone []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 oak_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 oak_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~9 ~-10 sandstone []
setblock ~-2 ~10 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 copper_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 1 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 nautilus_shell 3
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 8
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 11 heart_of_the_sea 6
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_cod 14
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_salmon 8
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 nautilus_shell 6
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 11
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 8
replaceitem block ~4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 11 heart_of_the_sea 4
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_cod 12
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_salmon 13
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 14
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
