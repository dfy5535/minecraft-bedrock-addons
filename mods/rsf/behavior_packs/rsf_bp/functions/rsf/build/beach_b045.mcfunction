# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2477/4224 | 主题内编号: b045/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·十二柱神殿试炼场 (beach_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 prismarine_bricks [] replace water
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 sandstone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 prismarine_bricks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~-4 ~-5 ~-5 sea_lantern []
setblock ~4 ~-5 ~5 sea_lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 string 10
replaceitem block ~0 ~-3 ~5 slot.container 1 copper_ingot 11
replaceitem block ~0 ~-3 ~5 slot.container 2 trident 5
replaceitem block ~0 ~-3 ~5 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 4 nautilus_shell 8
replaceitem block ~0 ~-3 ~5 slot.container 5 prismarine_shard 13
replaceitem block ~0 ~-3 ~5 slot.container 9 iron_ingot 11
replaceitem block ~0 ~-3 ~5 slot.container 10 gold_ingot 10
replaceitem block ~0 ~-3 ~5 slot.container 11 emerald 9
replaceitem block ~0 ~-3 ~5 slot.container 12 tnt 8
replaceitem block ~0 ~-3 ~5 slot.container 13 fishing_rod 1
replaceitem block ~0 ~-3 ~5 slot.container 14 boat 1
loot insert ~0 ~-3 ~5 loot "rsf/beach"
loot insert ~0 ~-3 ~5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 sandstone []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 chiseled_sandstone []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 chiseled_sandstone []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 chiseled_sandstone []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 chiseled_sandstone []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 chiseled_sandstone []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 chiseled_sandstone []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 chiseled_sandstone []
fill ~0 ~1 ~7 ~0 ~7 ~7 chiseled_sandstone []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 chiseled_sandstone []
fill ~2 ~1 ~7 ~2 ~7 ~7 chiseled_sandstone []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 chiseled_sandstone []
fill ~4 ~1 ~7 ~4 ~7 ~7 chiseled_sandstone []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 chiseled_sandstone []
fill ~6 ~1 ~7 ~6 ~7 ~7 chiseled_sandstone []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 chiseled_sandstone []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 chiseled_sandstone []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 chiseled_sandstone []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 chiseled_sandstone []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 chiseled_sandstone []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 chiseled_sandstone []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 chiseled_sandstone []
fill ~6 ~1 ~1 ~6 ~7 ~1 chiseled_sandstone []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 chiseled_sandstone []
fill ~6 ~1 ~3 ~6 ~7 ~3 chiseled_sandstone []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 chiseled_sandstone []
fill ~6 ~1 ~5 ~6 ~7 ~5 chiseled_sandstone []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 chiseled_sandstone []
setblock ~-6 ~11 ~-7 sea_lantern []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 chiseled_sandstone []
setblock ~-6 ~11 ~7 sea_lantern []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 chiseled_sandstone []
setblock ~6 ~11 ~-7 sea_lantern []
fill ~6 ~8 ~7 ~6 ~10 ~7 chiseled_sandstone []
setblock ~6 ~11 ~7 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 chiseled_sandstone []
setblock ~0 ~4 ~-9 sea_lantern []
setblock ~0 ~5 ~-9 sea_lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 chiseled_sandstone []
setblock ~0 ~4 ~9 sea_lantern []
setblock ~0 ~5 ~9 sea_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_sandstone []
setblock ~-8 ~4 ~0 sea_lantern []
setblock ~-8 ~5 ~0 sea_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_sandstone []
setblock ~8 ~4 ~0 sea_lantern []
setblock ~8 ~5 ~0 sea_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x10x2) ---
fill ~-1 ~0 ~-12 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-12 ~-2 ~5 ~-12 sandstone []
setblock ~-2 ~6 ~-12 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 13
replaceitem block ~5 ~1 ~6 slot.container 1 copper_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 2 trident 8
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 4 nautilus_shell 3
replaceitem block ~5 ~1 ~6 slot.container 5 prismarine_shard 8
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_cod 14
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_salmon 8
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 12 gold_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 13 emerald 7
replaceitem block ~5 ~1 ~6 slot.container 14 tnt 6
loot insert ~5 ~1 ~6 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-3 ~0
