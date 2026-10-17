# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2489/4224 | 主题内编号: b057/128
# 地形主题 #20: 海滩、寒滩与石岸礁石 (beach) —— 带礁石防波堤栈桥与搁浅船舱宝库
# 建筑名称: 海岸灯塔系·中央石棺帝王地下陵寝 (beach_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: beach, cold_beach, stone_beach, mushroom_island_shore
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 prismarine_bricks [] replace water
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air []
fill ~-6 ~0 ~-8 ~6 ~0 ~8 sandstone_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 smooth_sandstone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 sandstone []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 sandstone []
setblock ~0 ~-7 ~0 sea_lantern []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 sea_lantern []
setblock ~2 ~-6 ~0 sea_lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 bone 8
replaceitem block ~0 ~-4 ~-5 slot.container 1 gunpowder 9
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 10
replaceitem block ~0 ~-4 ~-5 slot.container 3 copper_ingot 11
replaceitem block ~0 ~-4 ~-5 slot.container 4 trident 5
replaceitem block ~0 ~-4 ~-5 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 iron_ingot 8
replaceitem block ~0 ~-4 ~-5 slot.container 10 gold_ingot 7
replaceitem block ~0 ~-4 ~-5 slot.container 11 emerald 6
replaceitem block ~0 ~-4 ~-5 slot.container 12 tnt 5
replaceitem block ~0 ~-4 ~-5 slot.container 13 fishing_rod 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 boat 1
loot insert ~0 ~-4 ~-5 loot "rsf/beach"
loot insert ~0 ~-4 ~-5 loot "chests/buriedtreasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 prismarine_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 sandstone []
fill ~0 ~1 ~-7 ~0 ~2 ~7 sandstone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 sandstone []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 sandstone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 emerald_block []
setblock ~0 ~10 ~0 sea_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 sandstone []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 chiseled_sandstone []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 chiseled_sandstone []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 sandstone_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (beach 独有建筑构件 | 几何特征参数 8x10x4) ---
fill ~-1 ~0 ~-12 ~1 ~0 ~-8 oak_slab []
fill ~-2 ~0 ~-12 ~-2 ~7 ~-12 sandstone []
setblock ~-2 ~8 ~-12 sea_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 prismarine []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 nautilus_shell 3
replaceitem block ~4 ~1 ~6 slot.container 1 prismarine_shard 8
replaceitem block ~4 ~1 ~6 slot.container 2 bone 11
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~6 slot.container 4 string 13
replaceitem block ~4 ~1 ~6 slot.container 5 copper_ingot 14
replaceitem block ~4 ~1 ~6 slot.container 9 fishing_rod 1
replaceitem block ~4 ~1 ~6 slot.container 10 boat 1
replaceitem block ~4 ~1 ~6 slot.container 11 lantern 10
replaceitem block ~4 ~1 ~6 slot.container 12 heart_of_the_sea 1
replaceitem block ~4 ~1 ~6 slot.container 13 cooked_cod 9
replaceitem block ~4 ~1 ~6 slot.container 14 cooked_salmon 10
loot insert ~4 ~1 ~6 loot "rsf/beach"
summon spider ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon husk ~1 ~1 ~1
summon zombie ~0 ~-4 ~0
