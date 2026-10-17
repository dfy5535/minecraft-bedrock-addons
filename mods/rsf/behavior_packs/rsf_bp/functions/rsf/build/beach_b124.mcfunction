# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2556/4224 | 主题内编号: b124/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·三层重檐帝王阁楼与秘库 (beach_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x17 | 地上高度 11格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 oak_planks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 oak_planks [] replace water
fill ~-6 ~1 ~-8 ~6 ~13 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 oak_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 sandstone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 prismarine_bricks []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~5 slot.container 1 nautilus_shell 8
replaceitem block ~3 ~-3 ~5 slot.container 2 prismarine_shard 13
replaceitem block ~3 ~-3 ~5 slot.container 3 bone 8
replaceitem block ~3 ~-3 ~5 slot.container 4 gunpowder 9
replaceitem block ~3 ~-3 ~5 slot.container 5 string 10
replaceitem block ~3 ~-3 ~5 slot.container 9 cooked_salmon 12
replaceitem block ~3 ~-3 ~5 slot.container 10 iron_ingot 13
replaceitem block ~3 ~-3 ~5 slot.container 11 gold_ingot 12
replaceitem block ~3 ~-3 ~5 slot.container 12 emerald 4
replaceitem block ~3 ~-3 ~5 slot.container 13 tnt 3
replaceitem block ~3 ~-3 ~5 slot.container 14 fishing_rod 1
loot insert ~3 ~-3 ~5 loot "rsf/beach"
loot insert ~3 ~-3 ~5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 oak_planks []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-6 ~5 ~-8 ~6 ~5 ~8 oak_slab []
fill ~-4 ~6 ~-6 ~4 ~11 ~6 prismarine_bricks []
fill ~-3 ~6 ~-5 ~3 ~10 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~6 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~11 ~-8 ~6 ~11 ~8 oak_slab []
fill ~-4 ~12 ~-6 ~4 ~13 ~6 prismarine_bricks []
fill ~-5 ~14 ~-7 ~5 ~14 ~7 sandstone_slab []
setblock ~0 ~15 ~0 gold_block []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~5 ~-9 stripped_oak_log []
setblock ~-7 ~6 ~-9 campfire []
fill ~-7 ~0 ~9 ~-7 ~5 ~9 stripped_oak_log []
setblock ~-7 ~6 ~9 campfire []
fill ~7 ~0 ~-9 ~7 ~5 ~-9 stripped_oak_log []
setblock ~7 ~6 ~-9 campfire []
fill ~7 ~0 ~9 ~7 ~5 ~9 stripped_oak_log []
setblock ~7 ~6 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~9 ~-10 sandstone []
setblock ~-2 ~10 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~6 slot.container 1 string 13
replaceitem block ~-4 ~1 ~6 slot.container 2 copper_ingot 14
replaceitem block ~-4 ~1 ~6 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~6 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~6 slot.container 5 nautilus_shell 3
replaceitem block ~-4 ~1 ~6 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~6 slot.container 10 lantern 6
replaceitem block ~-4 ~1 ~6 slot.container 11 heart_of_the_sea 4
replaceitem block ~-4 ~1 ~6 slot.container 12 cooked_cod 12
replaceitem block ~-4 ~1 ~6 slot.container 13 cooked_salmon 13
replaceitem block ~-4 ~1 ~6 slot.container 14 iron_ingot 14
loot insert ~-4 ~1 ~6 loot "rsf/beach"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 copper_ingot 9
replaceitem block ~4 ~1 ~6 slot.container 1 trident 3
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 3 nautilus_shell 6
replaceitem block ~4 ~1 ~6 slot.container 4 prismarine_shard 11
replaceitem block ~4 ~1 ~6 slot.container 5 bone 14
replaceitem block ~4 ~1 ~6 slot.container 9 boat 1
replaceitem block ~4 ~1 ~6 slot.container 10 lantern 4
replaceitem block ~4 ~1 ~6 slot.container 11 heart_of_the_sea 2
replaceitem block ~4 ~1 ~6 slot.container 12 cooked_cod 10
replaceitem block ~4 ~1 ~6 slot.container 13 cooked_salmon 11
replaceitem block ~4 ~1 ~6 slot.container 14 iron_ingot 12
loot insert ~4 ~1 ~6 loot "rsf/beach"
loot insert ~4 ~1 ~6 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
