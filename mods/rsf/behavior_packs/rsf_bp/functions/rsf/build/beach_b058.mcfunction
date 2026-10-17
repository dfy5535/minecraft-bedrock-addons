# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2490/4224 | 主题内编号: b058/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·十字拱顶家族陵墓 (beach_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 sandstone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~0 ~-3 ~4 slot.container 2 prismarine_shard 13
replaceitem block ~0 ~-3 ~4 slot.container 3 bone 8
replaceitem block ~0 ~-3 ~4 slot.container 4 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 5 string 10
replaceitem block ~0 ~-3 ~4 slot.container 9 cooked_salmon 12
replaceitem block ~0 ~-3 ~4 slot.container 10 iron_ingot 13
replaceitem block ~0 ~-3 ~4 slot.container 11 gold_ingot 12
replaceitem block ~0 ~-3 ~4 slot.container 12 emerald 4
replaceitem block ~0 ~-3 ~4 slot.container 13 tnt 3
replaceitem block ~0 ~-3 ~4 slot.container 14 fishing_rod 1
loot insert ~0 ~-3 ~4 loot "rsf/beach"
loot insert ~0 ~-3 ~4 loot "chests/buriedtreasure"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 nautilus_shell 6
replaceitem block ~0 ~-3 ~-4 slot.container 2 prismarine_shard 11
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 14
replaceitem block ~0 ~-3 ~-4 slot.container 4 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 5 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_salmon 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 11 gold_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 12 emerald 10
replaceitem block ~0 ~-3 ~-4 slot.container 13 tnt 2
replaceitem block ~0 ~-3 ~-4 slot.container 14 fishing_rod 1
loot insert ~0 ~-3 ~-4 loot "rsf/beach"
loot insert ~0 ~-3 ~-4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 sandstone []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 sandstone []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 oak_fence []
setblock ~5 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 oak_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 oak_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 oak_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 oak_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 oak_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 oak_log []
setblock ~-7 ~6 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 oak_log []
setblock ~-7 ~6 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 oak_log []
setblock ~7 ~6 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 oak_log []
setblock ~7 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~8 ~-9 sandstone []
setblock ~-2 ~9 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 prismarine_shard 8
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 13
replaceitem block ~-4 ~1 ~5 slot.container 4 copper_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 5 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 9 heart_of_the_sea 6
replaceitem block ~-4 ~1 ~5 slot.container 10 cooked_cod 14
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_salmon 8
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 7
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 8
replaceitem block ~4 ~1 ~5 slot.container 2 copper_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 3 trident 3
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 nautilus_shell 6
replaceitem block ~4 ~1 ~5 slot.container 9 heart_of_the_sea 4
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_cod 12
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_salmon 13
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 5
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
