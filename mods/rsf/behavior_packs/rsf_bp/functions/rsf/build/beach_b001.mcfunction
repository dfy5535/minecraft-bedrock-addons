# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2433/4224 | 主题内编号: b001/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·三层阶梯圣火祭坛 (beach_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~9 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 sandstone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 string 10
replaceitem block ~2 ~-3 ~3 slot.container 1 copper_ingot 11
replaceitem block ~2 ~-3 ~3 slot.container 2 trident 5
replaceitem block ~2 ~-3 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 4 nautilus_shell 8
replaceitem block ~2 ~-3 ~3 slot.container 5 prismarine_shard 13
replaceitem block ~2 ~-3 ~3 slot.container 9 iron_ingot 8
replaceitem block ~2 ~-3 ~3 slot.container 10 gold_ingot 7
replaceitem block ~2 ~-3 ~3 slot.container 11 emerald 6
replaceitem block ~2 ~-3 ~3 slot.container 12 tnt 5
replaceitem block ~2 ~-3 ~3 slot.container 13 fishing_rod 1
replaceitem block ~2 ~-3 ~3 slot.container 14 boat 1
loot insert ~2 ~-3 ~3 loot "rsf/beach"
loot insert ~2 ~-3 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 prismarine_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 sandstone []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 sandstone []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~7 ~-5 ~-4 ~9 ~-5 chiseled_sandstone []
setblock ~-4 ~10 ~-5 sea_lantern []
fill ~-4 ~7 ~5 ~-4 ~9 ~5 chiseled_sandstone []
setblock ~-4 ~10 ~5 sea_lantern []
fill ~4 ~7 ~-5 ~4 ~9 ~-5 chiseled_sandstone []
setblock ~4 ~10 ~-5 sea_lantern []
fill ~4 ~7 ~5 ~4 ~9 ~5 chiseled_sandstone []
setblock ~4 ~10 ~5 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 chiseled_sandstone []
setblock ~-6 ~6 ~-7 sea_lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 chiseled_sandstone []
setblock ~-6 ~6 ~7 sea_lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 chiseled_sandstone []
setblock ~6 ~6 ~-7 sea_lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 chiseled_sandstone []
setblock ~6 ~6 ~7 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~6 ~-8 sandstone []
setblock ~-2 ~7 ~-8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 nautilus_shell 3
replaceitem block ~3 ~1 ~4 slot.container 1 prismarine_shard 8
replaceitem block ~3 ~1 ~4 slot.container 2 bone 11
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 4 string 13
replaceitem block ~3 ~1 ~4 slot.container 5 copper_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~3 ~1 ~4 slot.container 10 heart_of_the_sea 6
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_cod 14
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_salmon 8
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 14 gold_ingot 8
loot insert ~3 ~1 ~4 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
