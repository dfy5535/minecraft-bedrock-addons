# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2525/4224 | 主题内编号: b093/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·U型庭院神道祈福祠 (beach_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 sandstone []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 prismarine_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 smooth_sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 sandstone_slab []
fill ~-4 ~8 ~-5 ~4 ~9 ~5 sandstone []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 oak_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 sandstone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 chiseled_sandstone []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 chiseled_sandstone []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 sandstone_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~8 ~-11 sandstone []
setblock ~-2 ~9 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~5 smoker []
setblock ~4 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 13
replaceitem block ~4 ~1 ~5 slot.container 1 copper_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 2 trident 8
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 nautilus_shell 3
replaceitem block ~4 ~1 ~5 slot.container 5 prismarine_shard 8
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 10 tnt 8
replaceitem block ~4 ~1 ~5 slot.container 11 fishing_rod 1
replaceitem block ~4 ~1 ~5 slot.container 12 boat 1
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 14 heart_of_the_sea 4
loot insert ~4 ~1 ~5 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~2 ~0
