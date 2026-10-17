# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2445/4224 | 主题内编号: b013/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·地底熔炉苦工地牢 (beach_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 sandstone_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 smooth_sandstone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 prismarine_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 nautilus_shell 8
replaceitem block ~3 ~-4 ~5 slot.container 1 prismarine_shard 13
replaceitem block ~3 ~-4 ~5 slot.container 2 bone 8
replaceitem block ~3 ~-4 ~5 slot.container 3 gunpowder 9
replaceitem block ~3 ~-4 ~5 slot.container 4 string 10
replaceitem block ~3 ~-4 ~5 slot.container 5 copper_ingot 11
replaceitem block ~3 ~-4 ~5 slot.container 9 cooked_cod 9
replaceitem block ~3 ~-4 ~5 slot.container 10 cooked_salmon 10
replaceitem block ~3 ~-4 ~5 slot.container 11 iron_ingot 11
replaceitem block ~3 ~-4 ~5 slot.container 12 gold_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 13 emerald 9
replaceitem block ~3 ~-4 ~5 slot.container 14 tnt 8
loot insert ~3 ~-4 ~5 loot "rsf/beach"
loot insert ~3 ~-4 ~5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~7 ~7 prismarine_bricks []
fill ~-4 ~1 ~-6 ~4 ~6 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~7 ~-7 chiseled_sandstone []
fill ~-5 ~1 ~7 ~-5 ~7 ~7 chiseled_sandstone []
fill ~5 ~1 ~-7 ~5 ~7 ~-7 chiseled_sandstone []
fill ~5 ~1 ~7 ~5 ~7 ~7 chiseled_sandstone []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 sandstone []
fill ~-5 ~8 ~-7 ~5 ~8 ~7 cobblestone_wall []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 air []
setblock ~-5 ~8 ~-7 chiseled_sandstone []
setblock ~-5 ~9 ~-7 sea_lantern []
setblock ~-5 ~8 ~7 chiseled_sandstone []
setblock ~-5 ~9 ~7 sea_lantern []
setblock ~5 ~8 ~-7 chiseled_sandstone []
setblock ~5 ~9 ~-7 sea_lantern []
setblock ~5 ~8 ~7 chiseled_sandstone []
setblock ~5 ~9 ~7 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 sandstone []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~8 ~-10 sandstone []
setblock ~-2 ~9 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 string 13
replaceitem block ~4 ~1 ~6 slot.container 1 copper_ingot 14
replaceitem block ~4 ~1 ~6 slot.container 2 trident 8
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 4 nautilus_shell 3
replaceitem block ~4 ~1 ~6 slot.container 5 prismarine_shard 8
replaceitem block ~4 ~1 ~6 slot.container 9 emerald 6
replaceitem block ~4 ~1 ~6 slot.container 10 tnt 5
replaceitem block ~4 ~1 ~6 slot.container 11 fishing_rod 1
replaceitem block ~4 ~1 ~6 slot.container 12 boat 1
replaceitem block ~4 ~1 ~6 slot.container 13 lantern 10
replaceitem block ~4 ~1 ~6 slot.container 14 heart_of_the_sea 1
loot insert ~4 ~1 ~6 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
