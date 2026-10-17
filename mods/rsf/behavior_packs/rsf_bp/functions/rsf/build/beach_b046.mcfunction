# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2478/4224 | 主题内编号: b046/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·要塞校场比武演武台 (beach_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 sandstone [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 sandstone [] replace water
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air []
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 smooth_sandstone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~5 slot.container 0 prismarine_shard 13
replaceitem block ~4 ~-2 ~5 slot.container 1 bone 8
replaceitem block ~4 ~-2 ~5 slot.container 2 gunpowder 9
replaceitem block ~4 ~-2 ~5 slot.container 3 string 10
replaceitem block ~4 ~-2 ~5 slot.container 4 copper_ingot 11
replaceitem block ~4 ~-2 ~5 slot.container 5 trident 5
replaceitem block ~4 ~-2 ~5 slot.container 9 boat 1
replaceitem block ~4 ~-2 ~5 slot.container 10 lantern 8
replaceitem block ~4 ~-2 ~5 slot.container 11 heart_of_the_sea 6
replaceitem block ~4 ~-2 ~5 slot.container 12 cooked_cod 14
replaceitem block ~4 ~-2 ~5 slot.container 13 cooked_salmon 8
replaceitem block ~4 ~-2 ~5 slot.container 14 iron_ingot 9
loot insert ~4 ~-2 ~5 loot "rsf/beach"
loot insert ~4 ~-2 ~5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 sandstone []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 oak_planks []
setblock ~-6 ~10 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 oak_planks []
setblock ~-6 ~10 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 oak_planks []
setblock ~5 ~10 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~9 ~7 oak_planks []
setblock ~5 ~10 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 oak_planks []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 oak_fence []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 oak_log []
setblock ~-6 ~9 ~-7 lantern []
setblock ~-6 ~8 ~7 oak_log []
setblock ~-6 ~9 ~7 lantern []
setblock ~6 ~8 ~-7 oak_log []
setblock ~6 ~9 ~-7 lantern []
setblock ~6 ~8 ~7 oak_log []
setblock ~6 ~9 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~6 ~-10 sandstone []
setblock ~-2 ~7 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 prismarine []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 copper_ingot 14
replaceitem block ~-5 ~1 ~6 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 3 nautilus_shell 3
replaceitem block ~-5 ~1 ~6 slot.container 4 prismarine_shard 8
replaceitem block ~-5 ~1 ~6 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 9 gold_ingot 6
replaceitem block ~-5 ~1 ~6 slot.container 10 emerald 5
replaceitem block ~-5 ~1 ~6 slot.container 11 tnt 4
replaceitem block ~-5 ~1 ~6 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~6 slot.container 13 boat 1
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 9
loot insert ~-5 ~1 ~6 loot "rsf/beach"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 nautilus_shell 6
replaceitem block ~5 ~1 ~6 slot.container 2 prismarine_shard 11
replaceitem block ~5 ~1 ~6 slot.container 3 bone 14
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 5 string 8
replaceitem block ~5 ~1 ~6 slot.container 9 gold_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 10 emerald 10
replaceitem block ~5 ~1 ~6 slot.container 11 tnt 2
replaceitem block ~5 ~1 ~6 slot.container 12 fishing_rod 1
replaceitem block ~5 ~1 ~6 slot.container 13 boat 1
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 7
loot insert ~5 ~1 ~6 loot "rsf/beach"
loot insert ~5 ~1 ~6 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
