# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1337/4224 | 主题内编号: b057/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·中央石棺帝王地下陵寝 (desert_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 smooth_sandstone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 smooth_sandstone [] replace water
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 sandstone_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cut_sandstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 sandstone []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 orange_terracotta []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 spider_eye 7
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 18
replaceitem block ~0 ~-3 ~-4 slot.container 3 gold_nugget 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 7
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 19
replaceitem block ~0 ~-3 ~-4 slot.container 9 tnt 7
replaceitem block ~0 ~-3 ~-4 slot.container 10 saddle 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 water_bucket 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 8
replaceitem block ~0 ~-3 ~-4 slot.container 13 enchanted_golden_apple 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 bread 11
loot insert ~0 ~-3 ~-4 loot "rsf/desert"
loot insert ~0 ~-3 ~-4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 smooth_sandstone []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 orange_terracotta []
fill ~0 ~1 ~-6 ~0 ~2 ~6 orange_terracotta []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 orange_terracotta []
fill ~-5 ~8 ~-5 ~5 ~8 ~5 sandstone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 lapis_block []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 orange_terracotta []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 sandstone []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 sandstone []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 sandstone_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-9 ~0 ~-9 ~-10 ~7 ~-10 chiseled_sandstone []
fill ~8 ~0 ~-9 ~9 ~7 ~-10 chiseled_sandstone []
setblock ~-9 ~8 ~-9 gold_block []
setblock ~9 ~8 ~-9 gold_block []
setblock ~-3 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 orange_terracotta []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 13
replaceitem block ~5 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 2 string 11
replaceitem block ~5 ~1 ~4 slot.container 3 spider_eye 10
replaceitem block ~5 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~4 slot.container 5 gold_nugget 18
replaceitem block ~5 ~1 ~4 slot.container 9 enchanted_golden_apple 1
replaceitem block ~5 ~1 ~4 slot.container 10 bread 11
replaceitem block ~5 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 13 emerald 8
replaceitem block ~5 ~1 ~4 slot.container 14 diamond 7
loot insert ~5 ~1 ~4 loot "rsf/desert"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 spider_eye 13
replaceitem block ~-5 ~1 ~5 slot.container 2 arrow 16
replaceitem block ~-5 ~1 ~5 slot.container 3 gold_nugget 13
replaceitem block ~-5 ~1 ~5 slot.container 4 ender_pearl 5
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 17
replaceitem block ~-5 ~1 ~5 slot.container 9 enchanted_golden_apple 6
replaceitem block ~-5 ~1 ~5 slot.container 10 bread 16
replaceitem block ~-5 ~1 ~5 slot.container 11 gold_ingot 6
replaceitem block ~-5 ~1 ~5 slot.container 12 iron_ingot 7
replaceitem block ~-5 ~1 ~5 slot.container 13 emerald 6
replaceitem block ~-5 ~1 ~5 slot.container 14 diamond 5
loot insert ~-5 ~1 ~5 loot "rsf/desert"
loot insert ~-5 ~1 ~5 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0
