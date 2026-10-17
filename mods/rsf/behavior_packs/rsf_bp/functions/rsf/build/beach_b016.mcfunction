# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2448/4224 | 主题内编号: b016/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·要塞地底重装暗牢 (beach_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 oak_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 oak_planks [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 campfire []
setblock ~4 ~-5 ~0 campfire []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 copper_ingot 11
replaceitem block ~0 ~-3 ~5 slot.container 1 trident 5
replaceitem block ~0 ~-3 ~5 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 3 nautilus_shell 8
replaceitem block ~0 ~-3 ~5 slot.container 4 prismarine_shard 13
replaceitem block ~0 ~-3 ~5 slot.container 5 bone 8
replaceitem block ~0 ~-3 ~5 slot.container 9 tnt 6
replaceitem block ~0 ~-3 ~5 slot.container 10 fishing_rod 1
replaceitem block ~0 ~-3 ~5 slot.container 11 boat 1
replaceitem block ~0 ~-3 ~5 slot.container 12 lantern 4
replaceitem block ~0 ~-3 ~5 slot.container 13 heart_of_the_sea 2
replaceitem block ~0 ~-3 ~5 slot.container 14 cooked_cod 10
loot insert ~0 ~-3 ~5 loot "rsf/beach"
loot insert ~0 ~-3 ~5 loot "chests/buriedtreasure"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 copper_ingot 9
replaceitem block ~0 ~-3 ~-5 slot.container 1 trident 3
replaceitem block ~0 ~-3 ~-5 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-3 ~-5 slot.container 3 nautilus_shell 6
replaceitem block ~0 ~-3 ~-5 slot.container 4 prismarine_shard 11
replaceitem block ~0 ~-3 ~-5 slot.container 5 bone 14
replaceitem block ~0 ~-3 ~-5 slot.container 9 tnt 5
replaceitem block ~0 ~-3 ~-5 slot.container 10 fishing_rod 1
replaceitem block ~0 ~-3 ~-5 slot.container 11 boat 1
replaceitem block ~0 ~-3 ~-5 slot.container 12 lantern 10
replaceitem block ~0 ~-3 ~-5 slot.container 13 heart_of_the_sea 1
replaceitem block ~0 ~-3 ~-5 slot.container 14 cooked_cod 9
loot insert ~0 ~-3 ~-5 loot "rsf/beach"
loot insert ~0 ~-3 ~-5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 oak_planks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 spruce_planks []
setblock ~-6 ~10 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 spruce_planks []
setblock ~-6 ~10 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 spruce_planks []
setblock ~5 ~10 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~9 ~7 spruce_planks []
setblock ~5 ~10 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 spruce_planks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 oak_fence []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 stripped_oak_log []
setblock ~-6 ~9 ~-7 campfire []
setblock ~-6 ~8 ~7 stripped_oak_log []
setblock ~-6 ~9 ~7 campfire []
setblock ~6 ~8 ~-7 stripped_oak_log []
setblock ~6 ~9 ~-7 campfire []
setblock ~6 ~8 ~7 stripped_oak_log []
setblock ~6 ~9 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 oak_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~6 ~-10 sandstone []
setblock ~-2 ~7 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 nautilus_shell 3
replaceitem block ~-5 ~1 ~6 slot.container 2 prismarine_shard 8
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 string 13
replaceitem block ~-5 ~1 ~6 slot.container 9 gold_ingot 11
replaceitem block ~-5 ~1 ~6 slot.container 10 emerald 10
replaceitem block ~-5 ~1 ~6 slot.container 11 tnt 2
replaceitem block ~-5 ~1 ~6 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~6 slot.container 13 boat 1
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 7
loot insert ~-5 ~1 ~6 loot "rsf/beach"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 prismarine_shard 11
replaceitem block ~5 ~1 ~6 slot.container 1 bone 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 string 8
replaceitem block ~5 ~1 ~6 slot.container 4 copper_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 5 trident 3
replaceitem block ~5 ~1 ~6 slot.container 9 gold_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 10 emerald 8
replaceitem block ~5 ~1 ~6 slot.container 11 tnt 7
replaceitem block ~5 ~1 ~6 slot.container 12 fishing_rod 1
replaceitem block ~5 ~1 ~6 slot.container 13 boat 1
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 5
loot insert ~5 ~1 ~6 loot "rsf/beach"
loot insert ~5 ~1 ~6 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
