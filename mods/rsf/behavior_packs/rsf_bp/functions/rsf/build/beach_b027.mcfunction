# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2459/4224 | 主题内编号: b027/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双子连廊警戒塔楼 (beach_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~11 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~5 ~11 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~10 ~3 air []
fill ~3 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 cobblestone []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 cobblestone []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 cobblestone_wall []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 air []
setblock ~-5 ~11 ~-4 spruce_log []
setblock ~-5 ~12 ~-4 torch []
setblock ~-5 ~11 ~4 spruce_log []
setblock ~-5 ~12 ~4 torch []
setblock ~5 ~11 ~-4 spruce_log []
setblock ~5 ~12 ~-4 torch []
setblock ~5 ~11 ~4 spruce_log []
setblock ~5 ~12 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 cobblestone []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-5 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 sandstone []
setblock ~-2 ~8 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 11
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 13
replaceitem block ~4 ~1 ~3 slot.container 3 copper_ingot 14
replaceitem block ~4 ~1 ~3 slot.container 4 trident 8
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 9 fishing_rod 1
replaceitem block ~4 ~1 ~3 slot.container 10 boat 1
replaceitem block ~4 ~1 ~3 slot.container 11 lantern 8
replaceitem block ~4 ~1 ~3 slot.container 12 heart_of_the_sea 6
replaceitem block ~4 ~1 ~3 slot.container 13 cooked_cod 14
replaceitem block ~4 ~1 ~3 slot.container 14 cooked_salmon 8
loot insert ~4 ~1 ~3 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~2 ~0
