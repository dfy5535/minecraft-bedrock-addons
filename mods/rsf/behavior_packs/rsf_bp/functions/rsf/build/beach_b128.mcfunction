# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2560/4224 | 主题内编号: b128/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·U型紫禁朝堂大殿与地底金库 (beach_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 oak_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 oak_planks [] replace water
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 oak_planks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~5 slot.container 1 string 10
replaceitem block ~4 ~-3 ~5 slot.container 2 copper_ingot 11
replaceitem block ~4 ~-3 ~5 slot.container 3 trident 5
replaceitem block ~4 ~-3 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~5 slot.container 5 nautilus_shell 8
replaceitem block ~4 ~-3 ~5 slot.container 9 tnt 6
replaceitem block ~4 ~-3 ~5 slot.container 10 fishing_rod 1
replaceitem block ~4 ~-3 ~5 slot.container 11 boat 1
replaceitem block ~4 ~-3 ~5 slot.container 12 lantern 4
replaceitem block ~4 ~-3 ~5 slot.container 13 heart_of_the_sea 2
replaceitem block ~4 ~-3 ~5 slot.container 14 cooked_cod 10
loot insert ~4 ~-3 ~5 loot "rsf/beach"
loot insert ~4 ~-3 ~5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 oak_planks []
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~9 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 smooth_sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~9 ~-8 ~7 ~9 ~8 oak_slab []
fill ~-5 ~10 ~-6 ~5 ~11 ~6 prismarine_bricks []
fill ~-6 ~12 ~-7 ~6 ~12 ~7 sandstone_slab []
setblock ~0 ~13 ~0 gold_block []
setblock ~0 ~14 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 oak_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~8 ~-11 sandstone []
setblock ~-2 ~9 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 nautilus_shell 3
replaceitem block ~-5 ~1 ~6 slot.container 2 prismarine_shard 8
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 string 13
replaceitem block ~-5 ~1 ~6 slot.container 9 heart_of_the_sea 6
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_cod 14
replaceitem block ~-5 ~1 ~6 slot.container 11 cooked_salmon 8
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 9
replaceitem block ~-5 ~1 ~6 slot.container 13 gold_ingot 8
replaceitem block ~-5 ~1 ~6 slot.container 14 emerald 7
loot insert ~-5 ~1 ~6 loot "rsf/beach"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 prismarine_shard 11
replaceitem block ~5 ~1 ~6 slot.container 1 bone 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 string 8
replaceitem block ~5 ~1 ~6 slot.container 4 copper_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 5 trident 3
replaceitem block ~5 ~1 ~6 slot.container 9 heart_of_the_sea 4
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_cod 12
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_salmon 13
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 13 gold_ingot 6
replaceitem block ~5 ~1 ~6 slot.container 14 emerald 5
loot insert ~5 ~1 ~6 loot "rsf/beach"
loot insert ~5 ~1 ~6 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
