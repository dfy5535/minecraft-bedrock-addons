# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2524/4224 | 主题内编号: b092/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双层重檐供奉宝塔 (beach_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 oak_planks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 oak_planks [] replace water
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 prismarine_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 1 nautilus_shell 8
replaceitem block ~2 ~-2 ~3 slot.container 2 prismarine_shard 13
replaceitem block ~2 ~-2 ~3 slot.container 3 bone 8
replaceitem block ~2 ~-2 ~3 slot.container 4 gunpowder 9
replaceitem block ~2 ~-2 ~3 slot.container 5 string 10
replaceitem block ~2 ~-2 ~3 slot.container 9 tnt 2
replaceitem block ~2 ~-2 ~3 slot.container 10 fishing_rod 1
replaceitem block ~2 ~-2 ~3 slot.container 11 boat 1
replaceitem block ~2 ~-2 ~3 slot.container 12 lantern 7
replaceitem block ~2 ~-2 ~3 slot.container 13 heart_of_the_sea 5
replaceitem block ~2 ~-2 ~3 slot.container 14 cooked_cod 13
loot insert ~2 ~-2 ~3 loot "rsf/beach"
loot insert ~2 ~-2 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 oak_planks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-5 ~5 ~-6 ~5 ~5 ~6 oak_slab []
fill ~-3 ~6 ~-4 ~3 ~10 ~4 prismarine_bricks []
fill ~-2 ~6 ~-3 ~2 ~9 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~6 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~10 ~-6 ~5 ~10 ~6 oak_slab []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 prismarine_bricks []
fill ~-4 ~13 ~-5 ~4 ~13 ~5 sandstone_slab []
setblock ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 stripped_oak_log []
setblock ~-6 ~6 ~-7 campfire []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 stripped_oak_log []
setblock ~-6 ~6 ~7 campfire []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 stripped_oak_log []
setblock ~6 ~6 ~-7 campfire []
fill ~6 ~0 ~7 ~6 ~5 ~7 stripped_oak_log []
setblock ~6 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 sandstone []
setblock ~-2 ~8 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 string 13
replaceitem block ~-3 ~1 ~4 slot.container 2 copper_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 nautilus_shell 3
replaceitem block ~-3 ~1 ~4 slot.container 9 cooked_salmon 12
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 13
replaceitem block ~-3 ~1 ~4 slot.container 11 gold_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 12 emerald 4
replaceitem block ~-3 ~1 ~4 slot.container 13 tnt 3
replaceitem block ~-3 ~1 ~4 slot.container 14 fishing_rod 1
loot insert ~-3 ~1 ~4 loot "rsf/beach"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 copper_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 1 trident 3
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 nautilus_shell 6
replaceitem block ~3 ~1 ~4 slot.container 4 prismarine_shard 11
replaceitem block ~3 ~1 ~4 slot.container 5 bone 14
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_salmon 10
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 11 gold_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 13 tnt 8
replaceitem block ~3 ~1 ~4 slot.container 14 fishing_rod 1
loot insert ~3 ~1 ~4 loot "rsf/beach"
loot insert ~3 ~1 ~4 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
