# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2450/4224 | 主题内编号: b018/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·L型转角领主秘宝屋 (beach_chamber_l_wing_manor)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 sandstone [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 oak_planks []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 sandstone []
fill ~-5 ~1 ~0 ~5 ~6 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 oak_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 oak_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 oak_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 oak_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 oak_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 sandstone []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~8 ~-11 sandstone []
setblock ~-2 ~9 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 prismarine_shard 8
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 13
replaceitem block ~-4 ~1 ~5 slot.container 4 copper_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 5 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 9 heart_of_the_sea 1
replaceitem block ~-4 ~1 ~5 slot.container 10 cooked_cod 9
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_salmon 10
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 11
replaceitem block ~-4 ~1 ~5 slot.container 13 gold_ingot 10
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 9
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 8
replaceitem block ~4 ~1 ~5 slot.container 2 copper_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 3 trident 3
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 nautilus_shell 6
replaceitem block ~4 ~1 ~5 slot.container 9 heart_of_the_sea 6
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_cod 14
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_salmon 8
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 13 gold_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 7
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~2 ~0
