# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2479/4224 | 主题内编号: b047/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·深渊跨桥决斗长台 (beach_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 nautilus_shell 8
replaceitem block ~-4 ~-4 ~3 slot.container 1 prismarine_shard 13
replaceitem block ~-4 ~-4 ~3 slot.container 2 bone 8
replaceitem block ~-4 ~-4 ~3 slot.container 3 gunpowder 9
replaceitem block ~-4 ~-4 ~3 slot.container 4 string 10
replaceitem block ~-4 ~-4 ~3 slot.container 5 copper_ingot 11
replaceitem block ~-4 ~-4 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~-4 ~3 slot.container 10 gold_ingot 9
replaceitem block ~-4 ~-4 ~3 slot.container 11 emerald 8
replaceitem block ~-4 ~-4 ~3 slot.container 12 tnt 7
replaceitem block ~-4 ~-4 ~3 slot.container 13 fishing_rod 1
replaceitem block ~-4 ~-4 ~3 slot.container 14 boat 1
loot insert ~-4 ~-4 ~3 loot "rsf/beach"
loot insert ~-4 ~-4 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 torch []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 torch []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 torch []
fill ~6 ~7 ~5 ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 spruce_log []
setblock ~-8 ~6 ~-7 torch []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 spruce_log []
setblock ~-8 ~6 ~7 torch []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 spruce_log []
setblock ~8 ~6 ~-7 torch []
fill ~8 ~0 ~7 ~8 ~5 ~7 spruce_log []
setblock ~8 ~6 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 sandstone []
setblock ~-2 ~8 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 prismarine []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 trident 8
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 2 nautilus_shell 3
replaceitem block ~5 ~1 ~4 slot.container 3 prismarine_shard 8
replaceitem block ~5 ~1 ~4 slot.container 4 bone 11
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 9 fishing_rod 1
replaceitem block ~5 ~1 ~4 slot.container 10 boat 1
replaceitem block ~5 ~1 ~4 slot.container 11 lantern 7
replaceitem block ~5 ~1 ~4 slot.container 12 heart_of_the_sea 5
replaceitem block ~5 ~1 ~4 slot.container 13 cooked_cod 13
replaceitem block ~5 ~1 ~4 slot.container 14 cooked_salmon 14
loot insert ~5 ~1 ~4 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
