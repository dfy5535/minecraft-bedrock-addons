# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2462/4224 | 主题内编号: b030/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双坡顶驻军卫戍塔 (beach_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone [] replace water
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 sandstone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 lantern []
setblock ~2 ~-4 ~-3 lantern []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~2 ~-2 ~3 slot.container 1 nautilus_shell 8
replaceitem block ~2 ~-2 ~3 slot.container 2 prismarine_shard 13
replaceitem block ~2 ~-2 ~3 slot.container 3 bone 8
replaceitem block ~2 ~-2 ~3 slot.container 4 gunpowder 9
replaceitem block ~2 ~-2 ~3 slot.container 5 string 10
replaceitem block ~2 ~-2 ~3 slot.container 9 boat 1
replaceitem block ~2 ~-2 ~3 slot.container 10 lantern 5
replaceitem block ~2 ~-2 ~3 slot.container 11 heart_of_the_sea 3
replaceitem block ~2 ~-2 ~3 slot.container 12 cooked_cod 11
replaceitem block ~2 ~-2 ~3 slot.container 13 cooked_salmon 12
replaceitem block ~2 ~-2 ~3 slot.container 14 iron_ingot 13
loot insert ~2 ~-2 ~3 loot "rsf/beach"
loot insert ~2 ~-2 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~10 ~5 sandstone []
fill ~-4 ~1 ~0 ~4 ~9 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~-1 ~9 ~4 air []
fill ~-1 ~1 ~1 ~3 ~8 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~11 ~-6 ~-5 ~11 ~6 oak_stairs ["weirdo_direction"=0]
fill ~5 ~11 ~-6 ~5 ~11 ~6 oak_stairs ["weirdo_direction"=1]
fill ~-4 ~12 ~-5 ~-4 ~12 ~5 oak_stairs ["weirdo_direction"=0]
fill ~4 ~12 ~-5 ~4 ~12 ~5 oak_stairs ["weirdo_direction"=1]
fill ~-3 ~12 ~-5 ~3 ~12 ~5 oak_slab []
fill ~0 ~13 ~-6 ~0 ~13 ~6 oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~12 ~2 stone_bricks []
fill ~5 ~1 ~-1 ~6 ~11 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~13 ~0 lantern []

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
replaceitem block ~-3 ~1 ~4 slot.container 0 copper_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 nautilus_shell 3
replaceitem block ~-3 ~1 ~4 slot.container 4 prismarine_shard 8
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 tnt 7
replaceitem block ~-3 ~1 ~4 slot.container 10 fishing_rod 1
replaceitem block ~-3 ~1 ~4 slot.container 11 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~-3 ~1 ~4 slot.container 13 heart_of_the_sea 3
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_cod 11
loot insert ~-3 ~1 ~4 loot "rsf/beach"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 nautilus_shell 6
replaceitem block ~3 ~1 ~4 slot.container 2 prismarine_shard 11
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 8
replaceitem block ~3 ~1 ~4 slot.container 9 tnt 5
replaceitem block ~3 ~1 ~4 slot.container 10 fishing_rod 1
replaceitem block ~3 ~1 ~4 slot.container 11 boat 1
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~3 ~1 ~4 slot.container 13 heart_of_the_sea 1
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_cod 9
loot insert ~3 ~1 ~4 loot "rsf/beach"
loot insert ~3 ~1 ~4 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-2 ~0
