# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2503/4224 | 主题内编号: b071/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·残破双子哨所遗迹 (beach_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~10 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~9 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~5 ~9 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~4 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 cobblestone []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 sandstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~6 ~-9 sandstone []
setblock ~-2 ~7 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 trident 8
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 2 nautilus_shell 3
replaceitem block ~4 ~1 ~4 slot.container 3 prismarine_shard 8
replaceitem block ~4 ~1 ~4 slot.container 4 bone 11
replaceitem block ~4 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~4 ~1 ~4 slot.container 10 heart_of_the_sea 6
replaceitem block ~4 ~1 ~4 slot.container 11 cooked_cod 14
replaceitem block ~4 ~1 ~4 slot.container 12 cooked_salmon 8
replaceitem block ~4 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~4 ~1 ~4 slot.container 14 gold_ingot 8
loot insert ~4 ~1 ~4 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
