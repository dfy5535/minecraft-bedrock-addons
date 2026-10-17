# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2546/4224 | 主题内编号: b114/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双联拱顶植物培育馆 (beach_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 sandstone []
fill ~2 ~1 ~-5 ~6 ~8 ~5 sandstone []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 oak_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 oak_planks []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 sandstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~9 ~-10 sandstone []
setblock ~-2 ~10 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 prismarine_shard 8
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 3 string 13
replaceitem block ~-5 ~1 ~4 slot.container 4 copper_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 5 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 10 lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 11 heart_of_the_sea 1
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_cod 9
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_salmon 10
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~4 loot "rsf/beach"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 1 string 8
replaceitem block ~5 ~1 ~4 slot.container 2 copper_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 3 trident 3
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 5 nautilus_shell 6
replaceitem block ~5 ~1 ~4 slot.container 9 boat 1
replaceitem block ~5 ~1 ~4 slot.container 10 lantern 8
replaceitem block ~5 ~1 ~4 slot.container 11 heart_of_the_sea 6
replaceitem block ~5 ~1 ~4 slot.container 12 cooked_cod 14
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_salmon 8
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~5 ~1 ~4 loot "rsf/beach"
loot insert ~5 ~1 ~4 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~2 ~0
