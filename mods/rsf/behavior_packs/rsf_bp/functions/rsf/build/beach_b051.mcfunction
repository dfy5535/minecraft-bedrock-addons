# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2483/4224 | 主题内编号: b051/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·带哨塔围栏探险营地 (beach_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~8 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 cobblestone_wall []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 spruce_log []
setblock ~-5 ~10 ~-6 torch []
setblock ~-5 ~9 ~6 spruce_log []
setblock ~-5 ~10 ~6 torch []
setblock ~5 ~9 ~-6 spruce_log []
setblock ~5 ~10 ~-6 torch []
setblock ~5 ~9 ~6 spruce_log []
setblock ~5 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 oak_planks []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~6 ~-11 sandstone []
setblock ~-2 ~7 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 11
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 2 string 13
replaceitem block ~4 ~1 ~5 slot.container 3 copper_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 4 trident 8
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 10 heart_of_the_sea 7
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_cod 8
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_salmon 9
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 9
loot insert ~4 ~1 ~5 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~2 ~0
