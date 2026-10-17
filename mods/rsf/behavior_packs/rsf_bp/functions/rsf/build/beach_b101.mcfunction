# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2533/4224 | 主题内编号: b101/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·L型驻军兵营军械所 (beach_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 prismarine_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 sandstone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 sandstone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 nautilus_shell 8
replaceitem block ~3 ~-3 ~4 slot.container 1 prismarine_shard 13
replaceitem block ~3 ~-3 ~4 slot.container 2 bone 8
replaceitem block ~3 ~-3 ~4 slot.container 3 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 4 string 10
replaceitem block ~3 ~-3 ~4 slot.container 5 copper_ingot 11
replaceitem block ~3 ~-3 ~4 slot.container 9 iron_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 10 gold_ingot 9
replaceitem block ~3 ~-3 ~4 slot.container 11 emerald 8
replaceitem block ~3 ~-3 ~4 slot.container 12 tnt 7
replaceitem block ~3 ~-3 ~4 slot.container 13 fishing_rod 1
replaceitem block ~3 ~-3 ~4 slot.container 14 boat 1
loot insert ~3 ~-3 ~4 loot "rsf/beach"
loot insert ~3 ~-3 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~8 ~6 prismarine_bricks []
fill ~-5 ~1 ~0 ~5 ~7 ~6 sandstone []
fill ~-4 ~1 ~-5 ~-1 ~7 ~5 air []
fill ~-1 ~1 ~1 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 sandstone []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 cobblestone_wall []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 chiseled_sandstone []
setblock ~-5 ~10 ~-6 sea_lantern []
setblock ~-5 ~9 ~6 chiseled_sandstone []
setblock ~-5 ~10 ~6 sea_lantern []
setblock ~5 ~9 ~-6 chiseled_sandstone []
setblock ~5 ~10 ~-6 sea_lantern []
setblock ~5 ~9 ~6 chiseled_sandstone []
setblock ~5 ~10 ~6 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 sandstone []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~6 ~-10 sandstone []
setblock ~-2 ~7 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-3 ~1 ~4 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 13
replaceitem block ~4 ~1 ~5 slot.container 1 copper_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 2 trident 8
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 4 nautilus_shell 3
replaceitem block ~4 ~1 ~5 slot.container 5 prismarine_shard 8
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 10 heart_of_the_sea 1
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_cod 9
replaceitem block ~4 ~1 ~5 slot.container 12 cooked_salmon 10
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 14 gold_ingot 10
loot insert ~4 ~1 ~5 loot "rsf/beach"
summon husk ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
