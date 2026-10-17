# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2511/4224 | 主题内编号: b079/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·四角结界守护柱阵 (beach_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 sandstone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sandstone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 oak_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 bone 8
replaceitem block ~3 ~-3 ~4 slot.container 1 gunpowder 9
replaceitem block ~3 ~-3 ~4 slot.container 2 string 10
replaceitem block ~3 ~-3 ~4 slot.container 3 copper_ingot 11
replaceitem block ~3 ~-3 ~4 slot.container 4 trident 5
replaceitem block ~3 ~-3 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-3 ~4 slot.container 9 fishing_rod 1
replaceitem block ~3 ~-3 ~4 slot.container 10 boat 1
replaceitem block ~3 ~-3 ~4 slot.container 11 lantern 7
replaceitem block ~3 ~-3 ~4 slot.container 12 heart_of_the_sea 5
replaceitem block ~3 ~-3 ~4 slot.container 13 cooked_cod 13
replaceitem block ~3 ~-3 ~4 slot.container 14 cooked_salmon 14
loot insert ~3 ~-3 ~4 loot "rsf/beach"
loot insert ~3 ~-3 ~4 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~10 ~-5 cobblestone []
setblock ~-5 ~11 ~-6 torch []
fill ~-5 ~1 ~5 ~-4 ~10 ~6 cobblestone []
setblock ~-5 ~11 ~5 torch []
fill ~4 ~1 ~-6 ~5 ~10 ~-5 cobblestone []
setblock ~4 ~11 ~-6 torch []
fill ~4 ~1 ~5 ~5 ~10 ~6 cobblestone []
setblock ~4 ~11 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~8 ~-6 ~-5 ~10 ~-6 spruce_log []
setblock ~-5 ~11 ~-6 torch []
fill ~-5 ~8 ~6 ~-5 ~10 ~6 spruce_log []
setblock ~-5 ~11 ~6 torch []
fill ~5 ~8 ~-6 ~5 ~10 ~-6 spruce_log []
setblock ~5 ~11 ~-6 torch []
fill ~5 ~8 ~6 ~5 ~10 ~6 spruce_log []
setblock ~5 ~11 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 spruce_log []
setblock ~-7 ~6 ~-8 torch []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 spruce_log []
setblock ~-7 ~6 ~8 torch []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 spruce_log []
setblock ~7 ~6 ~-8 torch []
fill ~7 ~0 ~8 ~7 ~5 ~8 spruce_log []
setblock ~7 ~6 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-7 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~9 ~-9 sandstone []
setblock ~-2 ~10 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 trident 8
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 2 nautilus_shell 3
replaceitem block ~4 ~1 ~5 slot.container 3 prismarine_shard 8
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 13
replaceitem block ~4 ~1 ~5 slot.container 10 gold_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 12 tnt 3
replaceitem block ~4 ~1 ~5 slot.container 13 fishing_rod 1
replaceitem block ~4 ~1 ~5 slot.container 14 boat 1
loot insert ~4 ~1 ~5 loot "rsf/beach"
summon skeleton ~0 ~1 ~-1
summon turtle ~-1 ~1 ~1
