# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2491/4224 | 主题内编号: b059/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·阶梯金字塔法老墓室 (beach_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 oak_planks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 cobblestone []
setblock ~0 ~-7 ~0 gold_block []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 string 10
replaceitem block ~0 ~-4 ~-5 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-4 ~-5 slot.container 2 trident 5
replaceitem block ~0 ~-4 ~-5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~-5 slot.container 4 nautilus_shell 8
replaceitem block ~0 ~-4 ~-5 slot.container 5 prismarine_shard 13
replaceitem block ~0 ~-4 ~-5 slot.container 9 lantern 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 heart_of_the_sea 4
replaceitem block ~0 ~-4 ~-5 slot.container 11 cooked_cod 12
replaceitem block ~0 ~-4 ~-5 slot.container 12 cooked_salmon 13
replaceitem block ~0 ~-4 ~-5 slot.container 13 iron_ingot 14
replaceitem block ~0 ~-4 ~-5 slot.container 14 gold_ingot 6
loot insert ~0 ~-4 ~-5 loot "rsf/beach"
loot insert ~0 ~-4 ~-5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 cobblestone []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 oak_planks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 cobblestone []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 oak_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 prismarine []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 spruce_log []
setblock ~-8 ~6 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 spruce_log []
setblock ~-8 ~6 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 spruce_log []
setblock ~8 ~6 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~5 ~9 spruce_log []
setblock ~8 ~6 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~9 ~-11 sandstone []
setblock ~-2 ~10 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 13
replaceitem block ~5 ~1 ~6 slot.container 3 copper_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 4 trident 8
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 10 gold_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 5
replaceitem block ~5 ~1 ~6 slot.container 12 tnt 4
replaceitem block ~5 ~1 ~6 slot.container 13 fishing_rod 1
replaceitem block ~5 ~1 ~6 slot.container 14 boat 1
loot insert ~5 ~1 ~6 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
