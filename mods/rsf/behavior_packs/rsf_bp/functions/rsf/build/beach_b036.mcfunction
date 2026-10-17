# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2468/4224 | 主题内编号: b036/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·下沉碑林地宫方尖碑 (beach_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 oak_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 oak_planks [] replace water
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 oak_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-5 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-5 ~3 campfire []
setblock ~2 ~-5 ~-3 campfire []
setblock ~2 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-3 ~3 slot.container 0 copper_ingot 11
replaceitem block ~2 ~-3 ~3 slot.container 1 trident 5
replaceitem block ~2 ~-3 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 3 nautilus_shell 8
replaceitem block ~2 ~-3 ~3 slot.container 4 prismarine_shard 13
replaceitem block ~2 ~-3 ~3 slot.container 5 bone 8
replaceitem block ~2 ~-3 ~3 slot.container 9 tnt 8
replaceitem block ~2 ~-3 ~3 slot.container 10 fishing_rod 1
replaceitem block ~2 ~-3 ~3 slot.container 11 boat 1
replaceitem block ~2 ~-3 ~3 slot.container 12 lantern 6
replaceitem block ~2 ~-3 ~3 slot.container 13 heart_of_the_sea 4
replaceitem block ~2 ~-3 ~3 slot.container 14 cooked_cod 12
loot insert ~2 ~-3 ~3 loot "rsf/beach"
loot insert ~2 ~-3 ~3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 oak_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 spruce_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 oak_planks []
fill ~0 ~16 ~0 ~0 ~16 ~0 gold_block []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 oak_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~6 ~-10 sandstone []
setblock ~-2 ~7 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 1 string 13
replaceitem block ~-3 ~1 ~4 slot.container 2 copper_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 3 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 nautilus_shell 3
replaceitem block ~-3 ~1 ~4 slot.container 9 gold_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~-3 ~1 ~4 slot.container 11 tnt 8
replaceitem block ~-3 ~1 ~4 slot.container 12 fishing_rod 1
replaceitem block ~-3 ~1 ~4 slot.container 13 boat 1
replaceitem block ~-3 ~1 ~4 slot.container 14 lantern 6
loot insert ~-3 ~1 ~4 loot "rsf/beach"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 copper_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 1 trident 3
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 nautilus_shell 6
replaceitem block ~3 ~1 ~4 slot.container 4 prismarine_shard 11
replaceitem block ~3 ~1 ~4 slot.container 5 bone 14
replaceitem block ~3 ~1 ~4 slot.container 9 gold_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 11 tnt 6
replaceitem block ~3 ~1 ~4 slot.container 12 fishing_rod 1
replaceitem block ~3 ~1 ~4 slot.container 13 boat 1
replaceitem block ~3 ~1 ~4 slot.container 14 lantern 4
loot insert ~3 ~1 ~4 loot "rsf/beach"
loot insert ~3 ~1 ~4 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-3 ~0
