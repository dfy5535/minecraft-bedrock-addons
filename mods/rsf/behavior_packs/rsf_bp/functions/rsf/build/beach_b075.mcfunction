# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2507/4224 | 主题内编号: b075/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·远古巨石环廊法阵 (beach_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cobblestone []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-5 slot.container 0 string 10
replaceitem block ~0 ~-3 ~-5 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-3 ~-5 slot.container 2 trident 5
replaceitem block ~0 ~-3 ~-5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-5 slot.container 4 nautilus_shell 8
replaceitem block ~0 ~-3 ~-5 slot.container 5 prismarine_shard 13
replaceitem block ~0 ~-3 ~-5 slot.container 9 fishing_rod 1
replaceitem block ~0 ~-3 ~-5 slot.container 10 boat 1
replaceitem block ~0 ~-3 ~-5 slot.container 11 lantern 10
replaceitem block ~0 ~-3 ~-5 slot.container 12 heart_of_the_sea 1
replaceitem block ~0 ~-3 ~-5 slot.container 13 cooked_cod 9
replaceitem block ~0 ~-3 ~-5 slot.container 14 cooked_salmon 10
loot insert ~0 ~-3 ~-5 loot "rsf/beach"
loot insert ~0 ~-3 ~-5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 cobblestone []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 spruce_log []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 spruce_log []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 spruce_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 spruce_log []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 spruce_log []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 spruce_log []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 spruce_log []
fill ~0 ~1 ~7 ~0 ~7 ~7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 spruce_log []
fill ~2 ~1 ~7 ~2 ~7 ~7 spruce_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 spruce_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 spruce_log []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 spruce_log []
fill ~6 ~1 ~7 ~6 ~7 ~7 spruce_log []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 spruce_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 spruce_log []
setblock ~-6 ~11 ~-7 torch []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 spruce_log []
setblock ~-6 ~11 ~7 torch []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 spruce_log []
setblock ~6 ~11 ~-7 torch []
fill ~6 ~8 ~7 ~6 ~10 ~7 spruce_log []
setblock ~6 ~11 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 spruce_log []
setblock ~0 ~4 ~-9 gold_block []
setblock ~0 ~5 ~-9 torch []
fill ~0 ~0 ~9 ~0 ~3 ~9 spruce_log []
setblock ~0 ~4 ~9 gold_block []
setblock ~0 ~5 ~9 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x10x2) ---
fill ~-1 ~0 ~-12 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-12 ~-2 ~5 ~-12 sandstone []
setblock ~-2 ~6 ~-12 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 emerald_block []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~0 ~2 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 13
replaceitem block ~5 ~1 ~6 slot.container 3 copper_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 4 trident 8
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_cod 9
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_salmon 10
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 9
replaceitem block ~5 ~1 ~6 slot.container 14 tnt 8
loot insert ~5 ~1 ~6 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
