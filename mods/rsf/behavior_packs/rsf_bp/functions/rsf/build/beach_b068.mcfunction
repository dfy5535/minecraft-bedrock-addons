# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2500/4224 | 主题内编号: b068/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·断裂凯旋高架拱廊 (beach_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 oak_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 spruce_planks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~8 ~-9 sandstone []
setblock ~-2 ~9 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 copper_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 3
replaceitem block ~-5 ~1 ~4 slot.container 9 heart_of_the_sea 2
replaceitem block ~-5 ~1 ~4 slot.container 10 cooked_cod 10
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_salmon 11
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 14 emerald 10
loot insert ~-5 ~1 ~4 loot "rsf/beach"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 copper_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 1 trident 3
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 nautilus_shell 6
replaceitem block ~5 ~1 ~4 slot.container 4 prismarine_shard 11
replaceitem block ~5 ~1 ~4 slot.container 5 bone 14
replaceitem block ~5 ~1 ~4 slot.container 9 heart_of_the_sea 7
replaceitem block ~5 ~1 ~4 slot.container 10 cooked_cod 8
replaceitem block ~5 ~1 ~4 slot.container 11 cooked_salmon 9
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~5 ~1 ~4 slot.container 13 gold_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 14 emerald 8
loot insert ~5 ~1 ~4 loot "rsf/beach"
loot insert ~5 ~1 ~4 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
