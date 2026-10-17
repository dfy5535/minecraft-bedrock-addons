# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2559/4224 | 主题内编号: b127/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·万神殿巨型穹顶与试炼宫 (beach_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 prismarine []
setblock ~-4 ~-6 ~-5 torch []
setblock ~4 ~-6 ~5 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 trident 5
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~5 slot.container 2 nautilus_shell 8
replaceitem block ~0 ~-4 ~5 slot.container 3 prismarine_shard 13
replaceitem block ~0 ~-4 ~5 slot.container 4 bone 8
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 9
replaceitem block ~0 ~-4 ~5 slot.container 9 lantern 5
replaceitem block ~0 ~-4 ~5 slot.container 10 heart_of_the_sea 3
replaceitem block ~0 ~-4 ~5 slot.container 11 cooked_cod 11
replaceitem block ~0 ~-4 ~5 slot.container 12 cooked_salmon 12
replaceitem block ~0 ~-4 ~5 slot.container 13 iron_ingot 13
replaceitem block ~0 ~-4 ~5 slot.container 14 gold_ingot 12
loot insert ~0 ~-4 ~5 loot "rsf/beach"
loot insert ~0 ~-4 ~5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 cobblestone []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 spruce_log []
fill ~-6 ~1 ~7 ~-6 ~8 ~7 spruce_log []
fill ~-4 ~1 ~-7 ~-4 ~8 ~-7 spruce_log []
fill ~-4 ~1 ~7 ~-4 ~8 ~7 spruce_log []
fill ~-2 ~1 ~-7 ~-2 ~8 ~-7 spruce_log []
fill ~-2 ~1 ~7 ~-2 ~8 ~7 spruce_log []
fill ~0 ~1 ~-7 ~0 ~8 ~-7 spruce_log []
fill ~0 ~1 ~7 ~0 ~8 ~7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~8 ~-7 spruce_log []
fill ~2 ~1 ~7 ~2 ~8 ~7 spruce_log []
fill ~4 ~1 ~-7 ~4 ~8 ~-7 spruce_log []
fill ~4 ~1 ~7 ~4 ~8 ~7 spruce_log []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 spruce_log []
fill ~6 ~1 ~7 ~6 ~8 ~7 spruce_log []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~8 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~8 ~3 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 spruce_log []
fill ~6 ~1 ~5 ~6 ~8 ~5 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 cobblestone []
fill ~-5 ~10 ~-6 ~5 ~11 ~6 glass []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 spruce_log []
setblock ~0 ~4 ~-9 gold_block []
setblock ~0 ~5 ~-9 torch []
fill ~0 ~0 ~9 ~0 ~3 ~9 spruce_log []
setblock ~0 ~4 ~9 gold_block []
setblock ~0 ~5 ~9 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~7 ~-10 sandstone []
setblock ~-2 ~8 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 trident 8
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 2 nautilus_shell 3
replaceitem block ~5 ~1 ~6 slot.container 3 prismarine_shard 8
replaceitem block ~5 ~1 ~6 slot.container 4 bone 11
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 9 fishing_rod 1
replaceitem block ~5 ~1 ~6 slot.container 10 boat 1
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 12 heart_of_the_sea 1
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_cod 9
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_salmon 10
loot insert ~5 ~1 ~6 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
