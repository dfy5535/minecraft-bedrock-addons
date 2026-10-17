# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2554/4224 | 主题内编号: b122/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·十字穹顶宏伟圣堂与墓窟 (beach_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 sandstone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 sandstone [] replace water
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 oak_planks []
setblock ~0 ~-6 ~0 prismarine []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 gunpowder 9
replaceitem block ~0 ~-3 ~-5 slot.container 1 string 10
replaceitem block ~0 ~-3 ~-5 slot.container 2 copper_ingot 11
replaceitem block ~0 ~-3 ~-5 slot.container 3 trident 5
replaceitem block ~0 ~-3 ~-5 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-3 ~-5 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-3 ~-5 slot.container 9 boat 1
replaceitem block ~0 ~-3 ~-5 slot.container 10 lantern 7
replaceitem block ~0 ~-3 ~-5 slot.container 11 heart_of_the_sea 5
replaceitem block ~0 ~-3 ~-5 slot.container 12 cooked_cod 13
replaceitem block ~0 ~-3 ~-5 slot.container 13 cooked_salmon 14
replaceitem block ~0 ~-3 ~-5 slot.container 14 iron_ingot 8
loot insert ~0 ~-3 ~-5 loot "rsf/beach"
loot insert ~0 ~-3 ~-5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~10 ~7 sandstone []
fill ~-6 ~1 ~-2 ~6 ~10 ~2 sandstone []
fill ~-1 ~1 ~-6 ~1 ~9 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~9 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 oak_fence []
setblock ~6 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 oak_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 sandstone []
fill ~0 ~16 ~0 ~0 ~16 ~0 sea_lantern []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~9 ~-2 oak_log []
fill ~-7 ~0 ~2 ~-7 ~9 ~2 oak_log []
fill ~7 ~0 ~-2 ~7 ~9 ~-2 oak_log []
fill ~7 ~0 ~2 ~7 ~9 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~7 ~-11 sandstone []
setblock ~-2 ~8 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 fletching_table []
setblock ~0 ~1 ~6 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 prismarine_shard 8
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 13
replaceitem block ~-5 ~1 ~6 slot.container 4 copper_ingot 14
replaceitem block ~-5 ~1 ~6 slot.container 5 trident 8
replaceitem block ~-5 ~1 ~6 slot.container 9 cooked_salmon 14
replaceitem block ~-5 ~1 ~6 slot.container 10 iron_ingot 8
replaceitem block ~-5 ~1 ~6 slot.container 11 gold_ingot 7
replaceitem block ~-5 ~1 ~6 slot.container 12 emerald 6
replaceitem block ~-5 ~1 ~6 slot.container 13 tnt 5
replaceitem block ~-5 ~1 ~6 slot.container 14 fishing_rod 1
loot insert ~-5 ~1 ~6 loot "rsf/beach"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 8
replaceitem block ~5 ~1 ~6 slot.container 2 copper_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 3 trident 3
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 5 nautilus_shell 6
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_salmon 12
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 13
replaceitem block ~5 ~1 ~6 slot.container 11 gold_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 12 emerald 4
replaceitem block ~5 ~1 ~6 slot.container 13 tnt 3
replaceitem block ~5 ~1 ~6 slot.container 14 fishing_rod 1
loot insert ~5 ~1 ~6 loot "rsf/beach"
loot insert ~5 ~1 ~6 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
