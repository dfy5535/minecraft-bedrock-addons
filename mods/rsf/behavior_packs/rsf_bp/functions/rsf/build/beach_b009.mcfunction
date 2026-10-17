# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2441/4224 | 主题内编号: b009/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·铁栏双室地下死牢 (beach_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 sea_lantern []
setblock ~3 ~-6 ~-4 sea_lantern []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 bone 8
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 9
replaceitem block ~3 ~-4 ~4 slot.container 2 string 10
replaceitem block ~3 ~-4 ~4 slot.container 3 copper_ingot 11
replaceitem block ~3 ~-4 ~4 slot.container 4 trident 5
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-4 ~4 slot.container 9 emerald 4
replaceitem block ~3 ~-4 ~4 slot.container 10 tnt 3
replaceitem block ~3 ~-4 ~4 slot.container 11 fishing_rod 1
replaceitem block ~3 ~-4 ~4 slot.container 12 boat 1
replaceitem block ~3 ~-4 ~4 slot.container 13 lantern 8
replaceitem block ~3 ~-4 ~4 slot.container 14 heart_of_the_sea 6
loot insert ~3 ~-4 ~4 loot "rsf/beach"
loot insert ~3 ~-4 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 prismarine_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 sandstone []
fill ~0 ~1 ~-6 ~0 ~2 ~6 sandstone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 sandstone []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 cobblestone_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 chiseled_sandstone []
setblock ~-5 ~8 ~-6 sea_lantern []
setblock ~-5 ~7 ~6 chiseled_sandstone []
setblock ~-5 ~8 ~6 sea_lantern []
setblock ~5 ~7 ~-6 chiseled_sandstone []
setblock ~5 ~8 ~-6 sea_lantern []
setblock ~5 ~7 ~6 chiseled_sandstone []
setblock ~5 ~8 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 sandstone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 chiseled_sandstone []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 chiseled_sandstone []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 sandstone_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~9 ~-11 sandstone []
setblock ~-2 ~10 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 nautilus_shell 3
replaceitem block ~4 ~1 ~5 slot.container 1 prismarine_shard 8
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 4 string 13
replaceitem block ~4 ~1 ~5 slot.container 5 copper_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 12 tnt 3
replaceitem block ~4 ~1 ~5 slot.container 13 fishing_rod 1
replaceitem block ~4 ~1 ~5 slot.container 14 boat 1
loot insert ~4 ~1 ~5 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-4 ~0
