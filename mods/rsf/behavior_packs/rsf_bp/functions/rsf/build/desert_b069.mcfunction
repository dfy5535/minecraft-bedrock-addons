# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1349/4224 | 主题内编号: b069/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·藤蔓侵蚀十字修道院 (desert_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 smooth_sandstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 smooth_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 sandstone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 orange_terracotta []
setblock ~0 ~-5 ~0 emerald_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ender_pearl 7
replaceitem block ~0 ~-2 ~-3 slot.container 1 rotten_flesh 19
replaceitem block ~0 ~-2 ~-3 slot.container 2 bone 18
replaceitem block ~0 ~-2 ~-3 slot.container 3 gunpowder 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 string 8
replaceitem block ~0 ~-2 ~-3 slot.container 5 spider_eye 7
replaceitem block ~0 ~-2 ~-3 slot.container 9 gold_ingot 7
replaceitem block ~0 ~-2 ~-3 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-2 ~-3 slot.container 11 emerald 7
replaceitem block ~0 ~-2 ~-3 slot.container 12 diamond 6
replaceitem block ~0 ~-2 ~-3 slot.container 13 tnt 9
replaceitem block ~0 ~-2 ~-3 slot.container 14 saddle 1
loot insert ~0 ~-2 ~-3 loot "rsf/desert"
loot insert ~0 ~-2 ~-3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 smooth_sandstone []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 smooth_sandstone []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 sandstone_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 orange_terracotta []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x2) ---
fill ~-9 ~0 ~-8 ~-10 ~4 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~4 ~-9 chiseled_sandstone []
setblock ~-9 ~5 ~-8 gold_block []
setblock ~9 ~5 ~-8 gold_block []
setblock ~-3 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 1 gold_nugget 18
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 10
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 14
replaceitem block ~5 ~1 ~3 slot.container 4 bone 13
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 tnt 9
replaceitem block ~5 ~1 ~3 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 3
replaceitem block ~5 ~1 ~3 slot.container 13 enchanted_golden_apple 3
replaceitem block ~5 ~1 ~3 slot.container 14 bread 13
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~4 slot.container 9 tnt 7
replaceitem block ~-5 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 11 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 13 enchanted_golden_apple 1
replaceitem block ~-5 ~1 ~4 slot.container 14 bread 11
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
