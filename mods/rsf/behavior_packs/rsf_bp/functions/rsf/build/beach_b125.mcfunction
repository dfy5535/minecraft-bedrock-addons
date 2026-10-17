# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2557/4224 | 主题内编号: b125/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·巨型阶梯金字塔神王殿 (beach_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 sandstone []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 emerald_block []
setblock ~0 ~-7 ~0 sea_lantern []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 string 10
replaceitem block ~4 ~-4 ~0 slot.container 1 copper_ingot 11
replaceitem block ~4 ~-4 ~0 slot.container 2 trident 5
replaceitem block ~4 ~-4 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-4 ~0 slot.container 4 nautilus_shell 8
replaceitem block ~4 ~-4 ~0 slot.container 5 prismarine_shard 13
replaceitem block ~4 ~-4 ~0 slot.container 9 fishing_rod 1
replaceitem block ~4 ~-4 ~0 slot.container 10 boat 1
replaceitem block ~4 ~-4 ~0 slot.container 11 lantern 6
replaceitem block ~4 ~-4 ~0 slot.container 12 heart_of_the_sea 4
replaceitem block ~4 ~-4 ~0 slot.container 13 cooked_cod 12
replaceitem block ~4 ~-4 ~0 slot.container 14 cooked_salmon 13
loot insert ~4 ~-4 ~0 loot "rsf/beach"
loot insert ~4 ~-4 ~0 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 prismarine_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 sandstone []
fill ~-4 ~5 ~-5 ~4 ~10 ~5 sandstone []
fill ~-4 ~1 ~-5 ~4 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~11 ~-7 ~6 ~11 ~7 sandstone []
fill ~-5 ~12 ~-6 ~5 ~12 ~6 sandstone []
fill ~-1 ~13 ~-1 ~1 ~13 ~1 emerald_block []
setblock ~0 ~14 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 chiseled_sandstone []
setblock ~0 ~4 ~-9 sea_lantern []
setblock ~0 ~5 ~-9 sea_lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 chiseled_sandstone []
setblock ~0 ~4 ~9 sea_lantern []
setblock ~0 ~5 ~9 sea_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_sandstone []
setblock ~-8 ~4 ~0 sea_lantern []
setblock ~-8 ~5 ~0 sea_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_sandstone []
setblock ~8 ~4 ~0 sea_lantern []
setblock ~8 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~5 ~-11 sandstone []
setblock ~-2 ~6 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 prismarine []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 13
replaceitem block ~5 ~1 ~6 slot.container 1 copper_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 2 trident 8
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 nautilus_shell 3
replaceitem block ~5 ~1 ~6 slot.container 5 prismarine_shard 8
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_cod 10
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_salmon 11
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 14 tnt 2
loot insert ~5 ~1 ~6 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
