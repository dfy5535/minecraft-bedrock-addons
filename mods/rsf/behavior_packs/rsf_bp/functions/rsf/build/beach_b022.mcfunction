# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2454/4224 | 主题内编号: b022/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·廊柱书库秘藏室 (beach_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 sandstone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 sandstone [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 smooth_sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 prismarine_shard 13
replaceitem block ~3 ~-2 ~4 slot.container 1 bone 8
replaceitem block ~3 ~-2 ~4 slot.container 2 gunpowder 9
replaceitem block ~3 ~-2 ~4 slot.container 3 string 10
replaceitem block ~3 ~-2 ~4 slot.container 4 copper_ingot 11
replaceitem block ~3 ~-2 ~4 slot.container 5 trident 5
replaceitem block ~3 ~-2 ~4 slot.container 9 tnt 2
replaceitem block ~3 ~-2 ~4 slot.container 10 fishing_rod 1
replaceitem block ~3 ~-2 ~4 slot.container 11 boat 1
replaceitem block ~3 ~-2 ~4 slot.container 12 lantern 7
replaceitem block ~3 ~-2 ~4 slot.container 13 heart_of_the_sea 5
replaceitem block ~3 ~-2 ~4 slot.container 14 cooked_cod 13
loot insert ~3 ~-2 ~4 loot "rsf/beach"
loot insert ~3 ~-2 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 oak_planks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 oak_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 oak_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 oak_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 oak_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 oak_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 oak_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 oak_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 oak_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 oak_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 oak_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 oak_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 oak_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 oak_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 oak_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 oak_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 oak_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 oak_planks []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 sea_lantern []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 oak_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 oak_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 sandstone []
setblock ~-2 ~8 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 copper_ingot 14
replaceitem block ~-4 ~1 ~5 slot.container 1 trident 8
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 nautilus_shell 3
replaceitem block ~-4 ~1 ~5 slot.container 4 prismarine_shard 8
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 cooked_salmon 12
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 13
replaceitem block ~-4 ~1 ~5 slot.container 11 gold_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 4
replaceitem block ~-4 ~1 ~5 slot.container 13 tnt 3
replaceitem block ~-4 ~1 ~5 slot.container 14 fishing_rod 1
loot insert ~-4 ~1 ~5 loot "rsf/beach"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 nautilus_shell 6
replaceitem block ~4 ~1 ~5 slot.container 2 prismarine_shard 11
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 8
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_salmon 10
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 11 gold_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 13 tnt 8
replaceitem block ~4 ~1 ~5 slot.container 14 fishing_rod 1
loot insert ~4 ~1 ~5 loot "rsf/beach"
loot insert ~4 ~1 ~5 loot "chests/buriedtreasure"
summon drowned ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
