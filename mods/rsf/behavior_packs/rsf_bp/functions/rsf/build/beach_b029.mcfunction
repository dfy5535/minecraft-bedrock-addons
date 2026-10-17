# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2461/4224 | 主题内编号: b029/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·奥术星象琉璃塔 (beach_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 11格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~13 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 sandstone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 string 10
replaceitem block ~2 ~-3 ~0 slot.container 1 copper_ingot 11
replaceitem block ~2 ~-3 ~0 slot.container 2 trident 5
replaceitem block ~2 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~0 slot.container 4 nautilus_shell 8
replaceitem block ~2 ~-3 ~0 slot.container 5 prismarine_shard 13
replaceitem block ~2 ~-3 ~0 slot.container 9 lantern 6
replaceitem block ~2 ~-3 ~0 slot.container 10 heart_of_the_sea 4
replaceitem block ~2 ~-3 ~0 slot.container 11 cooked_cod 12
replaceitem block ~2 ~-3 ~0 slot.container 12 cooked_salmon 13
replaceitem block ~2 ~-3 ~0 slot.container 13 iron_ingot 14
replaceitem block ~2 ~-3 ~0 slot.container 14 gold_ingot 6
loot insert ~2 ~-3 ~0 loot "rsf/beach"
loot insert ~2 ~-3 ~0 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~11 ~5 prismarine_bricks []
fill ~-3 ~1 ~-4 ~3 ~10 ~4 air []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 oak_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~11 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~11 ~-5 ~4 ~11 ~5 sandstone []
fill ~-3 ~12 ~-4 ~3 ~13 ~4 glass []
fill ~-2 ~12 ~-3 ~2 ~12 ~3 air []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_sandstone []
setblock ~0 ~4 ~-7 sea_lantern []
setblock ~0 ~5 ~-7 sea_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_sandstone []
setblock ~0 ~4 ~7 sea_lantern []
setblock ~0 ~5 ~7 sea_lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 chiseled_sandstone []
setblock ~-6 ~4 ~0 sea_lantern []
setblock ~-6 ~5 ~0 sea_lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 chiseled_sandstone []
setblock ~6 ~4 ~0 sea_lantern []
setblock ~6 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~9 ~-9 sandstone []
setblock ~-2 ~10 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 13
replaceitem block ~3 ~1 ~4 slot.container 1 copper_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 2 trident 8
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 nautilus_shell 3
replaceitem block ~3 ~1 ~4 slot.container 5 prismarine_shard 8
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~3 ~1 ~4 slot.container 10 gold_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 11 emerald 10
replaceitem block ~3 ~1 ~4 slot.container 12 tnt 2
replaceitem block ~3 ~1 ~4 slot.container 13 fishing_rod 1
replaceitem block ~3 ~1 ~4 slot.container 14 boat 1
loot insert ~3 ~1 ~4 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
