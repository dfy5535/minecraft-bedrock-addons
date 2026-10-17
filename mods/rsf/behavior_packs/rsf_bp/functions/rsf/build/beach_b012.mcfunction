# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2444/4224 | 主题内编号: b012/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双子暗门地底宝库 (beach_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 prismarine_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 1 nautilus_shell 8
replaceitem block ~4 ~-3 ~3 slot.container 2 prismarine_shard 13
replaceitem block ~4 ~-3 ~3 slot.container 3 bone 8
replaceitem block ~4 ~-3 ~3 slot.container 4 gunpowder 9
replaceitem block ~4 ~-3 ~3 slot.container 5 string 10
replaceitem block ~4 ~-3 ~3 slot.container 9 tnt 6
replaceitem block ~4 ~-3 ~3 slot.container 10 fishing_rod 1
replaceitem block ~4 ~-3 ~3 slot.container 11 boat 1
replaceitem block ~4 ~-3 ~3 slot.container 12 lantern 4
replaceitem block ~4 ~-3 ~3 slot.container 13 heart_of_the_sea 2
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_cod 10
loot insert ~4 ~-3 ~3 loot "rsf/beach"
loot insert ~4 ~-3 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 oak_planks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 spruce_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 oak_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 stripped_oak_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 stripped_oak_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 stripped_oak_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 stripped_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~7 ~-10 sandstone []
setblock ~-2 ~8 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 copper_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 3
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_salmon 9
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 12 emerald 8
replaceitem block ~-5 ~1 ~4 slot.container 13 tnt 7
replaceitem block ~-5 ~1 ~4 slot.container 14 fishing_rod 1
loot insert ~-5 ~1 ~4 loot "rsf/beach"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 copper_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 1 trident 3
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 nautilus_shell 6
replaceitem block ~5 ~1 ~4 slot.container 4 prismarine_shard 11
replaceitem block ~5 ~1 ~4 slot.container 5 bone 14
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_salmon 14
replaceitem block ~5 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 11 gold_ingot 7
replaceitem block ~5 ~1 ~4 slot.container 12 emerald 6
replaceitem block ~5 ~1 ~4 slot.container 13 tnt 5
replaceitem block ~5 ~1 ~4 slot.container 14 fishing_rod 1
loot insert ~5 ~1 ~4 loot "rsf/beach"
loot insert ~5 ~1 ~4 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-3 ~0
