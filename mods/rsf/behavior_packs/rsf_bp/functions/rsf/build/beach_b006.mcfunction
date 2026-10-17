# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2438/4224 | 主题内编号: b006/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·重檐飞角四方神龛 (beach_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone [] replace water
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 prismarine_shard 13
replaceitem block ~2 ~-2 ~3 slot.container 1 bone 8
replaceitem block ~2 ~-2 ~3 slot.container 2 gunpowder 9
replaceitem block ~2 ~-2 ~3 slot.container 3 string 10
replaceitem block ~2 ~-2 ~3 slot.container 4 copper_ingot 11
replaceitem block ~2 ~-2 ~3 slot.container 5 trident 5
replaceitem block ~2 ~-2 ~3 slot.container 9 boat 1
replaceitem block ~2 ~-2 ~3 slot.container 10 lantern 10
replaceitem block ~2 ~-2 ~3 slot.container 11 heart_of_the_sea 1
replaceitem block ~2 ~-2 ~3 slot.container 12 cooked_cod 9
replaceitem block ~2 ~-2 ~3 slot.container 13 cooked_salmon 10
replaceitem block ~2 ~-2 ~3 slot.container 14 iron_ingot 11
loot insert ~2 ~-2 ~3 loot "rsf/beach"
loot insert ~2 ~-2 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 sandstone []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 oak_log []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 oak_log []
fill ~4 ~1 ~5 ~4 ~9 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-4 ~2 ~0 oak_fence []
setblock ~4 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 oak_slab []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 stone_bricks []
fill ~-4 ~12 ~-5 ~4 ~12 ~5 stone_brick_slab []
setblock ~0 ~13 ~0 sea_lantern []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 oak_log []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 oak_log []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 oak_log []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 oak_log []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~6 ~-10 sandstone []
setblock ~-2 ~7 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-2 ~1 ~3 smoker []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 copper_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 nautilus_shell 3
replaceitem block ~-3 ~1 ~4 slot.container 4 prismarine_shard 8
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~-3 ~1 ~4 slot.container 11 tnt 6
replaceitem block ~-3 ~1 ~4 slot.container 12 fishing_rod 1
replaceitem block ~-3 ~1 ~4 slot.container 13 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 4
loot insert ~-3 ~1 ~4 loot "rsf/beach"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 nautilus_shell 6
replaceitem block ~3 ~1 ~4 slot.container 2 prismarine_shard 11
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 8
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 11 tnt 4
replaceitem block ~3 ~1 ~4 slot.container 12 fishing_rod 1
replaceitem block ~3 ~1 ~4 slot.container 13 boat 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 9
loot insert ~3 ~1 ~4 loot "rsf/beach"
loot insert ~3 ~1 ~4 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-2 ~0
