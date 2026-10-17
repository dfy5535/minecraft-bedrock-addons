# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2531/4224 | 主题内编号: b099/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·铁闸门瓮城防御堡 (beach_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 oak_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 trident 5
replaceitem block ~3 ~-3 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-3 ~3 slot.container 2 nautilus_shell 8
replaceitem block ~3 ~-3 ~3 slot.container 3 prismarine_shard 13
replaceitem block ~3 ~-3 ~3 slot.container 4 bone 8
replaceitem block ~3 ~-3 ~3 slot.container 5 gunpowder 9
replaceitem block ~3 ~-3 ~3 slot.container 9 fishing_rod 1
replaceitem block ~3 ~-3 ~3 slot.container 10 boat 1
replaceitem block ~3 ~-3 ~3 slot.container 11 lantern 6
replaceitem block ~3 ~-3 ~3 slot.container 12 heart_of_the_sea 4
replaceitem block ~3 ~-3 ~3 slot.container 13 cooked_cod 12
replaceitem block ~3 ~-3 ~3 slot.container 14 cooked_salmon 13
loot insert ~3 ~-3 ~3 loot "rsf/beach"
loot insert ~3 ~-3 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~8 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 cobblestone []
fill ~-5 ~9 ~-5 ~5 ~9 ~5 cobblestone_wall []
fill ~-4 ~9 ~-4 ~4 ~9 ~4 air []
setblock ~-5 ~9 ~-5 spruce_log []
setblock ~-5 ~10 ~-5 torch []
setblock ~-5 ~9 ~5 spruce_log []
setblock ~-5 ~10 ~5 torch []
setblock ~5 ~9 ~-5 spruce_log []
setblock ~5 ~10 ~-5 torch []
setblock ~5 ~9 ~5 spruce_log []
setblock ~5 ~10 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~9 ~-10 sandstone []
setblock ~-2 ~10 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 11
replaceitem block ~4 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~4 slot.container 2 string 13
replaceitem block ~4 ~1 ~4 slot.container 3 copper_ingot 14
replaceitem block ~4 ~1 ~4 slot.container 4 trident 8
replaceitem block ~4 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~4 ~1 ~4 slot.container 10 gold_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 11 emerald 10
replaceitem block ~4 ~1 ~4 slot.container 12 tnt 2
replaceitem block ~4 ~1 ~4 slot.container 13 fishing_rod 1
replaceitem block ~4 ~1 ~4 slot.container 14 boat 1
loot insert ~4 ~1 ~4 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
