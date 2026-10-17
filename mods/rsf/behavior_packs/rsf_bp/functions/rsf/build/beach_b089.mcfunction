# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2521/4224 | 主题内编号: b089/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·四柱挑檐祈愿凉亭 (beach_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 9x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 prismarine_bricks [] replace water
fill ~-4 ~1 ~-5 ~4 ~10 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 sandstone []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~8 ~4 prismarine_bricks []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 chiseled_sandstone []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 chiseled_sandstone []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 chiseled_sandstone []
fill ~3 ~1 ~4 ~3 ~8 ~4 chiseled_sandstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 sandstone_slab []
fill ~-2 ~9 ~-3 ~2 ~10 ~3 sandstone []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 oak_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 sandstone []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_sandstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_sandstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-5 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~9 ~-8 sandstone []
setblock ~-2 ~10 ~-8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 prismarine []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 nautilus_shell 3
replaceitem block ~2 ~1 ~3 slot.container 1 prismarine_shard 8
replaceitem block ~2 ~1 ~3 slot.container 2 bone 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 string 13
replaceitem block ~2 ~1 ~3 slot.container 5 copper_ingot 14
replaceitem block ~2 ~1 ~3 slot.container 9 iron_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 10 gold_ingot 8
replaceitem block ~2 ~1 ~3 slot.container 11 emerald 7
replaceitem block ~2 ~1 ~3 slot.container 12 tnt 6
replaceitem block ~2 ~1 ~3 slot.container 13 fishing_rod 1
replaceitem block ~2 ~1 ~3 slot.container 14 boat 1
loot insert ~2 ~1 ~3 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
