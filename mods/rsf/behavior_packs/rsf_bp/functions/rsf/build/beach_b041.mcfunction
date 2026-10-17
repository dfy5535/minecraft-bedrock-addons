# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2473/4224 | 主题内编号: b041/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·八角看台古罗马斗技场 (beach_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine_bricks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~-4 ~-5 ~-5 sea_lantern []
setblock ~4 ~-5 ~5 sea_lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 nautilus_shell 8
replaceitem block ~0 ~-3 ~5 slot.container 1 prismarine_shard 13
replaceitem block ~0 ~-3 ~5 slot.container 2 bone 8
replaceitem block ~0 ~-3 ~5 slot.container 3 gunpowder 9
replaceitem block ~0 ~-3 ~5 slot.container 4 string 10
replaceitem block ~0 ~-3 ~5 slot.container 5 copper_ingot 11
replaceitem block ~0 ~-3 ~5 slot.container 9 cooked_cod 14
replaceitem block ~0 ~-3 ~5 slot.container 10 cooked_salmon 8
replaceitem block ~0 ~-3 ~5 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-3 ~5 slot.container 12 gold_ingot 8
replaceitem block ~0 ~-3 ~5 slot.container 13 emerald 7
replaceitem block ~0 ~-3 ~5 slot.container 14 tnt 6
loot insert ~0 ~-3 ~5 loot "rsf/beach"
loot insert ~0 ~-3 ~5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 prismarine_bricks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~8 ~7 air []
fill ~6 ~1 ~7 ~6 ~8 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 chiseled_sandstone []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 chiseled_sandstone []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 chiseled_sandstone []
fill ~5 ~1 ~6 ~5 ~7 ~6 chiseled_sandstone []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 chiseled_sandstone []
setblock ~-6 ~10 ~-7 sea_lantern []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 chiseled_sandstone []
setblock ~-6 ~10 ~7 sea_lantern []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 chiseled_sandstone []
setblock ~6 ~10 ~-7 sea_lantern []
fill ~6 ~7 ~7 ~6 ~9 ~7 chiseled_sandstone []
setblock ~6 ~10 ~7 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 chiseled_sandstone []
setblock ~-8 ~6 ~-9 sea_lantern []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 chiseled_sandstone []
setblock ~-8 ~6 ~9 sea_lantern []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 chiseled_sandstone []
setblock ~8 ~6 ~-9 sea_lantern []
fill ~8 ~0 ~9 ~8 ~5 ~9 chiseled_sandstone []
setblock ~8 ~6 ~9 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~6 ~-11 sandstone []
setblock ~-2 ~7 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 nautilus_shell 3
replaceitem block ~5 ~1 ~6 slot.container 1 prismarine_shard 8
replaceitem block ~5 ~1 ~6 slot.container 2 bone 11
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 4 string 13
replaceitem block ~5 ~1 ~6 slot.container 5 copper_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 6
replaceitem block ~5 ~1 ~6 slot.container 10 heart_of_the_sea 4
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_cod 12
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_salmon 13
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 14 gold_ingot 6
loot insert ~5 ~1 ~6 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
