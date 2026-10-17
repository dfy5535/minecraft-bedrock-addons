# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2509/4224 | 主题内编号: b077/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双子鸟居图腾神道 (beach_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 prismarine_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 prismarine_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 sandstone []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 prismarine_bricks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 sandstone_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 sandstone []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 oak_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 sandstone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 sea_lantern []
setblock ~2 ~4 ~-8 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 sandstone []
setblock ~-2 ~8 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 prismarine []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 string 13
replaceitem block ~4 ~1 ~4 slot.container 1 copper_ingot 14
replaceitem block ~4 ~1 ~4 slot.container 2 trident 8
replaceitem block ~4 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 4 nautilus_shell 3
replaceitem block ~4 ~1 ~4 slot.container 5 prismarine_shard 8
replaceitem block ~4 ~1 ~4 slot.container 9 fishing_rod 1
replaceitem block ~4 ~1 ~4 slot.container 10 boat 1
replaceitem block ~4 ~1 ~4 slot.container 11 lantern 9
replaceitem block ~4 ~1 ~4 slot.container 12 heart_of_the_sea 7
replaceitem block ~4 ~1 ~4 slot.container 13 cooked_cod 8
replaceitem block ~4 ~1 ~4 slot.container 14 cooked_salmon 9
loot insert ~4 ~1 ~4 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
