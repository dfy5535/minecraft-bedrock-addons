# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2516/4224 | 主题内编号: b084/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·露天采石场与矿道库 (beach_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 oak_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 oak_planks [] replace water
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~3 ~-3 ~4 slot.container 2 prismarine_shard 13
replaceitem block ~3 ~-3 ~4 slot.container 3 bone 8
replaceitem block ~3 ~-3 ~4 slot.container 4 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 5 string 10
replaceitem block ~3 ~-3 ~4 slot.container 9 cooked_salmon 14
replaceitem block ~3 ~-3 ~4 slot.container 10 iron_ingot 8
replaceitem block ~3 ~-3 ~4 slot.container 11 gold_ingot 7
replaceitem block ~3 ~-3 ~4 slot.container 12 emerald 6
replaceitem block ~3 ~-3 ~4 slot.container 13 tnt 5
replaceitem block ~3 ~-3 ~4 slot.container 14 fishing_rod 1
loot insert ~3 ~-3 ~4 loot "rsf/beach"
loot insert ~3 ~-3 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 oak_planks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 stripped_oak_log []
setblock ~-5 ~9 ~-6 campfire []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 stripped_oak_log []
setblock ~-5 ~9 ~6 campfire []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 stripped_oak_log []
setblock ~5 ~9 ~-6 campfire []
fill ~5 ~6 ~6 ~5 ~8 ~6 stripped_oak_log []
setblock ~5 ~9 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 oak_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

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
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 13
replaceitem block ~-4 ~1 ~5 slot.container 2 copper_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 nautilus_shell 3
replaceitem block ~-4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 11 heart_of_the_sea 6
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_cod 14
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_salmon 8
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 copper_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 1 trident 3
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 nautilus_shell 6
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_shard 11
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 11 heart_of_the_sea 4
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_cod 12
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_salmon 13
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 14
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-3 ~0
