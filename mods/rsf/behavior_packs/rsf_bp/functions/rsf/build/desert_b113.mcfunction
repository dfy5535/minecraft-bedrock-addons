# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1393/4224 | 主题内编号: b113/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·八角全采光生态温室 (desert_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 smooth_sandstone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 smooth_sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cut_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 orange_terracotta []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~2 slot.container 0 string 8
replaceitem block ~-3 ~-2 ~2 slot.container 1 spider_eye 7
replaceitem block ~-3 ~-2 ~2 slot.container 2 arrow 18
replaceitem block ~-3 ~-2 ~2 slot.container 3 gold_nugget 15
replaceitem block ~-3 ~-2 ~2 slot.container 4 ender_pearl 7
replaceitem block ~-3 ~-2 ~2 slot.container 5 rotten_flesh 19
replaceitem block ~-3 ~-2 ~2 slot.container 9 emerald 5
replaceitem block ~-3 ~-2 ~2 slot.container 10 diamond 4
replaceitem block ~-3 ~-2 ~2 slot.container 11 tnt 7
replaceitem block ~-3 ~-2 ~2 slot.container 12 saddle 1
replaceitem block ~-3 ~-2 ~2 slot.container 13 water_bucket 1
replaceitem block ~-3 ~-2 ~2 slot.container 14 golden_apple 8
loot insert ~-3 ~-2 ~2 loot "rsf/desert"
loot insert ~-3 ~-2 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 smooth_sandstone []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 sandstone []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 sandstone []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 sandstone []
fill ~4 ~1 ~3 ~4 ~8 ~3 sandstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 orange_terracotta []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 orange_terracotta []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 sandstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 sandstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~-6 ~-9 ~8 ~-7 chiseled_sandstone []
fill ~7 ~0 ~-6 ~8 ~8 ~-7 chiseled_sandstone []
setblock ~-8 ~9 ~-6 gold_block []
setblock ~8 ~9 ~-6 gold_block []
setblock ~-1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 13
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 2 string 11
replaceitem block ~4 ~1 ~2 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~2 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~2 slot.container 5 gold_nugget 18
replaceitem block ~4 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 11 enchanted_golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 12 bread 13
replaceitem block ~4 ~1 ~2 slot.container 13 gold_ingot 10
replaceitem block ~4 ~1 ~2 slot.container 14 iron_ingot 11
loot insert ~4 ~1 ~2 loot "rsf/desert"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 14
replaceitem block ~-4 ~1 ~3 slot.container 1 spider_eye 13
replaceitem block ~-4 ~1 ~3 slot.container 2 arrow 16
replaceitem block ~-4 ~1 ~3 slot.container 3 gold_nugget 13
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 5
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 8
replaceitem block ~-4 ~1 ~3 slot.container 11 enchanted_golden_apple 1
replaceitem block ~-4 ~1 ~3 slot.container 12 bread 11
replaceitem block ~-4 ~1 ~3 slot.container 13 gold_ingot 8
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 9
loot insert ~-4 ~1 ~3 loot "rsf/desert"
loot insert ~-4 ~1 ~3 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
