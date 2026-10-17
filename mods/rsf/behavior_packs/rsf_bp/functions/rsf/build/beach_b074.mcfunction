# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2506/4224 | 主题内编号: b074/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·十字四象图腾柱阵 (beach_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 sandstone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 sea_lantern []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 prismarine_shard 13
replaceitem block ~3 ~-2 ~0 slot.container 1 bone 8
replaceitem block ~3 ~-2 ~0 slot.container 2 gunpowder 9
replaceitem block ~3 ~-2 ~0 slot.container 3 string 10
replaceitem block ~3 ~-2 ~0 slot.container 4 copper_ingot 11
replaceitem block ~3 ~-2 ~0 slot.container 5 trident 5
replaceitem block ~3 ~-2 ~0 slot.container 9 gold_ingot 11
replaceitem block ~3 ~-2 ~0 slot.container 10 emerald 10
replaceitem block ~3 ~-2 ~0 slot.container 11 tnt 2
replaceitem block ~3 ~-2 ~0 slot.container 12 fishing_rod 1
replaceitem block ~3 ~-2 ~0 slot.container 13 boat 1
replaceitem block ~3 ~-2 ~0 slot.container 14 lantern 7
loot insert ~3 ~-2 ~0 loot "rsf/beach"
loot insert ~3 ~-2 ~0 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 sandstone []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 sandstone []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 oak_fence []
setblock ~5 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~8 ~-6 ~-5 ~10 ~-6 oak_log []
setblock ~-5 ~11 ~-6 lantern []
fill ~-5 ~8 ~6 ~-5 ~10 ~6 oak_log []
setblock ~-5 ~11 ~6 lantern []
fill ~5 ~8 ~-6 ~5 ~10 ~-6 oak_log []
setblock ~5 ~11 ~-6 lantern []
fill ~5 ~8 ~6 ~5 ~10 ~6 oak_log []
setblock ~5 ~11 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 oak_log []
setblock ~-7 ~6 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 oak_log []
setblock ~-7 ~6 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 oak_log []
setblock ~7 ~6 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 oak_log []
setblock ~7 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~9 ~-10 sandstone []
setblock ~-2 ~10 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 prismarine_shard 8
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 13
replaceitem block ~-4 ~1 ~5 slot.container 4 copper_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 5 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 5
replaceitem block ~-4 ~1 ~5 slot.container 11 heart_of_the_sea 3
replaceitem block ~-4 ~1 ~5 slot.container 12 cooked_cod 11
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_salmon 12
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 13
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 8
replaceitem block ~4 ~1 ~5 slot.container 2 copper_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 3 trident 3
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 nautilus_shell 6
replaceitem block ~4 ~1 ~5 slot.container 9 boat 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 11 heart_of_the_sea 1
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_cod 9
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_salmon 10
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 11
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
