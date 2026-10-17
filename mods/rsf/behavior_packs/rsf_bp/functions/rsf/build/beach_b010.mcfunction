# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2442/4224 | 主题内编号: b010/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·十字交叉深层地牢 (beach_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 sandstone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 sandstone [] replace water
fill ~-7 ~1 ~-8 ~7 ~8 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 sandstone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 1 nautilus_shell 8
replaceitem block ~0 ~-4 ~5 slot.container 2 prismarine_shard 13
replaceitem block ~0 ~-4 ~5 slot.container 3 bone 8
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 5 string 10
replaceitem block ~0 ~-4 ~5 slot.container 9 boat 1
replaceitem block ~0 ~-4 ~5 slot.container 10 lantern 10
replaceitem block ~0 ~-4 ~5 slot.container 11 heart_of_the_sea 1
replaceitem block ~0 ~-4 ~5 slot.container 12 cooked_cod 9
replaceitem block ~0 ~-4 ~5 slot.container 13 cooked_salmon 10
replaceitem block ~0 ~-4 ~5 slot.container 14 iron_ingot 11
loot insert ~0 ~-4 ~5 loot "rsf/beach"
loot insert ~0 ~-4 ~5 loot "chests/buriedtreasure"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~-5 slot.container 1 nautilus_shell 6
replaceitem block ~0 ~-4 ~-5 slot.container 2 prismarine_shard 11
replaceitem block ~0 ~-4 ~-5 slot.container 3 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 15
replaceitem block ~0 ~-4 ~-5 slot.container 5 string 8
replaceitem block ~0 ~-4 ~-5 slot.container 9 boat 1
replaceitem block ~0 ~-4 ~-5 slot.container 10 lantern 9
replaceitem block ~0 ~-4 ~-5 slot.container 11 heart_of_the_sea 7
replaceitem block ~0 ~-4 ~-5 slot.container 12 cooked_cod 8
replaceitem block ~0 ~-4 ~-5 slot.container 13 cooked_salmon 9
replaceitem block ~0 ~-4 ~-5 slot.container 14 iron_ingot 10
loot insert ~0 ~-4 ~-5 loot "rsf/beach"
loot insert ~0 ~-4 ~-5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~6 ~7 sandstone []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 sandstone []
fill ~-1 ~1 ~-6 ~1 ~5 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 oak_fence []
setblock ~6 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 oak_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 oak_log []
setblock ~-8 ~6 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 oak_log []
setblock ~-8 ~6 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 oak_log []
setblock ~8 ~6 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 oak_log []
setblock ~8 ~6 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~5 ~-10 sandstone []
setblock ~-2 ~6 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 fletching_table []
setblock ~0 ~1 ~6 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 prismarine_shard 8
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 13
replaceitem block ~-5 ~1 ~6 slot.container 4 copper_ingot 14
replaceitem block ~-5 ~1 ~6 slot.container 5 trident 8
replaceitem block ~-5 ~1 ~6 slot.container 9 tnt 8
replaceitem block ~-5 ~1 ~6 slot.container 10 fishing_rod 1
replaceitem block ~-5 ~1 ~6 slot.container 11 boat 1
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 6
replaceitem block ~-5 ~1 ~6 slot.container 13 heart_of_the_sea 4
replaceitem block ~-5 ~1 ~6 slot.container 14 cooked_cod 12
loot insert ~-5 ~1 ~6 loot "rsf/beach"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 8
replaceitem block ~5 ~1 ~6 slot.container 2 copper_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 3 trident 3
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 nautilus_shell 6
replaceitem block ~5 ~1 ~6 slot.container 9 tnt 6
replaceitem block ~5 ~1 ~6 slot.container 10 fishing_rod 1
replaceitem block ~5 ~1 ~6 slot.container 11 boat 1
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 13 heart_of_the_sea 2
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_cod 10
loot insert ~5 ~1 ~6 loot "rsf/beach"
loot insert ~5 ~1 ~6 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
