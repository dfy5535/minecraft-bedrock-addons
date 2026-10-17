# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1359/4224 | 主题内编号: b079/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·四角结界守护柱阵 (desert_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cut_sandstone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 8
replaceitem block ~4 ~-2 ~3 slot.container 1 spider_eye 7
replaceitem block ~4 ~-2 ~3 slot.container 2 arrow 18
replaceitem block ~4 ~-2 ~3 slot.container 3 gold_nugget 15
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 7
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~4 ~-2 ~3 slot.container 9 enchanted_golden_apple 5
replaceitem block ~4 ~-2 ~3 slot.container 10 bread 15
replaceitem block ~4 ~-2 ~3 slot.container 11 gold_ingot 12
replaceitem block ~4 ~-2 ~3 slot.container 12 iron_ingot 6
replaceitem block ~4 ~-2 ~3 slot.container 13 emerald 5
replaceitem block ~4 ~-2 ~3 slot.container 14 diamond 4
loot insert ~4 ~-2 ~3 loot "rsf/desert"
loot insert ~4 ~-2 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~8 ~5 sandstone []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~10 ~-4 cut_sandstone []
setblock ~-6 ~11 ~-5 torch []
fill ~-6 ~1 ~4 ~-5 ~10 ~5 cut_sandstone []
setblock ~-6 ~11 ~4 torch []
fill ~5 ~1 ~-5 ~6 ~10 ~-4 cut_sandstone []
setblock ~5 ~11 ~-5 torch []
fill ~5 ~1 ~4 ~6 ~10 ~5 cut_sandstone []
setblock ~5 ~11 ~4 torch []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 chiseled_sandstone []
setblock ~-6 ~11 ~-5 torch []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 chiseled_sandstone []
setblock ~-6 ~11 ~5 torch []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 chiseled_sandstone []
setblock ~6 ~11 ~-5 torch []
fill ~6 ~8 ~5 ~6 ~10 ~5 chiseled_sandstone []
setblock ~6 ~11 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 yellow_terracotta []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~-9 ~0 ~-6 ~-10 ~4 ~-7 chiseled_sandstone []
fill ~8 ~0 ~-6 ~9 ~4 ~-7 chiseled_sandstone []
setblock ~-9 ~5 ~-6 gold_block []
setblock ~9 ~5 ~-6 gold_block []
setblock ~1 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gold_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 10
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 14
replaceitem block ~5 ~1 ~3 slot.container 2 bone 13
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 spider_eye 10
replaceitem block ~5 ~1 ~3 slot.container 9 tnt 5
replaceitem block ~5 ~1 ~3 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 13 enchanted_golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 14 bread 16
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 spider_eye 13
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 16
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_nugget 13
replaceitem block ~-5 ~1 ~4 slot.container 9 tnt 10
replaceitem block ~-5 ~1 ~4 slot.container 10 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 11 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 13 enchanted_golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 14 bread 14
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon pillager ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
