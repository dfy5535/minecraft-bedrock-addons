# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2486/4224 | 主题内编号: b054/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·切石与伐木工匠棚屋 (beach_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 sandstone [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 sandstone [] replace water
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 oak_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 sandstone []
fill ~2 ~1 ~-5 ~5 ~8 ~5 sandstone []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 oak_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 oak_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 oak_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 oak_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 oak_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 oak_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 sandstone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~9 ~-10 sandstone []
setblock ~-2 ~10 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 copper_ingot 14
replaceitem block ~-4 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 3 nautilus_shell 3
replaceitem block ~-4 ~1 ~4 slot.container 4 prismarine_shard 8
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~-4 ~1 ~4 slot.container 11 heart_of_the_sea 4
replaceitem block ~-4 ~1 ~4 slot.container 12 cooked_cod 12
replaceitem block ~-4 ~1 ~4 slot.container 13 cooked_salmon 13
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 14
loot insert ~-4 ~1 ~4 loot "rsf/beach"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~4 slot.container 1 nautilus_shell 6
replaceitem block ~4 ~1 ~4 slot.container 2 prismarine_shard 11
replaceitem block ~4 ~1 ~4 slot.container 3 bone 14
replaceitem block ~4 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~4 slot.container 5 string 8
replaceitem block ~4 ~1 ~4 slot.container 9 boat 1
replaceitem block ~4 ~1 ~4 slot.container 10 lantern 4
replaceitem block ~4 ~1 ~4 slot.container 11 heart_of_the_sea 2
replaceitem block ~4 ~1 ~4 slot.container 12 cooked_cod 10
replaceitem block ~4 ~1 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~4 ~1 ~4 slot.container 14 iron_ingot 12
loot insert ~4 ~1 ~4 loot "rsf/beach"
loot insert ~4 ~1 ~4 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~2 ~0
