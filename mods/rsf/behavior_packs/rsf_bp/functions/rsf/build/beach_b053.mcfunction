# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2485/4224 | 主题内编号: b053/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·测绘师观景制图站 (beach_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 prismarine_bricks [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 sandstone []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 prismarine_bricks []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 chiseled_sandstone []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 chiseled_sandstone []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 chiseled_sandstone []
fill ~3 ~1 ~4 ~3 ~8 ~4 chiseled_sandstone []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 sandstone []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 sandstone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 emerald_block []
setblock ~0 ~12 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 sandstone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~8 ~-9 sandstone []
setblock ~-2 ~9 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 prismarine []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 13
replaceitem block ~3 ~1 ~4 slot.container 1 copper_ingot 14
replaceitem block ~3 ~1 ~4 slot.container 2 trident 8
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 4 nautilus_shell 3
replaceitem block ~3 ~1 ~4 slot.container 5 prismarine_shard 8
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 4
replaceitem block ~3 ~1 ~4 slot.container 10 tnt 3
replaceitem block ~3 ~1 ~4 slot.container 11 fishing_rod 1
replaceitem block ~3 ~1 ~4 slot.container 12 boat 1
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 8
replaceitem block ~3 ~1 ~4 slot.container 14 heart_of_the_sea 6
loot insert ~3 ~1 ~4 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
