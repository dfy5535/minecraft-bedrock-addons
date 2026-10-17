# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1390/4224 | 主题内编号: b110/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双子附魔与酿造实验楼 (desert_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 sandstone [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 sandstone [] replace water
fill ~-8 ~1 ~-5 ~8 ~10 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 sandstone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 smooth_sandstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 sandstone []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 gunpowder 17
replaceitem block ~5 ~-3 ~2 slot.container 1 string 8
replaceitem block ~5 ~-3 ~2 slot.container 2 spider_eye 7
replaceitem block ~5 ~-3 ~2 slot.container 3 arrow 18
replaceitem block ~5 ~-3 ~2 slot.container 4 gold_nugget 15
replaceitem block ~5 ~-3 ~2 slot.container 5 ender_pearl 7
replaceitem block ~5 ~-3 ~2 slot.container 9 iron_ingot 6
replaceitem block ~5 ~-3 ~2 slot.container 10 emerald 5
replaceitem block ~5 ~-3 ~2 slot.container 11 diamond 4
replaceitem block ~5 ~-3 ~2 slot.container 12 tnt 7
replaceitem block ~5 ~-3 ~2 slot.container 13 saddle 1
replaceitem block ~5 ~-3 ~2 slot.container 14 water_bucket 1
loot insert ~5 ~-3 ~2 loot "rsf/desert"
loot insert ~5 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 sandstone []
fill ~2 ~1 ~-4 ~7 ~9 ~4 sandstone []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 yellow_terracotta []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~8 ~-5 ~8 ~8 ~5 sandstone_slab []
fill ~-6 ~9 ~-3 ~6 ~10 ~3 sandstone []
fill ~-7 ~11 ~-4 ~7 ~11 ~4 sandstone_slab []
setblock ~0 ~12 ~0 emerald_block []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 yellow_terracotta []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x6x3) ---
fill ~-10 ~0 ~-6 ~-11 ~5 ~-7 chiseled_sandstone []
fill ~9 ~0 ~-6 ~10 ~5 ~-7 chiseled_sandstone []
setblock ~-10 ~6 ~-6 gold_block []
setblock ~10 ~6 ~-6 gold_block []
setblock ~0 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 gold_nugget 18
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 10
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 14
replaceitem block ~-6 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-6 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~2 slot.container 5 string 11
replaceitem block ~-6 ~1 ~2 slot.container 9 golden_apple 6
replaceitem block ~-6 ~1 ~2 slot.container 10 enchanted_golden_apple 6
replaceitem block ~-6 ~1 ~2 slot.container 11 bread 16
replaceitem block ~-6 ~1 ~2 slot.container 12 gold_ingot 6
replaceitem block ~-6 ~1 ~2 slot.container 13 iron_ingot 7
replaceitem block ~-6 ~1 ~2 slot.container 14 emerald 6
loot insert ~-6 ~1 ~2 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1
