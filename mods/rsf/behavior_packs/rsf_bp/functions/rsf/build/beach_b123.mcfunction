# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2555/4224 | 主题内编号: b123/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·四角塔楼领主城堡复合体 (beach_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 torch []
setblock ~4 ~-6 ~-5 torch []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 string 10
replaceitem block ~4 ~-4 ~5 slot.container 1 copper_ingot 11
replaceitem block ~4 ~-4 ~5 slot.container 2 trident 5
replaceitem block ~4 ~-4 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-4 ~5 slot.container 4 nautilus_shell 8
replaceitem block ~4 ~-4 ~5 slot.container 5 prismarine_shard 13
replaceitem block ~4 ~-4 ~5 slot.container 9 fishing_rod 1
replaceitem block ~4 ~-4 ~5 slot.container 10 boat 1
replaceitem block ~4 ~-4 ~5 slot.container 11 lantern 8
replaceitem block ~4 ~-4 ~5 slot.container 12 heart_of_the_sea 6
replaceitem block ~4 ~-4 ~5 slot.container 13 cooked_cod 14
replaceitem block ~4 ~-4 ~5 slot.container 14 cooked_salmon 8
loot insert ~4 ~-4 ~5 loot "rsf/beach"
loot insert ~4 ~-4 ~5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~11 ~-6 cobblestone []
setblock ~-6 ~12 ~-7 torch []
fill ~-6 ~1 ~6 ~-5 ~11 ~7 cobblestone []
setblock ~-6 ~12 ~6 torch []
fill ~5 ~1 ~-7 ~6 ~11 ~-6 cobblestone []
setblock ~5 ~12 ~-7 torch []
fill ~5 ~1 ~6 ~6 ~11 ~7 cobblestone []
setblock ~5 ~12 ~6 torch []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 cobblestone []
fill ~-6 ~10 ~-7 ~6 ~10 ~7 cobblestone_wall []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 air []
setblock ~-6 ~10 ~-7 spruce_log []
setblock ~-6 ~11 ~-7 torch []
setblock ~-6 ~10 ~7 spruce_log []
setblock ~-6 ~11 ~7 torch []
setblock ~6 ~10 ~-7 spruce_log []
setblock ~6 ~11 ~-7 torch []
setblock ~6 ~10 ~7 spruce_log []
setblock ~6 ~11 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobblestone_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x10x5) ---
fill ~-1 ~0 ~-12 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-12 ~-2 ~8 ~-12 sandstone []
setblock ~-2 ~9 ~-12 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 13
replaceitem block ~5 ~1 ~6 slot.container 3 copper_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 4 trident 8
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 4
replaceitem block ~5 ~1 ~6 slot.container 10 tnt 3
replaceitem block ~5 ~1 ~6 slot.container 11 fishing_rod 1
replaceitem block ~5 ~1 ~6 slot.container 12 boat 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 8
replaceitem block ~5 ~1 ~6 slot.container 14 heart_of_the_sea 6
loot insert ~5 ~1 ~6 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-4 ~0
