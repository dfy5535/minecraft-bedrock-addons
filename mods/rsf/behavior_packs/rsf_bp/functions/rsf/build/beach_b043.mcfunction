# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2475/4224 | 主题内编号: b043/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·十字四门试炼擂台 (beach_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~7 ~7 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~6 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 cobblestone []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 cobblestone_wall []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 spruce_log []
setblock ~-6 ~9 ~-7 torch []
setblock ~-6 ~8 ~7 spruce_log []
setblock ~-6 ~9 ~7 torch []
setblock ~6 ~8 ~-7 spruce_log []
setblock ~6 ~9 ~-7 torch []
setblock ~6 ~8 ~7 spruce_log []
setblock ~6 ~9 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 cobblestone []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 torch []
setblock ~2 ~4 ~-10 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~8 ~-10 sandstone []
setblock ~-2 ~9 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 13
replaceitem block ~5 ~1 ~6 slot.container 3 copper_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 4 trident 8
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 8
replaceitem block ~5 ~1 ~6 slot.container 10 tnt 7
replaceitem block ~5 ~1 ~6 slot.container 11 fishing_rod 1
replaceitem block ~5 ~1 ~6 slot.container 12 boat 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 5
replaceitem block ~5 ~1 ~6 slot.container 14 heart_of_the_sea 3
loot insert ~5 ~1 ~6 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
