# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2537/4224 | 主题内编号: b105/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·满书架奥术附魔书院 (beach_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 prismarine_bricks [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 prismarine_bricks [] replace water
fill ~-5 ~1 ~-7 ~5 ~10 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 sandstone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 smooth_sandstone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 sandstone []
fill ~-2 ~-5 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~4 slot.container 0 string 10
replaceitem block ~2 ~-3 ~4 slot.container 1 copper_ingot 11
replaceitem block ~2 ~-3 ~4 slot.container 2 trident 5
replaceitem block ~2 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~4 slot.container 4 nautilus_shell 8
replaceitem block ~2 ~-3 ~4 slot.container 5 prismarine_shard 13
replaceitem block ~2 ~-3 ~4 slot.container 9 emerald 10
replaceitem block ~2 ~-3 ~4 slot.container 10 tnt 2
replaceitem block ~2 ~-3 ~4 slot.container 11 fishing_rod 1
replaceitem block ~2 ~-3 ~4 slot.container 12 boat 1
replaceitem block ~2 ~-3 ~4 slot.container 13 lantern 7
replaceitem block ~2 ~-3 ~4 slot.container 14 heart_of_the_sea 5
loot insert ~2 ~-3 ~4 loot "rsf/beach"
loot insert ~2 ~-3 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~8 ~6 prismarine_bricks []
fill ~-3 ~1 ~-5 ~3 ~7 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~8 ~-6 chiseled_sandstone []
fill ~-4 ~1 ~6 ~-4 ~8 ~6 chiseled_sandstone []
fill ~4 ~1 ~-6 ~4 ~8 ~-6 chiseled_sandstone []
fill ~4 ~1 ~6 ~4 ~8 ~6 chiseled_sandstone []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~9 ~-7 ~-5 ~9 ~7 sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-7 ~5 ~9 ~7 sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-6 ~-4 ~10 ~6 sandstone_stairs ["weirdo_direction"=0]
fill ~4 ~10 ~-6 ~4 ~10 ~6 sandstone_stairs ["weirdo_direction"=1]
fill ~-3 ~10 ~-6 ~3 ~10 ~6 sandstone_slab []
fill ~0 ~11 ~-7 ~0 ~11 ~7 sandstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 sandstone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 chiseled_sandstone []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 chiseled_sandstone []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 sandstone_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~5 ~-11 sandstone []
setblock ~-2 ~6 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-2 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 nautilus_shell 3
replaceitem block ~3 ~1 ~5 slot.container 1 prismarine_shard 8
replaceitem block ~3 ~1 ~5 slot.container 2 bone 11
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 4 string 13
replaceitem block ~3 ~1 ~5 slot.container 5 copper_ingot 14
replaceitem block ~3 ~1 ~5 slot.container 9 cooked_cod 11
replaceitem block ~3 ~1 ~5 slot.container 10 cooked_salmon 12
replaceitem block ~3 ~1 ~5 slot.container 11 iron_ingot 13
replaceitem block ~3 ~1 ~5 slot.container 12 gold_ingot 12
replaceitem block ~3 ~1 ~5 slot.container 13 emerald 4
replaceitem block ~3 ~1 ~5 slot.container 14 tnt 3
loot insert ~3 ~1 ~5 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
