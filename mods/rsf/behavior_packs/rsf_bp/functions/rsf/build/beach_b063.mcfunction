# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2495/4224 | 主题内编号: b063/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·方尖碑镇压古墓穴 (beach_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 string 10
replaceitem block ~0 ~-4 ~3 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-4 ~3 slot.container 2 trident 5
replaceitem block ~0 ~-4 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~3 slot.container 4 nautilus_shell 8
replaceitem block ~0 ~-4 ~3 slot.container 5 prismarine_shard 13
replaceitem block ~0 ~-4 ~3 slot.container 9 fishing_rod 1
replaceitem block ~0 ~-4 ~3 slot.container 10 boat 1
replaceitem block ~0 ~-4 ~3 slot.container 11 lantern 8
replaceitem block ~0 ~-4 ~3 slot.container 12 heart_of_the_sea 6
replaceitem block ~0 ~-4 ~3 slot.container 13 cooked_cod 14
replaceitem block ~0 ~-4 ~3 slot.container 14 cooked_salmon 8
loot insert ~0 ~-4 ~3 loot "rsf/beach"
loot insert ~0 ~-4 ~3 loot "chests/buriedtreasure"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 string 8
replaceitem block ~0 ~-4 ~-3 slot.container 1 copper_ingot 9
replaceitem block ~0 ~-4 ~-3 slot.container 2 trident 3
replaceitem block ~0 ~-4 ~-3 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-4 ~-3 slot.container 4 nautilus_shell 6
replaceitem block ~0 ~-4 ~-3 slot.container 5 prismarine_shard 11
replaceitem block ~0 ~-4 ~-3 slot.container 9 fishing_rod 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 boat 1
replaceitem block ~0 ~-4 ~-3 slot.container 11 lantern 7
replaceitem block ~0 ~-4 ~-3 slot.container 12 heart_of_the_sea 5
replaceitem block ~0 ~-4 ~-3 slot.container 13 cooked_cod 13
replaceitem block ~0 ~-4 ~-3 slot.container 14 cooked_salmon 14
loot insert ~0 ~-4 ~-3 loot "rsf/beach"
loot insert ~0 ~-4 ~-3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~11 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~11 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~11 ~5 air []
fill ~4 ~1 ~5 ~4 ~11 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 spruce_log []
fill ~3 ~1 ~4 ~3 ~10 ~4 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 cobblestone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~16 ~0 prismarine []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~8 ~-10 sandstone []
setblock ~-2 ~9 ~-10 sea_lantern []

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
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 10 tnt 6
replaceitem block ~3 ~1 ~4 slot.container 11 fishing_rod 1
replaceitem block ~3 ~1 ~4 slot.container 12 boat 1
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~3 ~1 ~4 slot.container 14 heart_of_the_sea 2
loot insert ~3 ~1 ~4 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-4 ~0
