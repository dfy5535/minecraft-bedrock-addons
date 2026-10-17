# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2558/4224 | 主题内编号: b126/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双子主塔天桥宫殿与暗牢 (beach_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 sandstone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 sandstone [] replace water
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 oak_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 smooth_sandstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 sandstone []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~4 lantern []
setblock ~4 ~-5 ~-4 lantern []
setblock ~4 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-3 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~4 ~-3 ~4 slot.container 2 prismarine_shard 13
replaceitem block ~4 ~-3 ~4 slot.container 3 bone 8
replaceitem block ~4 ~-3 ~4 slot.container 4 gunpowder 9
replaceitem block ~4 ~-3 ~4 slot.container 5 string 10
replaceitem block ~4 ~-3 ~4 slot.container 9 tnt 7
replaceitem block ~4 ~-3 ~4 slot.container 10 fishing_rod 1
replaceitem block ~4 ~-3 ~4 slot.container 11 boat 1
replaceitem block ~4 ~-3 ~4 slot.container 12 lantern 5
replaceitem block ~4 ~-3 ~4 slot.container 13 heart_of_the_sea 3
replaceitem block ~4 ~-3 ~4 slot.container 14 cooked_cod 11
loot insert ~4 ~-3 ~4 loot "rsf/beach"
loot insert ~4 ~-3 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~11 ~6 sandstone []
fill ~2 ~1 ~-6 ~6 ~11 ~6 sandstone []
fill ~-5 ~1 ~-5 ~-3 ~10 ~5 air []
fill ~3 ~1 ~-5 ~5 ~10 ~5 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 oak_planks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 oak_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 sandstone []
fill ~0 ~16 ~0 ~0 ~16 ~0 sea_lantern []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 oak_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~6 ~-11 sandstone []
setblock ~-2 ~7 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 copper_ingot 14
replaceitem block ~-5 ~1 ~5 slot.container 1 trident 8
replaceitem block ~-5 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 3 nautilus_shell 3
replaceitem block ~-5 ~1 ~5 slot.container 4 prismarine_shard 8
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 9 gold_ingot 9
replaceitem block ~-5 ~1 ~5 slot.container 10 emerald 8
replaceitem block ~-5 ~1 ~5 slot.container 11 tnt 7
replaceitem block ~-5 ~1 ~5 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~5 slot.container 13 boat 1
replaceitem block ~-5 ~1 ~5 slot.container 14 lantern 5
loot insert ~-5 ~1 ~5 loot "rsf/beach"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 1 nautilus_shell 6
replaceitem block ~5 ~1 ~5 slot.container 2 prismarine_shard 11
replaceitem block ~5 ~1 ~5 slot.container 3 bone 14
replaceitem block ~5 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~5 slot.container 5 string 8
replaceitem block ~5 ~1 ~5 slot.container 9 gold_ingot 7
replaceitem block ~5 ~1 ~5 slot.container 10 emerald 6
replaceitem block ~5 ~1 ~5 slot.container 11 tnt 5
replaceitem block ~5 ~1 ~5 slot.container 12 fishing_rod 1
replaceitem block ~5 ~1 ~5 slot.container 13 boat 1
replaceitem block ~5 ~1 ~5 slot.container 14 lantern 10
loot insert ~5 ~1 ~5 loot "rsf/beach"
loot insert ~5 ~1 ~5 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-3 ~0
