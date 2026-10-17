# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2447/4224 | 主题内编号: b015/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·竖井阶梯深渊地牢 (beach_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 6格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 torch []
setblock ~2 ~-7 ~-3 torch []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 nautilus_shell 8
replaceitem block ~2 ~-5 ~3 slot.container 1 prismarine_shard 13
replaceitem block ~2 ~-5 ~3 slot.container 2 bone 8
replaceitem block ~2 ~-5 ~3 slot.container 3 gunpowder 9
replaceitem block ~2 ~-5 ~3 slot.container 4 string 10
replaceitem block ~2 ~-5 ~3 slot.container 5 copper_ingot 11
replaceitem block ~2 ~-5 ~3 slot.container 9 iron_ingot 14
replaceitem block ~2 ~-5 ~3 slot.container 10 gold_ingot 6
replaceitem block ~2 ~-5 ~3 slot.container 11 emerald 5
replaceitem block ~2 ~-5 ~3 slot.container 12 tnt 4
replaceitem block ~2 ~-5 ~3 slot.container 13 fishing_rod 1
replaceitem block ~2 ~-5 ~3 slot.container 14 boat 1
loot insert ~2 ~-5 ~3 loot "rsf/beach"
loot insert ~2 ~-5 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 stone_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 cobblestone []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 oak_planks []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 cobblestone []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 stone_bricks []
fill ~0 ~14 ~0 ~0 ~14 ~0 prismarine []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 spruce_log []
setblock ~-6 ~6 ~-7 torch []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 spruce_log []
setblock ~-6 ~6 ~7 torch []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 spruce_log []
setblock ~6 ~6 ~-7 torch []
fill ~6 ~0 ~7 ~6 ~5 ~7 spruce_log []
setblock ~6 ~6 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~5 ~-10 sandstone []
setblock ~-2 ~6 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 trident 8
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 nautilus_shell 3
replaceitem block ~3 ~1 ~4 slot.container 3 prismarine_shard 8
replaceitem block ~3 ~1 ~4 slot.container 4 bone 11
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 9 cooked_cod 12
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_salmon 13
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 12 gold_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 14 tnt 4
loot insert ~3 ~1 ~4 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-5 ~0
