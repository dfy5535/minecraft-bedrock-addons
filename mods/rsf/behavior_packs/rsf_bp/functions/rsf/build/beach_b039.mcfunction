# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2471/4224 | 主题内编号: b039/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·永恒圣火图腾方尖塔 (beach_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~13 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 stone_bricks []
fill ~-1 ~-5 ~-2 ~1 ~-1 ~2 air []
setblock ~-1 ~-5 ~0 blast_furnace []
setblock ~1 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~2 anvil []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~1 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-3 ~2 slot.container 0 bone 8
replaceitem block ~1 ~-3 ~2 slot.container 1 gunpowder 9
replaceitem block ~1 ~-3 ~2 slot.container 2 string 10
replaceitem block ~1 ~-3 ~2 slot.container 3 copper_ingot 11
replaceitem block ~1 ~-3 ~2 slot.container 4 trident 5
replaceitem block ~1 ~-3 ~2 slot.container 5 rotten_flesh 17
replaceitem block ~1 ~-3 ~2 slot.container 9 lantern 10
replaceitem block ~1 ~-3 ~2 slot.container 10 heart_of_the_sea 1
replaceitem block ~1 ~-3 ~2 slot.container 11 cooked_cod 9
replaceitem block ~1 ~-3 ~2 slot.container 12 cooked_salmon 10
replaceitem block ~1 ~-3 ~2 slot.container 13 iron_ingot 11
replaceitem block ~1 ~-3 ~2 slot.container 14 gold_ingot 10
loot insert ~1 ~-3 ~2 loot "rsf/beach"
loot insert ~1 ~-3 ~2 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~11 ~4 stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~10 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 spruce_log []
fill ~3 ~1 ~4 ~3 ~11 ~4 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 cobblestone []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 stone_bricks []
fill ~0 ~17 ~0 ~0 ~17 ~0 prismarine []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 spruce_log []
setblock ~0 ~4 ~-6 gold_block []
setblock ~0 ~5 ~-6 torch []
fill ~0 ~0 ~6 ~0 ~3 ~6 spruce_log []
setblock ~0 ~4 ~6 gold_block []
setblock ~0 ~5 ~6 torch []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 spruce_log []
setblock ~-5 ~4 ~0 gold_block []
setblock ~-5 ~5 ~0 torch []
fill ~5 ~0 ~0 ~5 ~3 ~0 spruce_log []
setblock ~5 ~4 ~0 gold_block []
setblock ~5 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-5 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~9 ~-9 sandstone []
setblock ~-2 ~10 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 trident 8
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 nautilus_shell 3
replaceitem block ~2 ~1 ~3 slot.container 3 prismarine_shard 8
replaceitem block ~2 ~1 ~3 slot.container 4 bone 11
replaceitem block ~2 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 9 iron_ingot 8
replaceitem block ~2 ~1 ~3 slot.container 10 gold_ingot 7
replaceitem block ~2 ~1 ~3 slot.container 11 emerald 6
replaceitem block ~2 ~1 ~3 slot.container 12 tnt 5
replaceitem block ~2 ~1 ~3 slot.container 13 fishing_rod 1
replaceitem block ~2 ~1 ~3 slot.container 14 boat 1
loot insert ~2 ~1 ~3 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
