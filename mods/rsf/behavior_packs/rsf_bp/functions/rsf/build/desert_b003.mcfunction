# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1283/4224 | 主题内编号: b003/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·环柱巨石方尖祭坛 (desert_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cut_sandstone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 cut_sandstone []
setblock ~0 ~-5 ~0 orange_terracotta []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 arrow 18
replaceitem block ~0 ~-2 ~-3 slot.container 1 gold_nugget 15
replaceitem block ~0 ~-2 ~-3 slot.container 2 ender_pearl 7
replaceitem block ~0 ~-2 ~-3 slot.container 3 rotten_flesh 19
replaceitem block ~0 ~-2 ~-3 slot.container 4 bone 18
replaceitem block ~0 ~-2 ~-3 slot.container 5 gunpowder 17
replaceitem block ~0 ~-2 ~-3 slot.container 9 emerald 9
replaceitem block ~0 ~-2 ~-3 slot.container 10 diamond 8
replaceitem block ~0 ~-2 ~-3 slot.container 11 tnt 4
replaceitem block ~0 ~-2 ~-3 slot.container 12 saddle 1
replaceitem block ~0 ~-2 ~-3 slot.container 13 water_bucket 1
replaceitem block ~0 ~-2 ~-3 slot.container 14 golden_apple 5
loot insert ~0 ~-2 ~-3 loot "rsf/desert"
loot insert ~0 ~-2 ~-3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~10 ~-5 ~6 ~10 ~5 cut_sandstone []
fill ~-6 ~1 ~-5 ~-6 ~9 ~-5 chiseled_sandstone []
fill ~-6 ~1 ~5 ~-6 ~9 ~5 chiseled_sandstone []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 chiseled_sandstone []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 chiseled_sandstone []
fill ~-2 ~1 ~-5 ~-2 ~9 ~-5 chiseled_sandstone []
fill ~-2 ~1 ~5 ~-2 ~9 ~5 chiseled_sandstone []
fill ~0 ~1 ~-5 ~0 ~9 ~-5 chiseled_sandstone []
fill ~0 ~1 ~5 ~0 ~9 ~5 chiseled_sandstone []
fill ~2 ~1 ~-5 ~2 ~9 ~-5 chiseled_sandstone []
fill ~2 ~1 ~5 ~2 ~9 ~5 chiseled_sandstone []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 chiseled_sandstone []
fill ~4 ~1 ~5 ~4 ~9 ~5 chiseled_sandstone []
fill ~6 ~1 ~-5 ~6 ~9 ~-5 chiseled_sandstone []
fill ~6 ~1 ~5 ~6 ~9 ~5 chiseled_sandstone []
fill ~-6 ~1 ~-3 ~-6 ~9 ~-3 chiseled_sandstone []
fill ~6 ~1 ~-3 ~6 ~9 ~-3 chiseled_sandstone []
fill ~-6 ~1 ~-1 ~-6 ~9 ~-1 chiseled_sandstone []
fill ~6 ~1 ~-1 ~6 ~9 ~-1 chiseled_sandstone []
fill ~-6 ~1 ~1 ~-6 ~9 ~1 chiseled_sandstone []
fill ~6 ~1 ~1 ~6 ~9 ~1 chiseled_sandstone []
fill ~-6 ~1 ~3 ~-6 ~9 ~3 chiseled_sandstone []
fill ~6 ~1 ~3 ~6 ~9 ~3 chiseled_sandstone []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 cut_sandstone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 sandstone []
fill ~0 ~16 ~0 ~0 ~19 ~0 gold_block []
setblock ~0 ~20 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_sandstone []
setblock ~0 ~4 ~-7 orange_terracotta []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_sandstone []
setblock ~0 ~4 ~7 orange_terracotta []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_sandstone []
setblock ~-8 ~4 ~0 orange_terracotta []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_sandstone []
setblock ~8 ~4 ~0 orange_terracotta []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~-8 ~-10 ~8 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~8 ~-9 chiseled_sandstone []
setblock ~-9 ~9 ~-8 gold_block []
setblock ~9 ~9 ~-8 gold_block []
setblock ~-3 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~3 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 3 gold_nugget 18
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 10
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 14
replaceitem block ~5 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 5
replaceitem block ~5 ~1 ~3 slot.container 11 enchanted_golden_apple 5
replaceitem block ~5 ~1 ~3 slot.container 12 bread 15
replaceitem block ~5 ~1 ~3 slot.container 13 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 14 iron_ingot 6
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 16
replaceitem block ~-5 ~1 ~4 slot.container 1 gold_nugget 13
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 5
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 9 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 11 enchanted_golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 12 bread 13
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0
