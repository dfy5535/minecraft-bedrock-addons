# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2455/4224 | 主题内编号: b023/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双层露台阁楼宝室 (beach_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 stone_bricks [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 stone_bricks [] replace water
fill ~-5 ~1 ~-7 ~5 ~11 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 sandstone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~4 ~6 stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-5 ~4 ~-7 ~5 ~4 ~7 stone_brick_slab []
fill ~-3 ~5 ~-5 ~3 ~9 ~5 oak_planks []
fill ~-2 ~5 ~-4 ~2 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-7 ~5 ~9 ~7 stone_brick_slab []
fill ~-3 ~10 ~-5 ~3 ~11 ~5 oak_planks []
fill ~-4 ~12 ~-6 ~4 ~12 ~6 oak_slab []
setblock ~0 ~13 ~0 prismarine []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~11 ~2 oak_planks []
fill ~5 ~1 ~-1 ~6 ~10 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~12 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~8 ~-10 sandstone []
setblock ~-2 ~9 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 trident 8
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 nautilus_shell 3
replaceitem block ~3 ~1 ~5 slot.container 3 prismarine_shard 8
replaceitem block ~3 ~1 ~5 slot.container 4 bone 11
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 9 emerald 9
replaceitem block ~3 ~1 ~5 slot.container 10 tnt 8
replaceitem block ~3 ~1 ~5 slot.container 11 fishing_rod 1
replaceitem block ~3 ~1 ~5 slot.container 12 boat 1
replaceitem block ~3 ~1 ~5 slot.container 13 lantern 6
replaceitem block ~3 ~1 ~5 slot.container 14 heart_of_the_sea 4
loot insert ~3 ~1 ~5 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
