# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2504/4224 | 主题内编号: b072/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·L型古商会废墟暗窖 (beach_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks [] replace water
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 prismarine_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 gunpowder 9
replaceitem block ~3 ~-2 ~4 slot.container 1 string 10
replaceitem block ~3 ~-2 ~4 slot.container 2 copper_ingot 11
replaceitem block ~3 ~-2 ~4 slot.container 3 trident 5
replaceitem block ~3 ~-2 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-2 ~4 slot.container 5 nautilus_shell 8
replaceitem block ~3 ~-2 ~4 slot.container 9 tnt 3
replaceitem block ~3 ~-2 ~4 slot.container 10 fishing_rod 1
replaceitem block ~3 ~-2 ~4 slot.container 11 boat 1
replaceitem block ~3 ~-2 ~4 slot.container 12 lantern 8
replaceitem block ~3 ~-2 ~4 slot.container 13 heart_of_the_sea 6
replaceitem block ~3 ~-2 ~4 slot.container 14 cooked_cod 14
loot insert ~3 ~-2 ~4 loot "rsf/beach"
loot insert ~3 ~-2 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 oak_planks []
fill ~-5 ~1 ~0 ~5 ~6 ~6 prismarine_bricks []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 oak_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 oak_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-1 ~0 ~-11 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-11 ~-2 ~7 ~-11 sandstone []
setblock ~-2 ~8 ~-11 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~10 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 1 nautilus_shell 3
replaceitem block ~-4 ~1 ~5 slot.container 2 prismarine_shard 8
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 5 string 13
replaceitem block ~-4 ~1 ~5 slot.container 9 cooked_salmon 13
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 5
replaceitem block ~-4 ~1 ~5 slot.container 13 tnt 4
replaceitem block ~-4 ~1 ~5 slot.container 14 fishing_rod 1
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 prismarine_shard 11
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 3 string 8
replaceitem block ~4 ~1 ~5 slot.container 4 copper_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 5 trident 3
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_salmon 11
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 10
replaceitem block ~4 ~1 ~5 slot.container 13 tnt 2
replaceitem block ~4 ~1 ~5 slot.container 14 fishing_rod 1
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon turtle ~1 ~1 ~1
summon spider ~0 ~-2 ~0
