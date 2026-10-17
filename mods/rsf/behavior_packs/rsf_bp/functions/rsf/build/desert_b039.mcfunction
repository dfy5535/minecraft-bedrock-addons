# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1319/4224 | 主题内编号: b039/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·永恒圣火图腾方尖塔 (desert_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 sandstone [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 sandstone [] replace water
fill ~-5 ~1 ~-4 ~5 ~13 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 sandstone []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 string 8
replaceitem block ~2 ~-2 ~1 slot.container 1 spider_eye 7
replaceitem block ~2 ~-2 ~1 slot.container 2 arrow 18
replaceitem block ~2 ~-2 ~1 slot.container 3 gold_nugget 15
replaceitem block ~2 ~-2 ~1 slot.container 4 ender_pearl 7
replaceitem block ~2 ~-2 ~1 slot.container 5 rotten_flesh 19
replaceitem block ~2 ~-2 ~1 slot.container 9 gold_ingot 8
replaceitem block ~2 ~-2 ~1 slot.container 10 iron_ingot 9
replaceitem block ~2 ~-2 ~1 slot.container 11 emerald 8
replaceitem block ~2 ~-2 ~1 slot.container 12 diamond 7
replaceitem block ~2 ~-2 ~1 slot.container 13 tnt 10
replaceitem block ~2 ~-2 ~1 slot.container 14 saddle 1
loot insert ~2 ~-2 ~1 loot "rsf/desert"
loot insert ~2 ~-2 ~1 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 sandstone []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 chiseled_sandstone []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 chiseled_sandstone []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 chiseled_sandstone []
fill ~4 ~1 ~3 ~4 ~11 ~3 chiseled_sandstone []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 cut_sandstone []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 sandstone []
fill ~0 ~17 ~0 ~0 ~20 ~0 gold_block []
setblock ~0 ~21 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 chiseled_sandstone []
setblock ~0 ~4 ~-5 orange_terracotta []
setblock ~0 ~5 ~-5 torch []
fill ~0 ~0 ~5 ~0 ~3 ~5 chiseled_sandstone []
setblock ~0 ~4 ~5 orange_terracotta []
setblock ~0 ~5 ~5 torch []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 chiseled_sandstone []
setblock ~-6 ~4 ~0 orange_terracotta []
setblock ~-6 ~5 ~0 torch []
fill ~6 ~0 ~0 ~6 ~3 ~0 chiseled_sandstone []
setblock ~6 ~4 ~0 orange_terracotta []
setblock ~6 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~-6 ~-8 ~4 ~-7 chiseled_sandstone []
fill ~6 ~0 ~-6 ~7 ~4 ~-7 chiseled_sandstone []
setblock ~-7 ~5 ~-6 gold_block []
setblock ~7 ~5 ~-6 gold_block []
setblock ~-2 ~0 ~-4 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ender_pearl 10
replaceitem block ~3 ~1 ~1 slot.container 1 rotten_flesh 14
replaceitem block ~3 ~1 ~1 slot.container 2 bone 13
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~1 slot.container 4 string 11
replaceitem block ~3 ~1 ~1 slot.container 5 spider_eye 10
replaceitem block ~3 ~1 ~1 slot.container 9 tnt 7
replaceitem block ~3 ~1 ~1 slot.container 10 saddle 1
replaceitem block ~3 ~1 ~1 slot.container 11 water_bucket 1
replaceitem block ~3 ~1 ~1 slot.container 12 golden_apple 8
replaceitem block ~3 ~1 ~1 slot.container 13 enchanted_golden_apple 1
replaceitem block ~3 ~1 ~1 slot.container 14 bread 11
loot insert ~3 ~1 ~1 loot "rsf/desert"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-3 ~1 ~2 slot.container 2 string 14
replaceitem block ~-3 ~1 ~2 slot.container 3 spider_eye 13
replaceitem block ~-3 ~1 ~2 slot.container 4 arrow 16
replaceitem block ~-3 ~1 ~2 slot.container 5 gold_nugget 13
replaceitem block ~-3 ~1 ~2 slot.container 9 tnt 5
replaceitem block ~-3 ~1 ~2 slot.container 10 saddle 1
replaceitem block ~-3 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~-3 ~1 ~2 slot.container 12 golden_apple 6
replaceitem block ~-3 ~1 ~2 slot.container 13 enchanted_golden_apple 6
replaceitem block ~-3 ~1 ~2 slot.container 14 bread 16
loot insert ~-3 ~1 ~2 loot "rsf/desert"
loot insert ~-3 ~1 ~2 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
