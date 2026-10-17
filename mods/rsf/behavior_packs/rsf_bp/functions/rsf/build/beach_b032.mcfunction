# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2464/4224 | 主题内编号: b032/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·断顶残垣古哨塔 (beach_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 9x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 oak_planks [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 oak_planks [] replace water
fill ~-4 ~1 ~-6 ~4 ~12 ~6 air []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 oak_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 sandstone []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 prismarine_bricks []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 spruce_planks []
setblock ~0 ~-5 ~0 emerald_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 prismarine_shard 13
replaceitem block ~0 ~-2 ~-3 slot.container 1 bone 8
replaceitem block ~0 ~-2 ~-3 slot.container 2 gunpowder 9
replaceitem block ~0 ~-2 ~-3 slot.container 3 string 10
replaceitem block ~0 ~-2 ~-3 slot.container 4 copper_ingot 11
replaceitem block ~0 ~-2 ~-3 slot.container 5 trident 5
replaceitem block ~0 ~-2 ~-3 slot.container 9 boat 1
replaceitem block ~0 ~-2 ~-3 slot.container 10 lantern 8
replaceitem block ~0 ~-2 ~-3 slot.container 11 heart_of_the_sea 6
replaceitem block ~0 ~-2 ~-3 slot.container 12 cooked_cod 14
replaceitem block ~0 ~-2 ~-3 slot.container 13 cooked_salmon 8
replaceitem block ~0 ~-2 ~-3 slot.container 14 iron_ingot 9
loot insert ~0 ~-2 ~-3 loot "rsf/beach"
loot insert ~0 ~-2 ~-3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~10 ~5 oak_planks []
fill ~-2 ~1 ~-4 ~2 ~9 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~10 ~-5 stripped_oak_log []
fill ~-3 ~1 ~5 ~-3 ~10 ~5 stripped_oak_log []
fill ~3 ~1 ~-5 ~3 ~10 ~-5 stripped_oak_log []
fill ~3 ~1 ~5 ~3 ~10 ~5 stripped_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 oak_fence []
setblock ~3 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~10 ~-5 ~3 ~10 ~5 oak_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-3 ~9 ~-1 ~-3 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~9 ~-2 stripped_oak_log []
fill ~-4 ~0 ~2 ~-4 ~9 ~2 stripped_oak_log []
fill ~4 ~0 ~-2 ~4 ~9 ~-2 stripped_oak_log []
fill ~4 ~0 ~2 ~4 ~9 ~2 stripped_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 sandstone []
setblock ~-2 ~8 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-2 ~1 ~4 slot.container 1 nautilus_shell 3
replaceitem block ~-2 ~1 ~4 slot.container 2 prismarine_shard 8
replaceitem block ~-2 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-2 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-2 ~1 ~4 slot.container 5 string 13
replaceitem block ~-2 ~1 ~4 slot.container 9 cooked_salmon 8
replaceitem block ~-2 ~1 ~4 slot.container 10 iron_ingot 9
replaceitem block ~-2 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~-2 ~1 ~4 slot.container 12 emerald 7
replaceitem block ~-2 ~1 ~4 slot.container 13 tnt 6
replaceitem block ~-2 ~1 ~4 slot.container 14 fishing_rod 1
loot insert ~-2 ~1 ~4 loot "rsf/beach"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 prismarine_shard 11
replaceitem block ~2 ~1 ~4 slot.container 1 bone 14
replaceitem block ~2 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~2 ~1 ~4 slot.container 3 string 8
replaceitem block ~2 ~1 ~4 slot.container 4 copper_ingot 9
replaceitem block ~2 ~1 ~4 slot.container 5 trident 3
replaceitem block ~2 ~1 ~4 slot.container 9 cooked_salmon 13
replaceitem block ~2 ~1 ~4 slot.container 10 iron_ingot 14
replaceitem block ~2 ~1 ~4 slot.container 11 gold_ingot 6
replaceitem block ~2 ~1 ~4 slot.container 12 emerald 5
replaceitem block ~2 ~1 ~4 slot.container 13 tnt 4
replaceitem block ~2 ~1 ~4 slot.container 14 fishing_rod 1
loot insert ~2 ~1 ~4 loot "rsf/beach"
loot insert ~2 ~1 ~4 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
