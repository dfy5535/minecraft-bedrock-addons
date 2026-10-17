# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2497/4224 | 主题内编号: b065/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·断柱露天古神庙废墟 (beach_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~9 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 sandstone_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 smooth_sandstone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 sandstone []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 string 10
replaceitem block ~3 ~-3 ~5 slot.container 1 copper_ingot 11
replaceitem block ~3 ~-3 ~5 slot.container 2 trident 5
replaceitem block ~3 ~-3 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~5 slot.container 4 nautilus_shell 8
replaceitem block ~3 ~-3 ~5 slot.container 5 prismarine_shard 13
replaceitem block ~3 ~-3 ~5 slot.container 9 emerald 5
replaceitem block ~3 ~-3 ~5 slot.container 10 tnt 4
replaceitem block ~3 ~-3 ~5 slot.container 11 fishing_rod 1
replaceitem block ~3 ~-3 ~5 slot.container 12 boat 1
replaceitem block ~3 ~-3 ~5 slot.container 13 lantern 9
replaceitem block ~3 ~-3 ~5 slot.container 14 heart_of_the_sea 7
loot insert ~3 ~-3 ~5 loot "rsf/beach"
loot insert ~3 ~-3 ~5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 sandstone []
fill ~-5 ~1 ~-7 ~-5 ~6 ~-7 chiseled_sandstone []
fill ~-5 ~1 ~7 ~-5 ~6 ~7 chiseled_sandstone []
fill ~-3 ~1 ~-7 ~-3 ~6 ~-7 chiseled_sandstone []
fill ~-3 ~1 ~7 ~-3 ~6 ~7 chiseled_sandstone []
fill ~-1 ~1 ~-7 ~-1 ~6 ~-7 chiseled_sandstone []
fill ~-1 ~1 ~7 ~-1 ~6 ~7 chiseled_sandstone []
fill ~1 ~1 ~-7 ~1 ~6 ~-7 chiseled_sandstone []
fill ~1 ~1 ~7 ~1 ~6 ~7 chiseled_sandstone []
fill ~3 ~1 ~-7 ~3 ~6 ~-7 chiseled_sandstone []
fill ~3 ~1 ~7 ~3 ~6 ~7 chiseled_sandstone []
fill ~5 ~1 ~-7 ~5 ~6 ~-7 chiseled_sandstone []
fill ~5 ~1 ~7 ~5 ~6 ~7 chiseled_sandstone []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 chiseled_sandstone []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 chiseled_sandstone []
fill ~-5 ~1 ~-3 ~-5 ~6 ~-3 chiseled_sandstone []
fill ~5 ~1 ~-3 ~5 ~6 ~-3 chiseled_sandstone []
fill ~-5 ~1 ~-1 ~-5 ~6 ~-1 chiseled_sandstone []
fill ~5 ~1 ~-1 ~5 ~6 ~-1 chiseled_sandstone []
fill ~-5 ~1 ~1 ~-5 ~6 ~1 chiseled_sandstone []
fill ~5 ~1 ~1 ~5 ~6 ~1 chiseled_sandstone []
fill ~-5 ~1 ~3 ~-5 ~6 ~3 chiseled_sandstone []
fill ~5 ~1 ~3 ~5 ~6 ~3 chiseled_sandstone []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 chiseled_sandstone []
fill ~5 ~1 ~5 ~5 ~6 ~5 chiseled_sandstone []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 sandstone_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 chiseled_sandstone []
setblock ~-7 ~6 ~-9 sea_lantern []
fill ~-7 ~0 ~9 ~-7 ~5 ~9 chiseled_sandstone []
setblock ~-7 ~6 ~9 sea_lantern []
fill ~7 ~0 ~-9 ~7 ~5 ~-9 chiseled_sandstone []
setblock ~7 ~6 ~-9 sea_lantern []
fill ~7 ~0 ~9 ~7 ~5 ~9 chiseled_sandstone []
setblock ~7 ~6 ~9 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~5 ~-11 sandstone []
setblock ~-2 ~6 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 nautilus_shell 3
replaceitem block ~4 ~1 ~6 slot.container 1 prismarine_shard 8
replaceitem block ~4 ~1 ~6 slot.container 2 bone 11
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~6 slot.container 4 string 13
replaceitem block ~4 ~1 ~6 slot.container 5 copper_ingot 14
replaceitem block ~4 ~1 ~6 slot.container 9 cooked_cod 13
replaceitem block ~4 ~1 ~6 slot.container 10 cooked_salmon 14
replaceitem block ~4 ~1 ~6 slot.container 11 iron_ingot 8
replaceitem block ~4 ~1 ~6 slot.container 12 gold_ingot 7
replaceitem block ~4 ~1 ~6 slot.container 13 emerald 6
replaceitem block ~4 ~1 ~6 slot.container 14 tnt 5
loot insert ~4 ~1 ~6 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
