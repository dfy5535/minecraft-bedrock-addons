# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2527/4224 | 主题内编号: b095/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双子灯笼守卫神龛 (beach_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~9 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 cobblestone []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_brick_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 oak_planks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 oak_slab []
setblock ~0 ~12 ~0 prismarine []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 spruce_log []
setblock ~-7 ~6 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 spruce_log []
setblock ~-7 ~6 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 spruce_log []
setblock ~7 ~6 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~5 ~6 spruce_log []
setblock ~7 ~6 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-5 oak_slab []
fill ~-2 ~0 ~-8 ~-2 ~5 ~-8 sandstone []
setblock ~-2 ~6 ~-8 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 prismarine []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 trident 8
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 nautilus_shell 3
replaceitem block ~4 ~1 ~3 slot.container 3 prismarine_shard 8
replaceitem block ~4 ~1 ~3 slot.container 4 bone 11
replaceitem block ~4 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 9 cooked_cod 8
replaceitem block ~4 ~1 ~3 slot.container 10 cooked_salmon 9
replaceitem block ~4 ~1 ~3 slot.container 11 iron_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 12 gold_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 13 emerald 8
replaceitem block ~4 ~1 ~3 slot.container 14 tnt 7
loot insert ~4 ~1 ~3 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
