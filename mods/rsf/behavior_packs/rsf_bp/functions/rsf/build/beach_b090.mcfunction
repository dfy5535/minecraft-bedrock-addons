# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2522/4224 | 主题内编号: b090/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·八角攒尖悬灯神龛 (beach_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone [] replace water
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 copper_ingot 11
replaceitem block ~2 ~-2 ~3 slot.container 1 trident 5
replaceitem block ~2 ~-2 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 3 nautilus_shell 8
replaceitem block ~2 ~-2 ~3 slot.container 4 prismarine_shard 13
replaceitem block ~2 ~-2 ~3 slot.container 5 bone 8
replaceitem block ~2 ~-2 ~3 slot.container 9 heart_of_the_sea 6
replaceitem block ~2 ~-2 ~3 slot.container 10 cooked_cod 14
replaceitem block ~2 ~-2 ~3 slot.container 11 cooked_salmon 8
replaceitem block ~2 ~-2 ~3 slot.container 12 iron_ingot 9
replaceitem block ~2 ~-2 ~3 slot.container 13 gold_ingot 8
replaceitem block ~2 ~-2 ~3 slot.container 14 emerald 7
loot insert ~2 ~-2 ~3 loot "rsf/beach"
loot insert ~2 ~-2 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~8 ~5 sandstone []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 air []
fill ~4 ~1 ~5 ~4 ~9 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 oak_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 oak_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 oak_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 oak_planks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 sea_lantern []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 oak_log []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 oak_log []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 oak_log []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 oak_log []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~5 ~-10 sandstone []
setblock ~-2 ~6 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 prismarine_shard 8
replaceitem block ~-3 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 3 string 13
replaceitem block ~-3 ~1 ~4 slot.container 4 copper_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 5 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 9 tnt 4
replaceitem block ~-3 ~1 ~4 slot.container 10 fishing_rod 1
replaceitem block ~-3 ~1 ~4 slot.container 11 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 9
replaceitem block ~-3 ~1 ~4 slot.container 13 heart_of_the_sea 7
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_cod 8
loot insert ~-3 ~1 ~4 loot "rsf/beach"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 1 string 8
replaceitem block ~3 ~1 ~4 slot.container 2 copper_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 3 trident 3
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 nautilus_shell 6
replaceitem block ~3 ~1 ~4 slot.container 9 tnt 2
replaceitem block ~3 ~1 ~4 slot.container 10 fishing_rod 1
replaceitem block ~3 ~1 ~4 slot.container 11 boat 1
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 13 heart_of_the_sea 5
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_cod 13
loot insert ~3 ~1 ~4 loot "rsf/beach"
loot insert ~3 ~1 ~4 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-2 ~0
