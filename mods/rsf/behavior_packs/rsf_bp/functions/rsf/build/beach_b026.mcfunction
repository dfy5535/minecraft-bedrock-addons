# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2458/4224 | 主题内编号: b026/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·尖顶信标引航高塔 (beach_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 sandstone [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 sandstone [] replace water
fill ~-4 ~1 ~-5 ~4 ~14 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 stone_bricks []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 copper_ingot 11
replaceitem block ~1 ~-2 ~2 slot.container 1 trident 5
replaceitem block ~1 ~-2 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~1 ~-2 ~2 slot.container 3 nautilus_shell 8
replaceitem block ~1 ~-2 ~2 slot.container 4 prismarine_shard 13
replaceitem block ~1 ~-2 ~2 slot.container 5 bone 8
replaceitem block ~1 ~-2 ~2 slot.container 9 boat 1
replaceitem block ~1 ~-2 ~2 slot.container 10 lantern 9
replaceitem block ~1 ~-2 ~2 slot.container 11 heart_of_the_sea 7
replaceitem block ~1 ~-2 ~2 slot.container 12 cooked_cod 8
replaceitem block ~1 ~-2 ~2 slot.container 13 cooked_salmon 9
replaceitem block ~1 ~-2 ~2 slot.container 14 iron_ingot 10
loot insert ~1 ~-2 ~2 loot "rsf/beach"
loot insert ~1 ~-2 ~2 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-3 ~1 ~-4 ~3 ~12 ~4 sandstone []
fill ~-2 ~1 ~-3 ~2 ~11 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~13 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~13 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~13 ~4 air []
fill ~3 ~1 ~4 ~3 ~13 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~12 ~-3 oak_log []
fill ~2 ~1 ~-3 ~2 ~12 ~-3 oak_log []
fill ~-2 ~1 ~3 ~-2 ~12 ~3 oak_log []
fill ~2 ~1 ~3 ~2 ~12 ~3 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 oak_planks []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 sandstone []
fill ~0 ~18 ~0 ~0 ~18 ~0 sea_lantern []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~11 ~-2 oak_log []
fill ~-4 ~0 ~2 ~-4 ~11 ~2 oak_log []
fill ~4 ~0 ~-2 ~4 ~11 ~-2 oak_log []
fill ~4 ~0 ~2 ~4 ~11 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-5 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~6 ~-8 sandstone []
setblock ~-2 ~7 ~-8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 prismarine_shard 8
replaceitem block ~-2 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-2 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-2 ~1 ~3 slot.container 3 string 13
replaceitem block ~-2 ~1 ~3 slot.container 4 copper_ingot 14
replaceitem block ~-2 ~1 ~3 slot.container 5 trident 8
replaceitem block ~-2 ~1 ~3 slot.container 9 gold_ingot 7
replaceitem block ~-2 ~1 ~3 slot.container 10 emerald 6
replaceitem block ~-2 ~1 ~3 slot.container 11 tnt 5
replaceitem block ~-2 ~1 ~3 slot.container 12 fishing_rod 1
replaceitem block ~-2 ~1 ~3 slot.container 13 boat 1
replaceitem block ~-2 ~1 ~3 slot.container 14 lantern 10
loot insert ~-2 ~1 ~3 loot "rsf/beach"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 gunpowder 15
replaceitem block ~2 ~1 ~3 slot.container 1 string 8
replaceitem block ~2 ~1 ~3 slot.container 2 copper_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 3 trident 3
replaceitem block ~2 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~2 ~1 ~3 slot.container 5 nautilus_shell 6
replaceitem block ~2 ~1 ~3 slot.container 9 gold_ingot 12
replaceitem block ~2 ~1 ~3 slot.container 10 emerald 4
replaceitem block ~2 ~1 ~3 slot.container 11 tnt 3
replaceitem block ~2 ~1 ~3 slot.container 12 fishing_rod 1
replaceitem block ~2 ~1 ~3 slot.container 13 boat 1
replaceitem block ~2 ~1 ~3 slot.container 14 lantern 8
loot insert ~2 ~1 ~3 loot "rsf/beach"
loot insert ~2 ~1 ~3 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
