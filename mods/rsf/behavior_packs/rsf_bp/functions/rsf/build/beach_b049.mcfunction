# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2481/4224 | 主题内编号: b049/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双坡顶林间猎人木屋 (beach_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 prismarine_bricks [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 prismarine_bricks [] replace water
fill ~-5 ~1 ~-7 ~5 ~9 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 sandstone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 smooth_sandstone []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 sandstone []
fill ~-2 ~-5 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~4 slot.container 0 string 10
replaceitem block ~2 ~-3 ~4 slot.container 1 copper_ingot 11
replaceitem block ~2 ~-3 ~4 slot.container 2 trident 5
replaceitem block ~2 ~-3 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~2 ~-3 ~4 slot.container 4 nautilus_shell 8
replaceitem block ~2 ~-3 ~4 slot.container 5 prismarine_shard 13
replaceitem block ~2 ~-3 ~4 slot.container 9 fishing_rod 1
replaceitem block ~2 ~-3 ~4 slot.container 10 boat 1
replaceitem block ~2 ~-3 ~4 slot.container 11 lantern 5
replaceitem block ~2 ~-3 ~4 slot.container 12 heart_of_the_sea 3
replaceitem block ~2 ~-3 ~4 slot.container 13 cooked_cod 11
replaceitem block ~2 ~-3 ~4 slot.container 14 cooked_salmon 12
loot insert ~2 ~-3 ~4 loot "rsf/beach"
loot insert ~2 ~-3 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~7 ~6 prismarine_bricks []
fill ~-3 ~1 ~-5 ~3 ~6 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~7 ~-6 chiseled_sandstone []
fill ~-4 ~1 ~6 ~-4 ~7 ~6 chiseled_sandstone []
fill ~4 ~1 ~-6 ~4 ~7 ~-6 chiseled_sandstone []
fill ~4 ~1 ~6 ~4 ~7 ~6 chiseled_sandstone []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~8 ~-7 ~-5 ~8 ~7 sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-7 ~5 ~8 ~7 sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~-4 ~9 ~6 sandstone_stairs ["weirdo_direction"=0]
fill ~4 ~9 ~-6 ~4 ~9 ~6 sandstone_stairs ["weirdo_direction"=1]
fill ~-3 ~9 ~-6 ~3 ~9 ~6 sandstone_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 sandstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 smooth_sandstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~9 ~-9 sandstone []
setblock ~-2 ~10 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 nautilus_shell 3
replaceitem block ~3 ~1 ~5 slot.container 1 prismarine_shard 8
replaceitem block ~3 ~1 ~5 slot.container 2 bone 11
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 4 string 13
replaceitem block ~3 ~1 ~5 slot.container 5 copper_ingot 14
replaceitem block ~3 ~1 ~5 slot.container 9 iron_ingot 11
replaceitem block ~3 ~1 ~5 slot.container 10 gold_ingot 10
replaceitem block ~3 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~3 ~1 ~5 slot.container 12 tnt 8
replaceitem block ~3 ~1 ~5 slot.container 13 fishing_rod 1
replaceitem block ~3 ~1 ~5 slot.container 14 boat 1
loot insert ~3 ~1 ~5 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
