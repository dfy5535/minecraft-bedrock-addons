# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2476/4224 | 主题内编号: b044/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·双子祭台勇士角斗场 (beach_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 oak_planks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 oak_planks [] replace water
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 oak_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sandstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 prismarine_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-2 ~4 slot.container 1 nautilus_shell 8
replaceitem block ~4 ~-2 ~4 slot.container 2 prismarine_shard 13
replaceitem block ~4 ~-2 ~4 slot.container 3 bone 8
replaceitem block ~4 ~-2 ~4 slot.container 4 gunpowder 9
replaceitem block ~4 ~-2 ~4 slot.container 5 string 10
replaceitem block ~4 ~-2 ~4 slot.container 9 cooked_salmon 9
replaceitem block ~4 ~-2 ~4 slot.container 10 iron_ingot 10
replaceitem block ~4 ~-2 ~4 slot.container 11 gold_ingot 9
replaceitem block ~4 ~-2 ~4 slot.container 12 emerald 8
replaceitem block ~4 ~-2 ~4 slot.container 13 tnt 7
replaceitem block ~4 ~-2 ~4 slot.container 14 fishing_rod 1
loot insert ~4 ~-2 ~4 loot "rsf/beach"
loot insert ~4 ~-2 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~8 ~6 oak_planks []
fill ~2 ~1 ~-6 ~6 ~8 ~6 oak_planks []
fill ~-5 ~1 ~-5 ~-3 ~7 ~5 air []
fill ~3 ~1 ~-5 ~5 ~7 ~5 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 spruce_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-6 ~-6 ~9 ~-6 stripped_oak_log []
setblock ~-6 ~10 ~-6 campfire []
fill ~-6 ~7 ~6 ~-6 ~9 ~6 stripped_oak_log []
setblock ~-6 ~10 ~6 campfire []
fill ~6 ~7 ~-6 ~6 ~9 ~-6 stripped_oak_log []
setblock ~6 ~10 ~-6 campfire []
fill ~6 ~7 ~6 ~6 ~9 ~6 stripped_oak_log []
setblock ~6 ~10 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 stripped_oak_log []
setblock ~-8 ~6 ~-8 campfire []
fill ~-8 ~0 ~8 ~-8 ~5 ~8 stripped_oak_log []
setblock ~-8 ~6 ~8 campfire []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 stripped_oak_log []
setblock ~8 ~6 ~-8 campfire []
fill ~8 ~0 ~8 ~8 ~5 ~8 stripped_oak_log []
setblock ~8 ~6 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-1 ~0 ~-10 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-10 ~-2 ~9 ~-10 sandstone []
setblock ~-2 ~10 ~-10 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~5 slot.container 1 string 13
replaceitem block ~-5 ~1 ~5 slot.container 2 copper_ingot 14
replaceitem block ~-5 ~1 ~5 slot.container 3 trident 8
replaceitem block ~-5 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 5 nautilus_shell 3
replaceitem block ~-5 ~1 ~5 slot.container 9 boat 1
replaceitem block ~-5 ~1 ~5 slot.container 10 lantern 10
replaceitem block ~-5 ~1 ~5 slot.container 11 heart_of_the_sea 1
replaceitem block ~-5 ~1 ~5 slot.container 12 cooked_cod 9
replaceitem block ~-5 ~1 ~5 slot.container 13 cooked_salmon 10
replaceitem block ~-5 ~1 ~5 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~5 loot "rsf/beach"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 copper_ingot 9
replaceitem block ~5 ~1 ~5 slot.container 1 trident 3
replaceitem block ~5 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 3 nautilus_shell 6
replaceitem block ~5 ~1 ~5 slot.container 4 prismarine_shard 11
replaceitem block ~5 ~1 ~5 slot.container 5 bone 14
replaceitem block ~5 ~1 ~5 slot.container 9 boat 1
replaceitem block ~5 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~5 ~1 ~5 slot.container 11 heart_of_the_sea 6
replaceitem block ~5 ~1 ~5 slot.container 12 cooked_cod 14
replaceitem block ~5 ~1 ~5 slot.container 13 cooked_salmon 8
replaceitem block ~5 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~5 ~1 ~5 loot "rsf/beach"
loot insert ~5 ~1 ~5 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
