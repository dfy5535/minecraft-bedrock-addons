# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2470/4224 | 主题内编号: b038/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·四方凯旋衣冠冢 (beach_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 sandstone [] replace water
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 smooth_sandstone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 oak_planks []
setblock ~0 ~-5 ~0 prismarine []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 nautilus_shell 8
replaceitem block ~0 ~-2 ~-3 slot.container 2 prismarine_shard 13
replaceitem block ~0 ~-2 ~-3 slot.container 3 bone 8
replaceitem block ~0 ~-2 ~-3 slot.container 4 gunpowder 9
replaceitem block ~0 ~-2 ~-3 slot.container 5 string 10
replaceitem block ~0 ~-2 ~-3 slot.container 9 tnt 4
replaceitem block ~0 ~-2 ~-3 slot.container 10 fishing_rod 1
replaceitem block ~0 ~-2 ~-3 slot.container 11 boat 1
replaceitem block ~0 ~-2 ~-3 slot.container 12 lantern 9
replaceitem block ~0 ~-2 ~-3 slot.container 13 heart_of_the_sea 7
replaceitem block ~0 ~-2 ~-3 slot.container 14 cooked_cod 8
loot insert ~0 ~-2 ~-3 loot "rsf/beach"
loot insert ~0 ~-2 ~-3 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~9 ~5 sandstone []
fill ~-4 ~1 ~-2 ~4 ~9 ~2 sandstone []
fill ~-1 ~1 ~-4 ~1 ~8 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~8 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 oak_fence []
setblock ~4 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 oak_planks []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 sea_lantern []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 oak_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-1 ~0 ~-9 ~1 ~0 ~-6 oak_slab []
fill ~-2 ~0 ~-9 ~-2 ~8 ~-9 sandstone []
setblock ~-2 ~9 ~-9 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 copper_ingot 14
replaceitem block ~-3 ~1 ~4 slot.container 1 trident 8
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 nautilus_shell 3
replaceitem block ~-3 ~1 ~4 slot.container 4 prismarine_shard 8
replaceitem block ~-3 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 9 heart_of_the_sea 7
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_cod 8
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_salmon 9
replaceitem block ~-3 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 13 gold_ingot 9
replaceitem block ~-3 ~1 ~4 slot.container 14 emerald 8
loot insert ~-3 ~1 ~4 loot "rsf/beach"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 nautilus_shell 6
replaceitem block ~3 ~1 ~4 slot.container 2 prismarine_shard 11
replaceitem block ~3 ~1 ~4 slot.container 3 bone 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 8
replaceitem block ~3 ~1 ~4 slot.container 9 heart_of_the_sea 5
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_cod 13
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_salmon 14
replaceitem block ~3 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 13 gold_ingot 7
replaceitem block ~3 ~1 ~4 slot.container 14 emerald 6
loot insert ~3 ~1 ~4 loot "rsf/beach"
loot insert ~3 ~1 ~4 loot "chests/buriedtreasure"
summon turtle ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon drowned ~1 ~1 ~1
