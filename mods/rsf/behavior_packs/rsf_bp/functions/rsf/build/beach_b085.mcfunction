# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2517/4224 | 主题内编号: b085/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双子烟囱砖石窑厂 (beach_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 prismarine_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 prismarine_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~11 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 prismarine_bricks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 nautilus_shell 8
replaceitem block ~3 ~-3 ~3 slot.container 1 prismarine_shard 13
replaceitem block ~3 ~-3 ~3 slot.container 2 bone 8
replaceitem block ~3 ~-3 ~3 slot.container 3 gunpowder 9
replaceitem block ~3 ~-3 ~3 slot.container 4 string 10
replaceitem block ~3 ~-3 ~3 slot.container 5 copper_ingot 11
replaceitem block ~3 ~-3 ~3 slot.container 9 fishing_rod 1
replaceitem block ~3 ~-3 ~3 slot.container 10 boat 1
replaceitem block ~3 ~-3 ~3 slot.container 11 lantern 9
replaceitem block ~3 ~-3 ~3 slot.container 12 heart_of_the_sea 7
replaceitem block ~3 ~-3 ~3 slot.container 13 cooked_cod 8
replaceitem block ~3 ~-3 ~3 slot.container 14 cooked_salmon 9
loot insert ~3 ~-3 ~3 loot "rsf/beach"
loot insert ~3 ~-3 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~10 ~5 prismarine_bricks []
fill ~2 ~1 ~-5 ~5 ~10 ~5 prismarine_bricks []
fill ~-4 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~4 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 sandstone []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 sandstone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 prismarine_bricks []
fill ~0 ~15 ~0 ~0 ~15 ~0 emerald_block []
setblock ~0 ~16 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 sandstone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~5 ~-8 sandstone []
setblock ~-2 ~6 ~-8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 13
replaceitem block ~4 ~1 ~4 slot.container 1 copper_ingot 14
replaceitem block ~4 ~1 ~4 slot.container 2 trident 8
replaceitem block ~4 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 4 nautilus_shell 3
replaceitem block ~4 ~1 ~4 slot.container 5 prismarine_shard 8
replaceitem block ~4 ~1 ~4 slot.container 9 cooked_cod 12
replaceitem block ~4 ~1 ~4 slot.container 10 cooked_salmon 13
replaceitem block ~4 ~1 ~4 slot.container 11 iron_ingot 14
replaceitem block ~4 ~1 ~4 slot.container 12 gold_ingot 6
replaceitem block ~4 ~1 ~4 slot.container 13 emerald 5
replaceitem block ~4 ~1 ~4 slot.container 14 tnt 4
loot insert ~4 ~1 ~4 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
