# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2492/4224 | 主题内编号: b060/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·圆形穹顶万骨祠堂 (beach_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 oak_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 oak_planks [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 oak_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 campfire []
setblock ~3 ~-5 ~0 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 prismarine_shard 13
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 8
replaceitem block ~0 ~-3 ~4 slot.container 2 gunpowder 9
replaceitem block ~0 ~-3 ~4 slot.container 3 string 10
replaceitem block ~0 ~-3 ~4 slot.container 4 copper_ingot 11
replaceitem block ~0 ~-3 ~4 slot.container 5 trident 5
replaceitem block ~0 ~-3 ~4 slot.container 9 boat 1
replaceitem block ~0 ~-3 ~4 slot.container 10 lantern 4
replaceitem block ~0 ~-3 ~4 slot.container 11 heart_of_the_sea 2
replaceitem block ~0 ~-3 ~4 slot.container 12 cooked_cod 10
replaceitem block ~0 ~-3 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~0 ~-3 ~4 slot.container 14 iron_ingot 12
loot insert ~0 ~-3 ~4 loot "rsf/beach"
loot insert ~0 ~-3 ~4 loot "chests/buriedtreasure"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 prismarine_shard 11
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 copper_ingot 9
replaceitem block ~0 ~-3 ~-4 slot.container 5 trident 3
replaceitem block ~0 ~-3 ~-4 slot.container 9 boat 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 heart_of_the_sea 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 cooked_cod 9
replaceitem block ~0 ~-3 ~-4 slot.container 13 cooked_salmon 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_ingot 11
loot insert ~0 ~-3 ~-4 loot "rsf/beach"
loot insert ~0 ~-3 ~-4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 spruce_planks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 stripped_oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 stripped_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 stripped_oak_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 stripped_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 stripped_oak_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 stripped_oak_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 stripped_oak_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 stripped_oak_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 stripped_oak_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 stripped_oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 stripped_oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 stripped_oak_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 stripped_oak_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 stripped_oak_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 stripped_oak_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 stripped_oak_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 stripped_oak_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 stripped_oak_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 stripped_oak_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 stripped_oak_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 stripped_oak_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 stripped_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 spruce_planks []
fill ~-4 ~9 ~-5 ~4 ~10 ~5 glass []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_oak_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_oak_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 stripped_oak_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 stripped_oak_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~5 ~-11 sandstone []
setblock ~-2 ~6 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 13
replaceitem block ~-4 ~1 ~5 slot.container 2 copper_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 3 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 nautilus_shell 3
replaceitem block ~-4 ~1 ~5 slot.container 9 tnt 2
replaceitem block ~-4 ~1 ~5 slot.container 10 fishing_rod 1
replaceitem block ~-4 ~1 ~5 slot.container 11 boat 1
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 7
replaceitem block ~-4 ~1 ~5 slot.container 13 heart_of_the_sea 5
replaceitem block ~-4 ~1 ~5 slot.container 14 cooked_cod 13
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 copper_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 1 trident 3
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 nautilus_shell 6
replaceitem block ~4 ~1 ~5 slot.container 4 prismarine_shard 11
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 tnt 7
replaceitem block ~4 ~1 ~5 slot.container 10 fishing_rod 1
replaceitem block ~4 ~1 ~5 slot.container 11 boat 1
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 5
replaceitem block ~4 ~1 ~5 slot.container 13 heart_of_the_sea 3
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_cod 11
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-3 ~0
